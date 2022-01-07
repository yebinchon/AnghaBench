; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_rtl8180_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.r8180_priv = type { i32 }
%struct.iwreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8180_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8180_priv*, align 8
  %9 = alloca %struct.iwreq*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i64 @ieee80211_priv(%struct.net_device* %11)
  %13 = inttoptr i64 %12 to %struct.r8180_priv*
  store %struct.r8180_priv* %13, %struct.r8180_priv** %8, align 8
  %14 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %15 = bitcast %struct.ifreq* %14 to %struct.iwreq*
  store %struct.iwreq* %15, %struct.iwreq** %9, align 8
  store i32 -1, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %26 [
    i32 128, label %17
  ]

17:                                               ; preds = %3
  %18 = load %struct.r8180_priv*, %struct.r8180_priv** %8, align 8
  %19 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iwreq*, %struct.iwreq** %9, align 8
  %22 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @ieee80211_wpa_supplicant_ioctl(i32 %20, i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @ieee80211_wpa_supplicant_ioctl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
