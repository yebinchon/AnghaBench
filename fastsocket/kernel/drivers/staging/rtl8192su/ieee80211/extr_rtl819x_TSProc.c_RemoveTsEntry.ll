; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_TSProc.c_RemoveTsEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_rtl819x_TSProc.c_RemoveTsEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.ieee80211_rxb* }
%struct.ieee80211_rxb = type { i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@RX_DIR = common dso_local global i64 0, align 8
@RX_REORDER_ENTRY = common dso_local global i32 0, align 4
@List = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveTsEntry(%struct.ieee80211_device* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_rxb*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @TsInitDelBA(%struct.ieee80211_device* %19, %struct.TYPE_9__* %20, i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @RX_DIR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %106

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = bitcast %struct.TYPE_9__* %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %9, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = call i64 @timer_pending(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = call i32 @del_timer_sync(i32* %35)
  br label %37

37:                                               ; preds = %33, %26
  br label %38

38:                                               ; preds = %93, %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = call i32 @list_empty(%struct.TYPE_12__* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %105

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RX_REORDER_ENTRY, align 4
  %54 = load i32, i32* @List, align 4
  %55 = call i64 @list_entry(i32 %52, i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %8, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = call i32 @list_del_init(i32* %58)
  store i32 0, i32* %10, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %61, align 8
  store %struct.ieee80211_rxb* %62, %struct.ieee80211_rxb** %11, align 8
  %63 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %11, align 8
  %64 = icmp ne %struct.ieee80211_rxb* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %44
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %112

74:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %11, align 8
  %78 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %11, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rxb, %struct.ieee80211_rxb* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dev_kfree_skb(i32 %88)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load %struct.ieee80211_rxb*, %struct.ieee80211_rxb** %11, align 8
  %95 = call i32 @kfree(%struct.ieee80211_rxb* %94)
  store %struct.ieee80211_rxb* null, %struct.ieee80211_rxb** %11, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %98, i32 0, i32 1
  %100 = call i32 @list_add_tail(i32* %97, i32* %99)
  %101 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %102 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %101, i32 0, i32 0
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  br label %38

105:                                              ; preds = %38
  br label %112

106:                                              ; preds = %3
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = bitcast %struct.TYPE_9__* %107 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %12, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = call i32 @del_timer_sync(i32* %110)
  br label %112

112:                                              ; preds = %69, %106, %105
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @TsInitDelBA(%struct.ieee80211_device*, %struct.TYPE_9__*, i64) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_12__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_entry(i32, i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_rxb*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
