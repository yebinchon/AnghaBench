; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_init_hardware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_init_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wbsoft_priv* }
%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@DEFAULT_MSDU_LIFE_TIME = common dso_local global i32 0, align 4
@DEFAULT_FRAGMENT_THRESHOLD = common dso_local global i32 0, align 4
@hal_led_control = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @hal_init_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal_init_hardware(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.wbsoft_priv*, align 8
  %5 = alloca %struct.hw_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %8, align 8
  store %struct.wbsoft_priv* %9, %struct.wbsoft_priv** %4, align 8
  %10 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %4, align 8
  %11 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %10, i32 0, i32 0
  store %struct.hw_data* %11, %struct.hw_data** %5, align 8
  %12 = load i32, i32* @DEFAULT_MSDU_LIFE_TIME, align 4
  %13 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DEFAULT_FRAGMENT_THRESHOLD, align 4
  %16 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %17 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %19 = call i32 @Wb35Reg_initial(%struct.hw_data* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %66

22:                                               ; preds = %1
  %23 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %24 = call i32 @Wb35Tx_initial(%struct.hw_data* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %63

27:                                               ; preds = %22
  %28 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %29 = call i32 @Wb35Rx_initial(%struct.hw_data* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %60

32:                                               ; preds = %27
  %33 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %34 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %33, i32 0, i32 1
  %35 = call i32 @init_timer(%struct.TYPE_3__* %34)
  %36 = load i32, i32* @hal_led_control, align 4
  %37 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %38 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %4, align 8
  %41 = ptrtoint %struct.wbsoft_priv* %40 to i64
  %42 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %43 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* @jiffies, align 8
  %46 = call i64 @msecs_to_jiffies(i32 1000)
  %47 = add nsw i64 %45, %46
  %48 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %49 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %52 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %51, i32 0, i32 1
  %53 = call i32 @add_timer(%struct.TYPE_3__* %52)
  %54 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %55 = call i32 @hal_software_set(%struct.hw_data* %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = call i32 @Wb35Rx_start(%struct.ieee80211_hw* %56)
  %58 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %4, align 8
  %59 = call i32 @Wb35Tx_EP2VM_start(%struct.wbsoft_priv* %58)
  store i32 0, i32* %2, align 4
  br label %73

60:                                               ; preds = %31
  %61 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %62 = call i32 @Wb35Rx_destroy(%struct.hw_data* %61)
  br label %63

63:                                               ; preds = %60, %26
  %64 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %65 = call i32 @Wb35Tx_destroy(%struct.hw_data* %64)
  br label %66

66:                                               ; preds = %63, %21
  %67 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %68 = call i32 @Wb35Reg_destroy(%struct.hw_data* %67)
  %69 = load %struct.hw_data*, %struct.hw_data** %5, align 8
  %70 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %32
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @Wb35Reg_initial(%struct.hw_data*) #1

declare dso_local i32 @Wb35Tx_initial(%struct.hw_data*) #1

declare dso_local i32 @Wb35Rx_initial(%struct.hw_data*) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @hal_software_set(%struct.hw_data*) #1

declare dso_local i32 @Wb35Rx_start(%struct.ieee80211_hw*) #1

declare dso_local i32 @Wb35Tx_EP2VM_start(%struct.wbsoft_priv*) #1

declare dso_local i32 @Wb35Rx_destroy(%struct.hw_data*) #1

declare dso_local i32 @Wb35Tx_destroy(%struct.hw_data*) #1

declare dso_local i32 @Wb35Reg_destroy(%struct.hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
