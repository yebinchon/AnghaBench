; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32, i8*, i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @cfg80211_wext_siwfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.cfg80211_chan_def, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %10, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %20)
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %11, align 8
  %22 = bitcast %struct.cfg80211_chan_def* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 2
  %24 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  store i32 %24, i32* %23, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %121 [
    i32 128, label %28
    i32 131, label %34
    i32 129, label %40
    i32 130, label %80
  ]

28:                                               ; preds = %4
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %31 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @cfg80211_mgd_wext_siwfreq(%struct.net_device* %29, %struct.iw_request_info* %30, %struct.iw_freq* %31, i8* %32)
  store i32 %33, i32* %5, align 4
  br label %124

34:                                               ; preds = %4
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %37 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @cfg80211_ibss_wext_siwfreq(%struct.net_device* %35, %struct.iw_request_info* %36, %struct.iw_freq* %37, i8* %38)
  store i32 %39, i32* %5, align 4
  br label %124

40:                                               ; preds = %4
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %45 = call i32 @cfg80211_wext_freq(i32 %43, %struct.iw_freq* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %124

50:                                               ; preds = %40
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %124

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %60 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %59, i32 0, i32 1
  %61 = load i32, i32* %13, align 4
  %62 = call i8* @ieee80211_get_channel(i32* %60, i32 %61)
  %63 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %124

70:                                               ; preds = %56
  %71 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %72 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %75 = call i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device* %74, %struct.cfg80211_chan_def* %12)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %77 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %124

80:                                               ; preds = %4
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %85 = call i32 @cfg80211_wext_freq(i32 %83, %struct.iw_freq* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %124

90:                                               ; preds = %80
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %124

96:                                               ; preds = %90
  %97 = load i32, i32* %13, align 4
  %98 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %100 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %99, i32 0, i32 1
  %101 = load i32, i32* %13, align 4
  %102 = call i8* @ieee80211_get_channel(i32* %100, i32 %101)
  %103 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  store i8* %102, i8** %103, align 8
  %104 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %124

110:                                              ; preds = %96
  %111 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %112 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %111, i32 0, i32 0
  %113 = call i32 @mutex_lock(i32* %112)
  %114 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %115 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %116 = call i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device* %114, %struct.wireless_dev* %115, %struct.cfg80211_chan_def* %12)
  store i32 %116, i32* %14, align 4
  %117 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %118 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %5, align 4
  br label %124

121:                                              ; preds = %4
  %122 = load i32, i32* @EOPNOTSUPP, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %121, %110, %107, %93, %88, %70, %67, %53, %48, %34, %28
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_mgd_wext_siwfreq(%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*) #1

declare dso_local i32 @cfg80211_ibss_wext_siwfreq(%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*) #1

declare dso_local i32 @cfg80211_wext_freq(i32, %struct.iw_freq*) #1

declare dso_local i8* @ieee80211_get_channel(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
