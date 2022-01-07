; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35rx.c_Wb35Rx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wbsoft_priv* }
%struct.wbsoft_priv = type { %struct.hw_data }
%struct.hw_data = type { %struct.wb35_rx }
%struct.wb35_rx = type { i32, i32 }

@VM_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Wb35Rx_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.wbsoft_priv*, align 8
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca %struct.wb35_rx*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %7, align 8
  store %struct.wbsoft_priv* %8, %struct.wbsoft_priv** %3, align 8
  %9 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %10 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %9, i32 0, i32 0
  store %struct.hw_data* %10, %struct.hw_data** %4, align 8
  %11 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %12 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %11, i32 0, i32 0
  store %struct.wb35_rx* %12, %struct.wb35_rx** %5, align 8
  %13 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %14 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc_return(i32* %14)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @VM_RUNNING, align 4
  %19 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %20 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = call i32 @Wb35Rx(%struct.ieee80211_hw* %21)
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.wb35_rx*, %struct.wb35_rx** %5, align 8
  %25 = getelementptr inbounds %struct.wb35_rx, %struct.wb35_rx* %24, i32 0, i32 0
  %26 = call i32 @atomic_dec(i32* %25)
  br label %27

27:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @Wb35Rx(%struct.ieee80211_hw*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
