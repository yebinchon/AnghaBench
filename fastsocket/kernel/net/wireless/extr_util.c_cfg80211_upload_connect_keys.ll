; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_upload_connect_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_upload_connect_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_4__*, %struct.net_device*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to set key %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to set defkey %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to set mgtdef %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_upload_connect_keys(%struct.wireless_dev* %0) #0 {
  %2 = alloca %struct.wireless_dev*, align 8
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %2, align 8
  %6 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %7 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %8)
  store %struct.cfg80211_registered_device* %9, %struct.cfg80211_registered_device** %3, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %11 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %102

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %92, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %95

22:                                               ; preds = %19
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %92

35:                                               ; preds = %22
  %36 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %40 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = call i64 @rdev_add_key(%struct.cfg80211_registered_device* %36, %struct.net_device* %37, i32 %38, i32 0, i32* null, %struct.TYPE_3__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @netdev_err(%struct.net_device* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %92

53:                                               ; preds = %35
  %54 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %55 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @rdev_set_default_key(%struct.cfg80211_registered_device* %62, %struct.net_device* %63, i32 %64, i32 1, i32 1)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @netdev_err(%struct.net_device* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %92

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %74 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @rdev_set_default_mgmt_key(%struct.cfg80211_registered_device* %81, %struct.net_device* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @netdev_err(%struct.net_device* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %80
  br label %91

91:                                               ; preds = %90, %72
  br label %92

92:                                               ; preds = %91, %67, %49, %34
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %19

95:                                               ; preds = %19
  %96 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %97 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = call i32 @kfree(%struct.TYPE_4__* %98)
  %100 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %101 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %100, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %101, align 8
  br label %102

102:                                              ; preds = %95, %17
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i64 @rdev_add_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @rdev_set_default_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i64 @rdev_set_default_mgmt_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
