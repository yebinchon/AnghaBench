; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_dump_mpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_dump_mpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mpath_info = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.wireless_dev = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @nl80211_dump_mpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_dump_mpath(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.mpath_info, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %30 = call i32 @nl80211_prepare_wdev_dump(%struct.sk_buff* %28, %struct.netlink_callback* %29, %struct.cfg80211_registered_device** %7, %struct.wireless_dev** %8)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %110

35:                                               ; preds = %2
  %36 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %37 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  br label %106

45:                                               ; preds = %35
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %47 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %106

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %93, %54
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @rdev_dump_mpath(%struct.cfg80211_registered_device* %57, i32 %60, i32 %61, i32* %19, i32* %22, %struct.mpath_info* %6)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %96

68:                                               ; preds = %56
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %106

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %75 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @NETLINK_CB(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %82 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NLM_F_MULTI, align 4
  %87 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %88 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @nl80211_send_mpath(%struct.sk_buff* %73, i32 %80, i32 %85, i32 %86, i32 %89, i32* %19, i32* %22, %struct.mpath_info* %6)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %97

93:                                               ; preds = %72
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %55

96:                                               ; preds = %67
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %100 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 %98, i32* %102, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %97, %71, %51, %42
  %107 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %108 = call i32 @nl80211_finish_wdev_dump(%struct.cfg80211_registered_device* %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %110

110:                                              ; preds = %106, %33
  %111 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nl80211_prepare_wdev_dump(%struct.sk_buff*, %struct.netlink_callback*, %struct.cfg80211_registered_device**, %struct.wireless_dev**) #2

declare dso_local i32 @rdev_dump_mpath(%struct.cfg80211_registered_device*, i32, i32, i32*, i32*, %struct.mpath_info*) #2

declare dso_local i64 @nl80211_send_mpath(%struct.sk_buff*, i32, i32, i32, i32, i32*, i32*, %struct.mpath_info*) #2

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
