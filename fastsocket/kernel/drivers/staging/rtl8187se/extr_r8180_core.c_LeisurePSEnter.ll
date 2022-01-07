; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_LeisurePSEnter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_LeisurePSEnter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8180_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@IEEE80211_PS_DISABLED = common dso_local global i64 0, align 8
@IEEE80211_PS_MBCAST = common dso_local global i32 0, align 4
@IEEE80211_PS_UNICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LeisurePSEnter(%struct.r8180_priv* %0) #0 {
  %2 = alloca %struct.r8180_priv*, align 8
  store %struct.r8180_priv* %0, %struct.r8180_priv** %2, align 8
  %3 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %4 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %9 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_PS_DISABLED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %17 = load i32, i32* @IEEE80211_PS_MBCAST, align 4
  %18 = load i32, i32* @IEEE80211_PS_UNICAST, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @MgntActSet_802_11_PowerSaveMode(%struct.r8180_priv* %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %7
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @MgntActSet_802_11_PowerSaveMode(%struct.r8180_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
