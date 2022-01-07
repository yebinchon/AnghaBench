; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_tx_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_tx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.ieee80211_device* }
%struct.ieee80211_device = type { i64 (%struct.net_device*, i32)*, %struct.TYPE_2__, i32 (%struct.sk_buff*, %struct.net_device*, i32)*, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64 }

@BK_QUEUE = common dso_local global i32 0, align 4
@TXCMD_QUEUE = common dso_local global i32 0, align 4
@MGNT_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_tx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_tx_resume(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i64 @ieee80211_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.r8192_priv*
  store %struct.r8192_priv* %9, %struct.r8192_priv** %3, align 8
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %11, align 8
  store %struct.ieee80211_device* %12, %struct.ieee80211_device** %4, align 8
  %13 = load i32, i32* @BK_QUEUE, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %55, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TXCMD_QUEUE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %40, %18
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @skb_queue_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %19
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %30, align 8
  %32 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %31, i32 0, i32 0
  %33 = load i64 (%struct.net_device*, i32)*, i64 (%struct.net_device*, i32)** %32, align 8
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 %33(%struct.net_device* %34, i32 %35)
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %28, %19
  %39 = phi i1 [ false, %19 ], [ %37, %28 ]
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call %struct.sk_buff* @skb_dequeue(i32* %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %5, align 8
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 2
  %50 = load i32 (%struct.sk_buff*, %struct.net_device*, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i32)** %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 %50(%struct.sk_buff* %51, %struct.net_device* %52, i32 0)
  br label %19

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %14

58:                                               ; preds = %14
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
