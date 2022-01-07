; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_start_radar_detection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_start_radar_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { i32, i32, %struct.TYPE_3__*, %struct.wireless_dev* }
%struct.TYPE_3__ = type { i32 (i32*, %struct.net_device*, %struct.cfg80211_chan_def*)* }
%struct.cfg80211_chan_def = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.wireless_dev = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.cfg80211_registered_device = type { i32, i32, %struct.TYPE_3__*, %struct.wireless_dev* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_DFS_USABLE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_start_radar_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_start_radar_detection(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cfg80211_chan_def, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  %16 = bitcast %struct.net_device* %15 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 0
  %19 = load %struct.net_device**, %struct.net_device*** %18, align 8
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %7, align 8
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 3
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %23, align 8
  store %struct.wireless_dev* %24, %struct.wireless_dev** %8, align 8
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %26 = bitcast %struct.cfg80211_registered_device* %25 to %struct.net_device*
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = call i32 @nl80211_parse_chandef(%struct.net_device* %26, %struct.genl_info* %27, %struct.cfg80211_chan_def* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %124

33:                                               ; preds = %2
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %124

41:                                               ; preds = %33
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cfg80211_chandef_dfs_required(i32 %44, %struct.cfg80211_chan_def* %9)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %124

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %124

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NL80211_DFS_USABLE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %124

66:                                               ; preds = %56
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %68 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (i32*, %struct.net_device*, %struct.cfg80211_chan_def*)*, i32 (i32*, %struct.net_device*, %struct.cfg80211_chan_def*)** %70, align 8
  %72 = icmp ne i32 (i32*, %struct.net_device*, %struct.cfg80211_chan_def*)* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @EOPNOTSUPP, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %124

76:                                               ; preds = %66
  %77 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %78 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %77, i32 0, i32 0
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %81 = bitcast %struct.cfg80211_registered_device* %80 to %struct.net_device*
  %82 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %89 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @BIT(i32 %90)
  %92 = call i32 @cfg80211_can_use_iftype_chan(%struct.net_device* %81, %struct.wireless_dev* %82, i32 %85, %struct.TYPE_4__* %87, i32 %88, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %76
  br label %119

96:                                               ; preds = %76
  %97 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %98 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32 (i32*, %struct.net_device*, %struct.cfg80211_chan_def*)*, i32 (i32*, %struct.net_device*, %struct.cfg80211_chan_def*)** %100, align 8
  %102 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %103 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %102, i32 0, i32 1
  %104 = load %struct.net_device*, %struct.net_device** %7, align 8
  %105 = call i32 %101(i32* %103, %struct.net_device* %104, %struct.cfg80211_chan_def* %9)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %9, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %112 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %111, i32 0, i32 2
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %112, align 8
  %113 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %114 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load i32, i32* @jiffies, align 4
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %117 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %108, %96
  br label %119

119:                                              ; preds = %118, %95
  %120 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %121 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %73, %63, %53, %48, %38, %31
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @nl80211_parse_chandef(%struct.net_device*, %struct.genl_info*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_can_use_iftype_chan(%struct.net_device*, %struct.wireless_dev*, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
