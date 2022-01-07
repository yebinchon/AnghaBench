; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_hard_data_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_hard_data_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@MGNT_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, i32)* @rtl8192_hard_data_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_hard_data_xmit(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i64 @ieee80211_priv(%struct.net_device* %11)
  %13 = inttoptr i64 %12 to %struct.r8192_priv*
  store %struct.r8192_priv* %13, %struct.r8192_priv** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %18 = add nsw i64 %16, %17
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @TXCMD_QUEUE, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @memcpy(i8* %31, %struct.net_device** %5, i32 8)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @skb_push(%struct.sk_buff* %33, i64 %38)
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @rtl8192_tx(%struct.net_device* %40, %struct.sk_buff* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %45, %3
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @MGNT_QUEUE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %55, %60
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %61
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %72 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %52, %48
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.net_device**, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @rtl8192_tx(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
