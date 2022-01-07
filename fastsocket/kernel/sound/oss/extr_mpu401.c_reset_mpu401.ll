; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_reset_mpu401.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_reset_mpu401.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i32, i64, i64, i64, i64, i32, i32 }

@MPU_RESET = common dso_local global i32 0, align 4
@MPU_ACK = common dso_local global i64 0, align 8
@ST_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpu_config*)* @reset_mpu401 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_mpu401(%struct.mpu_config* %0) #0 {
  %2 = alloca %struct.mpu_config*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mpu_config* %0, %struct.mpu_config** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %9 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 30000, i32 100000
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %15 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %81, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %84

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %38 = call i32 @output_ready(%struct.mpu_config* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  br label %27

42:                                               ; preds = %34
  %43 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %44 = load i32, i32* @MPU_RESET, align 4
  %45 = call i32 @write_command(%struct.mpu_config* %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 2
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %77, %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %80

57:                                               ; preds = %55
  %58 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %59 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %58, i32 0, i32 6
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %63 = call i64 @input_avail(%struct.mpu_config* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %67 = call i64 @read_data(%struct.mpu_config* %66)
  %68 = load i64, i64* @MPU_ACK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %65
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %74 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %73, i32 0, i32 6
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %5, align 4
  br label %48

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %16

84:                                               ; preds = %23
  %85 = load i32, i32* @ST_INIT, align 4
  %86 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %87 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %89 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %91 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %93 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %95 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @output_ready(%struct.mpu_config*) #1

declare dso_local i32 @write_command(%struct.mpu_config*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @input_avail(%struct.mpu_config*) #1

declare dso_local i64 @read_data(%struct.mpu_config*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
