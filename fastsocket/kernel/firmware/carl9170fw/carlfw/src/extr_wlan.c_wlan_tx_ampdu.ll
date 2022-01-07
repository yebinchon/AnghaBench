; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_ampdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_tx_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.carl9170_tx_superframe** }
%struct.carl9170_tx_superframe = type { %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@fw = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carl9170_tx_superframe*)* @wlan_tx_ampdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_tx_ampdu(%struct.carl9170_tx_superframe* %0) #0 {
  %2 = alloca %struct.carl9170_tx_superframe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.carl9170_tx_superframe*, align 8
  store %struct.carl9170_tx_superframe* %0, %struct.carl9170_tx_superframe** %2, align 8
  %5 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %2, align 8
  %6 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.carl9170_tx_superframe**, %struct.carl9170_tx_superframe*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fw, i32 0, i32 0, i32 0), align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %9, i64 %11
  %13 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %12, align 8
  store %struct.carl9170_tx_superframe* %13, %struct.carl9170_tx_superframe** %4, align 8
  %14 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %2, align 8
  %15 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %1
  %22 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %4, align 8
  %23 = icmp ne %struct.carl9170_tx_superframe* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %2, align 8
  %26 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %4, align 8
  %30 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = call i32 @same_aggr(i32* %28, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %4, align 8
  %37 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %47

41:                                               ; preds = %24, %21
  %42 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %2, align 8
  %43 = getelementptr inbounds %struct.carl9170_tx_superframe, %struct.carl9170_tx_superframe* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %2, align 8
  %49 = load %struct.carl9170_tx_superframe**, %struct.carl9170_tx_superframe*** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @fw, i32 0, i32 0, i32 0), align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.carl9170_tx_superframe*, %struct.carl9170_tx_superframe** %49, i64 %51
  store %struct.carl9170_tx_superframe* %48, %struct.carl9170_tx_superframe** %52, align 8
  br label %56

53:                                               ; preds = %1
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @wlan_tx_ampdu_end(i32 %54)
  br label %56

56:                                               ; preds = %53, %47
  ret void
}

declare dso_local i32 @same_aggr(i32*, i32*) #1

declare dso_local i32 @wlan_tx_ampdu_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
