; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @rtl8192_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call i64 @ieee80211_priv(%struct.net_device* %10)
  %12 = inttoptr i64 %11 to %struct.r8192_priv*
  store %struct.r8192_priv* %12, %struct.r8192_priv** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = inttoptr i64 %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @memcpy(i8* %25, %struct.net_device** %5, i32 8)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @TXCMD_QUEUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @rtl819xE_tx_cmd(%struct.net_device* %31, %struct.sk_buff* %32)
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %62

35:                                               ; preds = %2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 7, i32* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  store i32 1, i32* %43, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @skb_push(%struct.sk_buff* %44, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @rtl8192_tx(%struct.net_device* %51, %struct.sk_buff* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %35
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %56, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, %struct.net_device**, i32) #1

declare dso_local i32 @rtl819xE_tx_cmd(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @rtl8192_tx(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
