; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_wbsoft_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_wbsoft_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wbsoft_priv* }
%struct.wbsoft_priv = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"wbsoft_config called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @wbsoft_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbsoft_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wbsoft_priv*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %8, align 8
  store %struct.wbsoft_priv* %9, %struct.wbsoft_priv** %5, align 8
  %10 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %5, align 8
  %14 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %13, i32 0, i32 0
  %15 = bitcast %struct.TYPE_3__* %6 to i64*
  %16 = load i64, i64* %15, align 4
  %17 = call i32 @hal_set_current_channel(i32* %14, i64 %16)
  %18 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %5, align 8
  %19 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %18, i32 0, i32 0
  %20 = call i32 @hal_set_accept_broadcast(i32* %19, i32 1)
  %21 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %21, i32 0, i32 0
  %23 = call i32 @hal_set_accept_promiscuous(i32* %22, i32 1)
  %24 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %5, align 8
  %25 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %24, i32 0, i32 0
  %26 = call i32 @hal_set_accept_multicast(i32* %25, i32 1)
  %27 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %5, align 8
  %28 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %27, i32 0, i32 0
  %29 = call i32 @hal_set_accept_beacon(i32* %28, i32 1)
  %30 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %5, align 8
  %31 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %30, i32 0, i32 0
  %32 = call i32 @hal_set_radio_mode(i32* %31, i32 0)
  ret i32 0
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @hal_set_current_channel(i32*, i64) #1

declare dso_local i32 @hal_set_accept_broadcast(i32*, i32) #1

declare dso_local i32 @hal_set_accept_promiscuous(i32*, i32) #1

declare dso_local i32 @hal_set_accept_multicast(i32*, i32) #1

declare dso_local i32 @hal_set_accept_beacon(i32*, i32) #1

declare dso_local i32 @hal_set_radio_mode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
