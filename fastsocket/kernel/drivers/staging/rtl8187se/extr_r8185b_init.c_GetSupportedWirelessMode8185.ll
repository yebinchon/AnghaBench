; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_GetSupportedWirelessMode8185.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_GetSupportedWirelessMode8185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32 }

@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSupportedWirelessMode8185(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8180_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8180_priv*
  store %struct.r8180_priv* %7, %struct.r8180_priv** %4, align 8
  %8 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %9 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @WIRELESS_MODE_B, align 4
  %13 = load i32, i32* @WIRELESS_MODE_G, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @WIRELESS_MODE_B, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
