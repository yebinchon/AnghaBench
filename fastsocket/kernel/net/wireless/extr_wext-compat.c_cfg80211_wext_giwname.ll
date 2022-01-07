; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_giwname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iw_request_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"IEEE 802.11\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_giwname(%struct.net_device* %0, %struct.iw_request_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %21 = icmp ne %struct.wireless_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %121

25:                                               ; preds = %4
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %29, align 8
  %31 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %32 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %30, i64 %31
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %32, align 8
  store %struct.ieee80211_supported_band* %33, %struct.ieee80211_supported_band** %11, align 8
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %35 = icmp ne %struct.ieee80211_supported_band* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  store i32 1, i32* %13, align 4
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %36, %25
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %47, align 8
  %49 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %48, i64 %49
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %50, align 8
  store %struct.ieee80211_supported_band* %51, %struct.ieee80211_supported_band** %11, align 8
  %52 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %53 = icmp ne %struct.ieee80211_supported_band* %52, null
  br i1 %53, label %54, label %94

54:                                               ; preds = %43
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %84, %54
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %58 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %55
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %71, %61
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %74 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 60
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %55

87:                                               ; preds = %55
  %88 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %87, %43
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strcpy(i8* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @strcat(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @strcat(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @strcat(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @strcat(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %114
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %22
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
