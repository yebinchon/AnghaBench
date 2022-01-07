; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu401_input_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_mpu401_input_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpu_config = type { i32, i64, i32, i32, i32 (i32, i8)*, i32 }

@MODE_SYNTH = common dso_local global i64 0, align 8
@OPEN_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpu_config*)* @mpu401_input_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu401_input_loop(%struct.mpu_config* %0) #0 {
  %2 = alloca %struct.mpu_config*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.mpu_config* %0, %struct.mpu_config** %2, align 8
  %7 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %8 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %7, i32 0, i32 5
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %12 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %15 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %17 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %16, i32 0, i32 5
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %72

23:                                               ; preds = %1
  store i32 50, i32* %5, align 4
  br label %24

24:                                               ; preds = %68, %23
  %25 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %26 = call i64 @input_avail(%struct.mpu_config* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  %31 = icmp sgt i32 %29, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %69

34:                                               ; preds = %32
  %35 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %36 = call zeroext i8 @read_data(%struct.mpu_config* %35)
  store i8 %36, i8* %6, align 1
  %37 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %38 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MODE_SYNTH, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %44 = load i8, i8* %6, align 1
  %45 = call i32 @mpu_input_scanner(%struct.mpu_config* %43, i8 zeroext %44)
  br label %68

46:                                               ; preds = %34
  %47 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %48 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @OPEN_READ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %55 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %54, i32 0, i32 4
  %56 = load i32 (i32, i8)*, i32 (i32, i8)** %55, align 8
  %57 = icmp ne i32 (i32, i8)* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %60 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %59, i32 0, i32 4
  %61 = load i32 (i32, i8)*, i32 (i32, i8)** %60, align 8
  %62 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %63 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i8, i8* %6, align 1
  %66 = call i32 %61(i32 %64, i8 zeroext %65)
  br label %67

67:                                               ; preds = %58, %53, %46
  br label %68

68:                                               ; preds = %67, %42
  br label %24

69:                                               ; preds = %32
  %70 = load %struct.mpu_config*, %struct.mpu_config** %2, align 8
  %71 = getelementptr inbounds %struct.mpu_config, %struct.mpu_config* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %22
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @input_avail(%struct.mpu_config*) #1

declare dso_local zeroext i8 @read_data(%struct.mpu_config*) #1

declare dso_local i32 @mpu_input_scanner(%struct.mpu_config*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
