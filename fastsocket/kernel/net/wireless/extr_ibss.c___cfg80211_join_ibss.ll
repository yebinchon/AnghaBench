; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ibss.c___cfg80211_join_ibss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_ibss.c___cfg80211_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i32, %struct.cfg80211_cached_keys*, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.cfg80211_ibss_params = type { i64, i32, i64, %struct.TYPE_11__, i32 }
%struct.cfg80211_cached_keys = type { i32 }

@EALREADY = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_RATE_MANDATORY_A = common dso_local global i32 0, align 4
@IEEE80211_RATE_MANDATORY_B = common dso_local global i32 0, align 4
@CFG80211_SME_CONNECTING = common dso_local global i32 0, align 4
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4
@CHAN_MODE_EXCLUSIVE = common dso_local global i32 0, align 4
@CFG80211_SME_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_join_ibss(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.cfg80211_ibss_params* %2, %struct.cfg80211_cached_keys* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_ibss_params*, align 8
  %9 = alloca %struct.cfg80211_cached_keys*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.cfg80211_ibss_params* %2, %struct.cfg80211_ibss_params** %8, align 8
  store %struct.cfg80211_cached_keys* %3, %struct.cfg80211_cached_keys** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  store %struct.wireless_dev* %17, %struct.wireless_dev** %10, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %19 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %18)
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EALREADY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %165

27:                                               ; preds = %4
  %28 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %29 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %89, label %32

32:                                               ; preds = %27
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %35, align 8
  %37 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %38 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %36, i64 %42
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %43, align 8
  store %struct.ieee80211_supported_band* %44, %struct.ieee80211_supported_band** %12, align 8
  %45 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %46 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = load i32, i32* @IEEE80211_RATE_MANDATORY_A, align 4
  br label %57

55:                                               ; preds = %32
  %56 = load i32, i32* @IEEE80211_RATE_MANDATORY_B, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %85, %57
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %67 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %66, i32 0, i32 1
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %65
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %81 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %77, %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %59

88:                                               ; preds = %59
  br label %89

89:                                               ; preds = %88, %27
  %90 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %91 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %90, i32 0, i32 3
  %92 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %91, align 8
  %93 = call i64 @WARN_ON(%struct.cfg80211_cached_keys* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %97 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %96, i32 0, i32 3
  %98 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %97, align 8
  %99 = call i32 @kfree(%struct.cfg80211_cached_keys* %98)
  br label %100

100:                                              ; preds = %95, %89
  %101 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %9, align 8
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %103 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %102, i32 0, i32 3
  store %struct.cfg80211_cached_keys* %101, %struct.cfg80211_cached_keys** %103, align 8
  %104 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %105 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %108 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %107, i32 0, i32 5
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @CFG80211_SME_CONNECTING, align 4
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %111 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %113 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %114 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %115 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %119 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %100
  %123 = load i32, i32* @CHAN_MODE_SHARED, align 4
  br label %126

124:                                              ; preds = %100
  %125 = load i32, i32* @CHAN_MODE_EXCLUSIVE, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = call i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device* %112, %struct.wireless_dev* %113, %struct.TYPE_12__* %117, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %133 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %132, i32 0, i32 3
  store %struct.cfg80211_cached_keys* null, %struct.cfg80211_cached_keys** %133, align 8
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %5, align 4
  br label %165

135:                                              ; preds = %126
  %136 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %137 = load %struct.net_device*, %struct.net_device** %7, align 8
  %138 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %139 = call i32 @rdev_join_ibss(%struct.cfg80211_registered_device* %136, %struct.net_device* %137, %struct.cfg80211_ibss_params* %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %144 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %143, i32 0, i32 3
  store %struct.cfg80211_cached_keys* null, %struct.cfg80211_cached_keys** %144, align 8
  %145 = load i32, i32* @CFG80211_SME_IDLE, align 4
  %146 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %147 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %5, align 4
  br label %165

149:                                              ; preds = %135
  %150 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %151 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %154 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %157 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @memcpy(i32 %152, i32 %155, i64 %158)
  %160 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %8, align 8
  %161 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %164 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %149, %142, %131, %24
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @WARN_ON(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @kfree(%struct.cfg80211_cached_keys*) #1

declare dso_local i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @rdev_join_ibss(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_ibss_params*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
