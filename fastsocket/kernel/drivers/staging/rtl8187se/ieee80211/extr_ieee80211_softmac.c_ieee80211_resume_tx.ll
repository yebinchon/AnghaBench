; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_resume_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_resume_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_6__, %struct.TYPE_7__*, %struct.TYPE_5__, i32, i32 (i32, %struct.TYPE_7__*, i32)*, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_resume_tx(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %4 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %59, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %9, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %8
  %18 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  br label %71

27:                                               ; preds = %17
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 4
  %30 = load i32 (i32, %struct.TYPE_7__*, i32)*, i32 (i32, %struct.TYPE_7__*, i32)** %29, align 8
  %31 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %30(i32 %40, %struct.TYPE_7__* %43, i32 %46)
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @jiffies, align 4
  %54 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %55 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %27
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %8

62:                                               ; preds = %8
  %63 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @ieee80211_txb_free(%struct.TYPE_8__* %66)
  %68 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %69 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %70, align 8
  br label %71

71:                                               ; preds = %62, %22
  ret void
}

declare dso_local i32 @ieee80211_txb_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
