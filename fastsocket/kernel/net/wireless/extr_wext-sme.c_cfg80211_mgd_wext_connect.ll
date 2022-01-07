; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-sme.c_cfg80211_mgd_wext_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.wireless_dev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, i32*, i64, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.cfg80211_cached_keys = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mgd_wext_connect(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_cached_keys*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store %struct.cfg80211_cached_keys* null, %struct.cfg80211_cached_keys** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %11 = call i32 @ASSERT_RDEV_LOCK(%struct.cfg80211_registered_device* %10)
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %13 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %12)
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netif_running(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

20:                                               ; preds = %2
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 4
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 4
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 4
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %76

46:                                               ; preds = %20
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %46
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %46
  br label %76

76:                                               ; preds = %75, %20
  %77 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %78 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %154

84:                                               ; preds = %76
  %85 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %86 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %125

90:                                               ; preds = %84
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %92 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.cfg80211_cached_keys* @kmemdup(%struct.TYPE_7__* %94, i32 16, i32 %95)
  store %struct.cfg80211_cached_keys* %96, %struct.cfg80211_cached_keys** %6, align 8
  %97 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %98 = icmp ne %struct.cfg80211_cached_keys* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %154

102:                                              ; preds = %90
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 6
  br i1 %105, label %106, label %124

106:                                              ; preds = %103
  %107 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %108 = getelementptr inbounds %struct.cfg80211_cached_keys, %struct.cfg80211_cached_keys* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %115 = getelementptr inbounds %struct.cfg80211_cached_keys, %struct.cfg80211_cached_keys* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %103

124:                                              ; preds = %103
  br label %125

125:                                              ; preds = %124, %84
  %126 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %127 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %133 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %7, align 8
  br label %136

136:                                              ; preds = %131, %125
  %137 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %138 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %139 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %142 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @__cfg80211_connect(%struct.cfg80211_registered_device* %137, i32 %140, %struct.TYPE_8__* %143, %struct.cfg80211_cached_keys* %144, i32* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %136
  %150 = load %struct.cfg80211_cached_keys*, %struct.cfg80211_cached_keys** %6, align 8
  %151 = call i32 @kfree(%struct.cfg80211_cached_keys* %150)
  br label %152

152:                                              ; preds = %149, %136
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %99, %83, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @ASSERT_RDEV_LOCK(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local %struct.cfg80211_cached_keys* @kmemdup(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @__cfg80211_connect(%struct.cfg80211_registered_device*, i32, %struct.TYPE_8__*, %struct.cfg80211_cached_keys*, i32*) #1

declare dso_local i32 @kfree(%struct.cfg80211_cached_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
