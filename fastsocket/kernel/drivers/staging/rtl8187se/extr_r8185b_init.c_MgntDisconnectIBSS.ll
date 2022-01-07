; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_MgntDisconnectIBSS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_MgntDisconnectIBSS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.net_device*)*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@unspec_reason = common dso_local global i32 0, align 4
@IEEE80211_NOLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MgntDisconnectIBSS(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @ieee80211_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.r8180_priv*
  store %struct.r8180_priv* %7, %struct.r8180_priv** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @unspec_reason, align 4
  %10 = call i32 @DrvIFIndicateDisassociation(%struct.net_device* %8, i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %16 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 85, i32* %23, align 4
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* @IEEE80211_NOLINK, align 4
  %29 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 8
  %33 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @ieee80211_stop_send_beacons(%struct.TYPE_5__* %35)
  %37 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 %41(%struct.net_device* %42)
  %44 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = call i32 @notify_wx_assoc_event(%struct.TYPE_5__* %46)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DrvIFIndicateDisassociation(%struct.net_device*, i32) #1

declare dso_local i32 @ieee80211_stop_send_beacons(%struct.TYPE_5__*) #1

declare dso_local i32 @notify_wx_assoc_event(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
