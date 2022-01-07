; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c___cfg80211_disconnected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c___cfg80211_disconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i64, %struct.TYPE_10__, %struct.TYPE_11__*, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@CFG80211_SME_IDLE = common dso_local global i64 0, align 8
@cfg80211_disconnect_work = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_disconnected(%struct.net_device* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.cfg80211_registered_device*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %11, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %12, align 8
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %22 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %21)
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %28, %5
  %35 = phi i1 [ false, %5 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %123

40:                                               ; preds = %34
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %123

47:                                               ; preds = %40
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 5
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 5
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i32 @cfg80211_unhold_bss(%struct.TYPE_12__* %55)
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %58 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 5
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = call i32 @cfg80211_put_bss(i32 %59, i32* %63)
  br label %65

65:                                               ; preds = %52, %47
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %67, align 8
  %68 = load i64, i64* @CFG80211_SME_IDLE, align 8
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 3
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %65
  %78 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %79 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %78, i32 0, i32 3
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = call i32 @kfree(%struct.TYPE_11__* %82)
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %85 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %84, i32 0, i32 3
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %87, align 8
  %88 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %89 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %88, i32 0, i32 3
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call i32 @kfree(%struct.TYPE_11__* %90)
  %92 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %93 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %92, i32 0, i32 3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %93, align 8
  br label %94

94:                                               ; preds = %77, %65
  %95 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @nl80211_send_disconnected(%struct.cfg80211_registered_device* %95, %struct.net_device* %96, i32 %97, i32* %98, i64 %99, i32 %100)
  %102 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %103 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %117, %108
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 6
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %12, align 8
  %114 = load %struct.net_device*, %struct.net_device** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @rdev_del_key(%struct.cfg80211_registered_device* %113, %struct.net_device* %114, i32 %115, i32 0, i32* null)
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %109

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %94
  %122 = call i32 @schedule_work(i32* @cfg80211_disconnect_work)
  br label %123

123:                                              ; preds = %121, %46, %39
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_12__*) #1

declare dso_local i32 @cfg80211_put_bss(i32, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_11__*) #1

declare dso_local i32 @nl80211_send_disconnected(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i64, i32) #1

declare dso_local i32 @rdev_del_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
