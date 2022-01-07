; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_FinishSwChnlNow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_phy_FinishSwChnlNow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @phy_FinishSwChnlNow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_FinishSwChnlNow(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %5, align 8
  br label %9

9:                                                ; preds = %31, %2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 2
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 1
  %16 = call i32 @phy_SwChnlStepByStep(%struct.net_device* %10, i32 %11, i32* %13, i32* %15, i64* %6)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %32

19:                                               ; preds = %9
  %20 = load i64, i64* %6, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @mdelay(i64 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %32

31:                                               ; preds = %25
  br label %9

32:                                               ; preds = %30, %9
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @phy_SwChnlStepByStep(%struct.net_device*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @mdelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
