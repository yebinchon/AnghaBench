; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c__rtl8180_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c__rtl8180_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"Bringing up iface\00", align 1
@IW_MODE_ADHOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtl8180_up(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8180_priv* %5, %struct.r8180_priv** %3, align 8
  %6 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = call i32 @DMESG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @rtl8185b_adapter_start(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @rtl8185b_rx_enable(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @rtl8185b_tx_enable(%struct.net_device* %13)
  %15 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IW_MODE_ADHOC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @IPSLeave(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %27, %19
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = ptrtoint %struct.net_device* %32 to i64
  %34 = call i32 @watch_dog_adaptive(i64 %33)
  %35 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %36 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @ieee80211_softmac_start_protocol(%struct.TYPE_2__* %37)
  ret i32 0
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESG(i8*) #1

declare dso_local i32 @rtl8185b_adapter_start(%struct.net_device*) #1

declare dso_local i32 @rtl8185b_rx_enable(%struct.net_device*) #1

declare dso_local i32 @rtl8185b_tx_enable(%struct.net_device*) #1

declare dso_local i32 @IPSLeave(%struct.net_device*) #1

declare dso_local i32 @watch_dog_adaptive(i64) #1

declare dso_local i32 @ieee80211_softmac_start_protocol(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
