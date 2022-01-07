; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl6052.c_PHY_RF6052SetCckTxPower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_rtl6052.c_PHY_RF6052SetCckTxPower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RF6052_MAX_TX_PWR = common dso_local global i32 0, align 4
@rTxAGC_CCK_Mcs32 = common dso_local global i32 0, align 4
@bTxAGCRateCCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_RF6052SetCckTxPower(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %10 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 63, i32* %6, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 34, i32* %6, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %21
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @RF6052_MAX_TX_PWR, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = load i32, i32* @rTxAGC_CCK_Mcs32, align 4
  %41 = load i32, i32* @bTxAGCRateCCK, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @rtl8192_setBBreg(%struct.net_device* %39, i32 %40, i32 %41, i32 %42)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
