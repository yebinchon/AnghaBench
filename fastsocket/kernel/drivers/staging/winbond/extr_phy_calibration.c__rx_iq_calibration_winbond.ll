; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__rx_iq_calibration_winbond.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__rx_iq_calibration_winbond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"[CAL] -> [5]_rx_iq_calibration()\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"[CAL] ** <_rx_iq_calibration> **************\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"[CAL] ** RX_IQ_CALIBRATION FAILURE !!\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"[CAL] **************************************\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_rx_iq_calibration_winbond(%struct.hw_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %8 = call i32 @phy_set_rf_data(%struct.hw_data* %7, i32 1, i32 32489410)
  %9 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %10 = call i32 @phy_set_rf_data(%struct.hw_data* %9, i32 11, i32 186254806)
  %11 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %12 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %13 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 83886080, %14
  %16 = call i32 @phy_set_rf_data(%struct.hw_data* %11, i32 5, i32 %15)
  %17 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %18 = call i32 @phy_set_rf_data(%struct.hw_data* %17, i32 6, i32 101090124)
  %19 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %20 = call i32 @phy_set_rf_data(%struct.hw_data* %19, i32 0, i32 16773568)
  %21 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @_rx_iq_calibration_loop_winbond(%struct.hw_data* %21, i32 12589, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %2
  %27 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %28 = call i32 @_reset_rx_cal(%struct.hw_data* %27)
  %29 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @_rx_iq_calibration_loop_winbond(%struct.hw_data* %29, i32 7943, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %36 = call i32 @_reset_rx_cal(%struct.hw_data* %35)
  %37 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @_rx_iq_calibration_loop_winbond(%struct.hw_data* %37, i32 5011, i32 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @PHY_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %47 = call i32 @_reset_rx_cal(%struct.hw_data* %46)
  br label %48

48:                                               ; preds = %42, %34
  br label %49

49:                                               ; preds = %48, %26
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

declare dso_local i32 @PHY_DEBUG(i8*) #1

declare dso_local i32 @phy_set_rf_data(%struct.hw_data*, i32, i32) #1

declare dso_local i64 @_rx_iq_calibration_loop_winbond(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @_reset_rx_cal(%struct.hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
