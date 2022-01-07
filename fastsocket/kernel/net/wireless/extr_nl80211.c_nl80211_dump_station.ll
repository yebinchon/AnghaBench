; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_dump_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_dump_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.station_info = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @nl80211_dump_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_dump_station(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.station_info, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %26 = call i32 @nl80211_prepare_wdev_dump(%struct.sk_buff* %24, %struct.netlink_callback* %25, %struct.cfg80211_registered_device** %7, %struct.wireless_dev** %8)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %107

31:                                               ; preds = %2
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %12, align 4
  br label %103

39:                                               ; preds = %31
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %103

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %90, %49
  br label %51

51:                                               ; preds = %50
  %52 = call i32 @memset(%struct.station_info* %6, i32 0, i32 4)
  %53 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @rdev_dump_station(%struct.cfg80211_registered_device* %53, i32 %56, i32 %57, i32* %18, %struct.station_info* %6)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %93

64:                                               ; preds = %51
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %103

68:                                               ; preds = %64
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %71 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @NETLINK_CB(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %78 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NLM_F_MULTI, align 4
  %83 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %85 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @nl80211_send_station(%struct.sk_buff* %69, i32 %76, i32 %81, i32 %82, %struct.cfg80211_registered_device* %83, i32 %86, i32* %18, %struct.station_info* %6)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %68
  br label %94

90:                                               ; preds = %68
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %50

93:                                               ; preds = %63
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %97 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %94, %67, %46, %36
  %104 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %105 = call i32 @nl80211_finish_wdev_dump(%struct.cfg80211_registered_device* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %107

107:                                              ; preds = %103, %29
  %108 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nl80211_prepare_wdev_dump(%struct.sk_buff*, %struct.netlink_callback*, %struct.cfg80211_registered_device**, %struct.wireless_dev**) #2

declare dso_local i32 @memset(%struct.station_info*, i32, i32) #2

declare dso_local i32 @rdev_dump_station(%struct.cfg80211_registered_device*, i32, i32, i32*, %struct.station_info*) #2

declare dso_local i64 @nl80211_send_station(%struct.sk_buff*, i32, i32, i32, %struct.cfg80211_registered_device*, i32, i32*, %struct.station_info*) #2

declare dso_local i32 @NETLINK_CB(i32) #2

declare dso_local i32 @nl80211_finish_wdev_dump(%struct.cfg80211_registered_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
