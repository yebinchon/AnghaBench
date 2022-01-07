; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_BAProc.c_TsInitDelBA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_rtl819x_BAProc.c_TsInitDelBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }

@TX_DIR = common dso_local global i64 0, align 8
@DELBA_REASON_END_BA = common dso_local global i32 0, align 4
@RX_DIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TsInitDelBA(%struct.ieee80211_device* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @TX_DIR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = bitcast %struct.TYPE_9__* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = call i64 @TxTsDeleteBA(%struct.ieee80211_device* %15, %struct.TYPE_8__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  br label %35

32:                                               ; preds = %19
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi %struct.TYPE_11__* [ %31, %29 ], [ %34, %32 ]
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @DELBA_REASON_END_BA, align 4
  %39 = call i32 @ieee80211_send_DELBA(%struct.ieee80211_device* %20, i32 %23, %struct.TYPE_11__* %36, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %12
  br label %64

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @RX_DIR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = bitcast %struct.TYPE_9__* %46 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %8, align 8
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = call i64 @RxTsDeleteBA(%struct.ieee80211_device* %48, %struct.TYPE_10__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* @DELBA_REASON_END_BA, align 4
  %61 = call i32 @ieee80211_send_DELBA(%struct.ieee80211_device* %53, i32 %56, %struct.TYPE_11__* %58, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %52, %45
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %40
  ret void
}

declare dso_local i64 @TxTsDeleteBA(%struct.ieee80211_device*, %struct.TYPE_8__*) #1

declare dso_local i32 @ieee80211_send_DELBA(%struct.ieee80211_device*, i32, %struct.TYPE_11__*, i64, i32) #1

declare dso_local i64 @RxTsDeleteBA(%struct.ieee80211_device*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
