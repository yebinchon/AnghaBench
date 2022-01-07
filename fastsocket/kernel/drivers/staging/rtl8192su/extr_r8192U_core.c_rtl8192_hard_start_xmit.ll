; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.net_device*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.sk_buff*)* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@USB_HWDESC_HEADER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i64 @ieee80211_priv(%struct.net_device* %11)
  %13 = inttoptr i64 %12 to %struct.r8192_priv*
  store %struct.r8192_priv* %13, %struct.r8192_priv** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %18 = add nsw i64 %16, %17
  %19 = inttoptr i64 %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @memcpy(i8* %30, %struct.net_device** %5, i32 8)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @TXCMD_QUEUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @USB_HWDESC_HEADER_LEN, align 4
  %38 = call i32 @skb_push(%struct.sk_buff* %36, i32 %37)
  %39 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %40 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32 (%struct.net_device*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.sk_buff*)** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 %43(%struct.net_device* %44, %struct.sk_buff* %45)
  store i32 1, i32* %7, align 4
  %47 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %48 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %2
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @skb_push(%struct.sk_buff* %53, i32 %58)
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (%struct.net_device*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.sk_buff*)** %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 %64(%struct.net_device* %65, %struct.sk_buff* %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %52
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %35
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, %struct.net_device**, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
