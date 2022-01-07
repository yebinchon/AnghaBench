; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_phy_calibration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_phy_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64, i8*, i8* }

@RF_WB_242 = common dso_local global i64 0, align 8
@RF_WB_242_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Reg_phy_calibration(%struct.hw_data* %0) #0 {
  %2 = alloca %struct.hw_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.hw_data* %0, %struct.hw_data** %2, align 8
  %5 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %6 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RF_WB_242, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %12 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RF_WB_242_1, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10, %1
  %17 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %18 = call i32 @phy_calibration_winbond(%struct.hw_data* %17, i32 2412)
  %19 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %20 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %19, i32 4156, i8** %3)
  %21 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %22 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %21, i32 4180, i8** %4)
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %25 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %28 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %30 = call i32 @RFSynthesizer_initial(%struct.hw_data* %29)
  %31 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %32 = call i32 @BBProcessor_initial(%struct.hw_data* %31)
  %33 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %33, i32 4156, i8* %34)
  %36 = load %struct.hw_data*, %struct.hw_data** %2, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %36, i32 4180, i8* %37)
  br label %39

39:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @phy_calibration_winbond(%struct.hw_data*, i32) #1

declare dso_local i32 @Wb35Reg_ReadSync(%struct.hw_data*, i32, i8**) #1

declare dso_local i32 @RFSynthesizer_initial(%struct.hw_data*) #1

declare dso_local i32 @BBProcessor_initial(%struct.hw_data*) #1

declare dso_local i32 @Wb35Reg_WriteSync(%struct.hw_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
