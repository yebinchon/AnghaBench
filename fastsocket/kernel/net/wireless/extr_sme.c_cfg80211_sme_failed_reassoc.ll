; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_sme_failed_reassoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_sme_failed_reassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_2__*, %struct.wiphy* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@CFG80211_CONN_ASSOCIATE_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_sme_failed_reassoc(%struct.wireless_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  %6 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %6, i32 0, i32 1
  %8 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  store %struct.wiphy* %8, %struct.wiphy** %4, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy* %9)
  store %struct.cfg80211_registered_device* %10, %struct.cfg80211_registered_device** %5, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %41

28:                                               ; preds = %20
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @CFG80211_CONN_ASSOCIATE_NEXT, align 4
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 0
  %40 = call i32 @schedule_work(i32* %39)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %28, %27, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
