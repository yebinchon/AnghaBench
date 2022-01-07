; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_Uxx_power_on_procedure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_Uxx_power_on_procedure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64 }

@RF_MAXIM_V1 = common dso_local global i64 0, align 8
@RF_WB_242 = common dso_local global i64 0, align 8
@RF_WB_242_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Uxx_power_on_procedure(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %5 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %6 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RF_MAXIM_V1, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %12 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %11, i32 980, i32 -200)
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %15 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %14, i32 1012, i32 -11008001)
  %16 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %17 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %16, i32 980, i32 128)
  %18 = call i32 @msleep(i32 10)
  %19 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %20 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %19, i32 980, i32 184)
  %21 = call i32 @msleep(i32 10)
  store i32 18792, i32* %3, align 4
  %22 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %23 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RF_WB_242, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %13
  %28 = load i64, i64* @RF_WB_242_1, align 8
  %29 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %30 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %13
  store i32 17512, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %35, i32 976, i32 %36)
  %38 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %39 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %38, i32 980, i32 160)
  %40 = call i32 @msleep(i32 20)
  %41 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %42 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %41, i32 976, i32* %3)
  store i32 500, i32* %4, align 4
  br label %43

43:                                               ; preds = %59, %34
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %48, 0
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ false, %43 ], [ %50, %47 ]
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = call i32 @msleep(i32 10)
  %55 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %56 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %55, i32 976, i32* %3)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %43

60:                                               ; preds = %58, %51
  %61 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %62 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %61, i32 980, i32 224)
  br label %63

63:                                               ; preds = %60, %10
  %64 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %65 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %64, i32 944, i32 1)
  %66 = call i32 @msleep(i32 10)
  %67 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %68 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %67, i32 1016, i32 2047)
  ret void
}

declare dso_local i32 @Wb35Reg_WriteSync(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @Wb35Reg_ReadSync(%struct.hw_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
