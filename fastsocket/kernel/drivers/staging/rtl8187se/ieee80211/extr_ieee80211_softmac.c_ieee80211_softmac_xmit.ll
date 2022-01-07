; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_txb = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_device = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__, i32, i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32)*, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.ieee80211_txb* }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_softmac_xmit(%struct.ieee80211_txb* %0, %struct.ieee80211_device* %1) #0 {
  %3 = alloca %struct.ieee80211_txb*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_txb* %0, %struct.ieee80211_txb** %3, align 8
  store %struct.ieee80211_device* %1, %struct.ieee80211_device** %4, align 8
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %12 = call i32 @ieee80211_sta_wakeup(%struct.ieee80211_device* %11, i32 0)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %78, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %13
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store %struct.ieee80211_txb* %25, %struct.ieee80211_txb** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  br label %84

33:                                               ; preds = %19
  %34 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %34, i32 0, i32 4
  %36 = load i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32)** %35, align 8
  %37 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %36(%struct.TYPE_7__* %43, %struct.TYPE_8__* %46, i32 %49)
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %57 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %64
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load i32, i32* @jiffies, align 4
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %33
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %13

81:                                               ; preds = %13
  %82 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %83 = call i32 @ieee80211_txb_free(%struct.ieee80211_txb* %82)
  br label %84

84:                                               ; preds = %81, %24
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 0
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_sta_wakeup(%struct.ieee80211_device*, i32) #1

declare dso_local i32 @ieee80211_txb_free(%struct.ieee80211_txb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
