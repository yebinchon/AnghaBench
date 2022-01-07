; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_dump_survey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_dump_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.survey_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @nl80211_dump_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_dump_survey(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.survey_info, align 8
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %20 = call i32 @nl80211_prepare_wdev_dump(%struct.sk_buff* %18, %struct.netlink_callback* %19, %struct.cfg80211_registered_device** %7, %struct.wireless_dev** %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %125

25:                                               ; preds = %2
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %121

33:                                               ; preds = %25
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %121

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %84, %108
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %47 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @rdev_dump_survey(%struct.cfg80211_registered_device* %45, i32 %48, i32 %49, %struct.survey_info* %6)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %111

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %121

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %6, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = icmp ne %struct.TYPE_6__* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %112

67:                                               ; preds = %60
  %68 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %69 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %6, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32* %69, i32 %73)
  store %struct.ieee80211_channel* %74, %struct.ieee80211_channel** %11, align 8
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %76 = icmp ne %struct.ieee80211_channel* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77, %67
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %44

87:                                               ; preds = %77
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %90 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @NETLINK_CB(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %97 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NLM_F_MULTI, align 4
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %103 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @nl80211_send_survey(%struct.sk_buff* %88, i32 %95, i32 %100, i32 %101, i32 %104, %struct.survey_info* %6)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %87
  br label %112

108:                                              ; preds = %87
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %44

111:                                              ; preds = %55
  br label %112

112:                                              ; preds = %111, %107, %64
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %115 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %113, i32* %117, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %112, %59, %40, %30
  %122 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %123 = call i32 @nl80211_finish_wdev_dump(%struct.cfg80211_registered_device* %122)
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %23
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @nl80211_prepare_wdev_dump(%struct.sk_buff*, %struct.netlink_callback*, %struct.cfg80211_registered_device**, %struct.wireless_dev**) #1

declare dso_local i32 @rdev_dump_survey(%struct.cfg80211_registered_device*, i32, i32, %struct.survey_info*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32*, i32) #1

declare dso_local i64 @nl80211_send_survey(%struct.sk_buff*, i32, i32, i32, i32, %struct.survey_info*) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @nl80211_finish_wdev_dump(%struct.cfg80211_registered_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
