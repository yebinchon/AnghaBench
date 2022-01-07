; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_connect_result.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_connect_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i32, i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.cfg80211_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i64, i64, i32, i32*, i32* }

@CFG80211_SME_CONNECTING = common dso_local global i64 0, align 8
@EVENT_CONNECT_RESULT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_connect_result(%struct.net_device* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wireless_dev*, align 8
  %18 = alloca %struct.cfg80211_registered_device*, align 8
  %19 = alloca %struct.cfg80211_event*, align 8
  %20 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %22, align 8
  store %struct.wireless_dev* %23, %struct.wireless_dev** %17, align 8
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %26)
  store %struct.cfg80211_registered_device* %27, %struct.cfg80211_registered_device** %18, align 8
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CFG80211_SME_CONNECTING, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @CFG80211_DEV_WARN_ON(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = add i64 64, %35
  %37 = load i64, i64* %14, align 8
  %38 = add i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %16, align 4
  %41 = call %struct.cfg80211_event* @kzalloc(i32 %39, i32 %40)
  store %struct.cfg80211_event* %41, %struct.cfg80211_event** %19, align 8
  %42 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %43 = icmp ne %struct.cfg80211_event* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %8
  br label %127

45:                                               ; preds = %8
  %46 = load i32, i32* @EVENT_CONNECT_RESULT, align 4
  %47 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %48 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %53 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* @ETH_ALEN, align 8
  %58 = call i32 @memcpy(i8* %55, i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %51, %45
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %64 = bitcast %struct.cfg80211_event* %63 to i32*
  %65 = getelementptr inbounds i32, i32* %64, i64 64
  %66 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %67 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 5
  store i32* %65, i32** %68, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %71 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  %73 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %74 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load i32*, i32** %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @memcpy(i8* %77, i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %62, %59
  %82 = load i64, i64* %14, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %81
  %85 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %86 = bitcast %struct.cfg80211_event* %85 to i32*
  %87 = getelementptr inbounds i32, i32* %86, i64 64
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %91 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  store i32* %89, i32** %92, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %95 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i64 %93, i64* %96, align 8
  %97 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %98 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = load i32*, i32** %13, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @memcpy(i8* %101, i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %84, %81
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %108 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 8
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %111 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %110, i32 0, i32 1
  %112 = load i64, i64* %20, align 8
  %113 = call i32 @spin_lock_irqsave(i32* %111, i64 %112)
  %114 = load %struct.cfg80211_event*, %struct.cfg80211_event** %19, align 8
  %115 = getelementptr inbounds %struct.cfg80211_event, %struct.cfg80211_event* %114, i32 0, i32 0
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %117 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %116, i32 0, i32 2
  %118 = call i32 @list_add_tail(i32* %115, i32* %117)
  %119 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  %120 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %119, i32 0, i32 1
  %121 = load i64, i64* %20, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load i32, i32* @cfg80211_wq, align 4
  %124 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %18, align 8
  %125 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %124, i32 0, i32 0
  %126 = call i32 @queue_work(i32 %123, i32* %125)
  br label %127

127:                                              ; preds = %105, %44
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @CFG80211_DEV_WARN_ON(i32) #1

declare dso_local %struct.cfg80211_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
