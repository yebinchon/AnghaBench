; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_txb = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_device = type { i32, i32, i32, i32 (%struct.TYPE_7__*, i32, i32)*, i32*, i64, i32 (i32, i32)*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_softmac_xmit(%struct.ieee80211_txb* %0, %struct.ieee80211_device* %1) #0 {
  %3 = alloca %struct.ieee80211_txb*, align 8
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.ieee80211_txb* %0, %struct.ieee80211_txb** %3, align 8
  store %struct.ieee80211_device* %1, %struct.ieee80211_device** %4, align 8
  %9 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %17 = call i32 @ieee80211_sta_wakeup(%struct.ieee80211_device* %16, i32 0)
  %18 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %2
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %103, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %106

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i64 @skb_queue_len(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %45
  %55 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %55, i32 0, i32 6
  %57 = load i32 (i32, i32)*, i32 (i32, i32)** %56, align 8
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 %57(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64, %54, %45
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @skb_queue_tail(i32* %75, %struct.TYPE_7__* %82)
  br label %102

84:                                               ; preds = %64
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 3
  %87 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %86, align 8
  %88 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_txb, %struct.ieee80211_txb* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %90, i64 %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %87(%struct.TYPE_7__* %94, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %84, %69
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %39

106:                                              ; preds = %39
  %107 = load %struct.ieee80211_txb*, %struct.ieee80211_txb** %3, align 8
  %108 = call i32 @ieee80211_txb_free(%struct.ieee80211_txb* %107)
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %110 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %109, i32 0, i32 0
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_sta_wakeup(%struct.ieee80211_device*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ieee80211_txb_free(%struct.ieee80211_txb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
