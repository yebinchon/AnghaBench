; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c___nl80211_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c___nl80211_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.wireless_dev = type { i32, %struct.cfg80211_chan_def, i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.genl_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.genl_info*)* @__nl80211_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nl80211_set_channel(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, %struct.genl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.cfg80211_chan_def, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %6, align 8
  store %struct.genl_info* %2, %struct.genl_info** %7, align 8
  store i32 129, i32* %10, align 4
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %12 = icmp ne %struct.wireless_dev* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %19 = call i32 @nl80211_can_set_dev_channel(%struct.wireless_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %73

24:                                               ; preds = %17
  %25 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %26 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %27 = call i32 @nl80211_parse_chandef(%struct.cfg80211_registered_device* %25, %struct.genl_info* %26, %struct.cfg80211_chan_def* %8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %73

32:                                               ; preds = %24
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %65 [
    i32 131, label %37
    i32 128, label %37
    i32 130, label %58
    i32 129, label %62
  ]

37:                                               ; preds = %32, %32
  %38 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %39 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %68

45:                                               ; preds = %37
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 1
  %48 = call i32 @cfg80211_reg_can_beacon(i32* %47, %struct.cfg80211_chan_def* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %68

53:                                               ; preds = %45
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 1
  %56 = bitcast %struct.cfg80211_chan_def* %55 to i8*
  %57 = bitcast %struct.cfg80211_chan_def* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  br label %68

58:                                               ; preds = %32
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %61 = call i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device* %59, %struct.wireless_dev* %60, %struct.cfg80211_chan_def* %8)
  store i32 %61, i32* %9, align 4
  br label %68

62:                                               ; preds = %32
  %63 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %64 = call i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device* %63, %struct.cfg80211_chan_def* %8)
  store i32 %64, i32* %9, align 4
  br label %68

65:                                               ; preds = %32
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %62, %58, %53, %50, %42
  %69 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %70 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %30, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @nl80211_can_set_dev_channel(%struct.wireless_dev*) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.cfg80211_registered_device*, %struct.genl_info*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfg80211_reg_can_beacon(i32*, %struct.cfg80211_chan_def*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_set_mesh_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_set_monitor_channel(%struct.cfg80211_registered_device*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
