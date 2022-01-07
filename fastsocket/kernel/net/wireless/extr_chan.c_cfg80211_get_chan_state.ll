; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_get_chan_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_get_chan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.TYPE_6__*, %struct.ieee80211_channel*, i32, i32, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }

@CHAN_MODE_UNDEFINED = common dso_local global i32 0, align 4
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4
@CHAN_MODE_EXCLUSIVE = common dso_local global i32 0, align 4
@NL80211_FEATURE_P2P_DEVICE_NEEDS_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_get_chan_state(%struct.wireless_dev* %0, %struct.ieee80211_channel** %1, i32* %2) #0 {
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.ieee80211_channel**, align 8
  %6 = alloca i32*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %4, align 8
  store %struct.ieee80211_channel** %1, %struct.ieee80211_channel*** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %5, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %7, align 8
  %8 = load i32, i32* @CHAN_MODE_UNDEFINED, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 %8, i32* %9, align 4
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %11 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %10)
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @netif_running(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %124

23:                                               ; preds = %16, %3
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %123 [
    i32 139, label %27
    i32 131, label %52
    i32 134, label %52
    i32 138, label %68
    i32 132, label %68
    i32 136, label %94
    i32 135, label %107
    i32 137, label %107
    i32 129, label %107
    i32 133, label %108
    i32 130, label %121
    i32 128, label %121
  ]

27:                                               ; preds = %23
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 6
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %37, align 8
  %39 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %5, align 8
  store %struct.ieee80211_channel* %38, %struct.ieee80211_channel** %39, align 8
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @CHAN_MODE_SHARED, align 4
  br label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @CHAN_MODE_EXCLUSIVE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %124

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %23, %23, %51
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 6
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 6
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %62, align 8
  %64 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %5, align 8
  store %struct.ieee80211_channel* %63, %struct.ieee80211_channel** %64, align 8
  %65 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %124

67:                                               ; preds = %52
  br label %123

68:                                               ; preds = %23, %23
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %75 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %74, i32 0, i32 2
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %75, align 8
  %77 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %5, align 8
  store %struct.ieee80211_channel* %76, %struct.ieee80211_channel** %77, align 8
  %78 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %93

80:                                               ; preds = %68
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %87 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %86, i32 0, i32 2
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %87, align 8
  %89 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %5, align 8
  store %struct.ieee80211_channel* %88, %struct.ieee80211_channel** %89, align 8
  %90 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %85, %80
  br label %93

93:                                               ; preds = %92, %73
  br label %124

94:                                               ; preds = %23
  %95 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %96 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %101 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %100, i32 0, i32 2
  %102 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %101, align 8
  %103 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %5, align 8
  store %struct.ieee80211_channel* %102, %struct.ieee80211_channel** %103, align 8
  %104 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %99, %94
  br label %124

107:                                              ; preds = %23, %23, %23
  br label %124

108:                                              ; preds = %23
  %109 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %110 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NL80211_FEATURE_P2P_DEVICE_NEEDS_CHANNEL, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32, i32* @CHAN_MODE_EXCLUSIVE, align 4
  %119 = load i32*, i32** %6, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %108
  br label %124

121:                                              ; preds = %23, %23
  %122 = call i32 @WARN_ON(i32 1)
  br label %123

123:                                              ; preds = %121, %23, %67
  br label %124

124:                                              ; preds = %123, %120, %107, %106, %93, %57, %48, %22
  ret void
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @netif_running(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
