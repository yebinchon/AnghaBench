; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_consume_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_consume_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170_tx_superframe = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@CARL9170_TX_MAX_RETRY_RATES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carl9170_tx_superframe*)* @wlan_tx_consume_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_tx_consume_retry(%struct.carl9170_tx_superframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.carl9170_tx_superframe*, align 8
  store %struct.carl9170_tx_superframe* %0, %struct.carl9170_tx_superframe** %3, align 8
  %4 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %5 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %9 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %13 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %7, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %105

23:                                               ; preds = %1
  %24 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %25 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CARL9170_TX_MAX_RETRY_RATES, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %112

34:                                               ; preds = %23
  %35 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %36 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %40 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %112

48:                                               ; preds = %34
  %49 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %50 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %54 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %61 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i64 %59, i64* %64, align 8
  %65 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %66 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %71 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %75 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %82 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i32 %80, i32* %85, align 4
  %86 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %87 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %91 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %98 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i32 %96, i32* %101, align 8
  %102 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %103 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %111

105:                                              ; preds = %1
  %106 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %3, align 8
  %107 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %48
  store i32 1, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %47, %33
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
