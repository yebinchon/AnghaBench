; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ethtool.c_cfg80211_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ethtool.c_cfg80211_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @cfg80211_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg80211_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  store %struct.wireless_dev* %8, %struct.wireless_dev** %5, align 8
  %9 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call %struct.TYPE_7__* @wiphy_dev(%struct.TYPE_8__* %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlcpy(i32 %11, i8* %19, i32 4)
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_9__* (...) @init_utsname()
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlcpy(i32 %23, i8* %26, i32 4)
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %2
  %37 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlcpy(i32 %39, i8* %44, i32 4)
  br label %51

46:                                               ; preds = %2
  %47 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strlcpy(i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %51

51:                                               ; preds = %46, %36
  %52 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call %struct.TYPE_7__* @wiphy_dev(%struct.TYPE_8__* %57)
  %59 = call i8* @dev_name(%struct.TYPE_7__* %58)
  %60 = call i32 @strlcpy(i32 %54, i8* %59, i32 4)
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @wiphy_dev(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @init_utsname(...) #1

declare dso_local i8* @dev_name(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
