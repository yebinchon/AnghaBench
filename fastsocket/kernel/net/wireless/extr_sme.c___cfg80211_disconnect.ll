; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c___cfg80211_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c___cfg80211_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_6__*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }

@CFG80211_SME_IDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CFG80211_SME_CONNECTING = common dso_local global i64 0, align 8
@CFG80211_CONN_SCANNING = common dso_local global i64 0, align 8
@CFG80211_CONN_SCAN_AGAIN = common dso_local global i64 0, align 8
@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_disconnect(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  store %struct.wireless_dev* %14, %struct.wireless_dev** %10, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %16 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %15)
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CFG80211_SME_IDLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %146

25:                                               ; preds = %4
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @kfree(%struct.TYPE_6__* %28)
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %31, align 8
  %32 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %113, label %38

38:                                               ; preds = %25
  %39 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %146

48:                                               ; preds = %38
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %50 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = call i32 @cfg80211_mlme_down(%struct.cfg80211_registered_device* %54, %struct.net_device* %55)
  br label %124

57:                                               ; preds = %48
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CFG80211_SME_CONNECTING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %57
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CFG80211_CONN_SCANNING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %63
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %73 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CFG80211_CONN_SCAN_AGAIN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %71, %63
  %80 = load i64, i64* @CFG80211_SME_IDLE, align 8
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @kfree(%struct.TYPE_6__* %87)
  %89 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %90 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @kfree(%struct.TYPE_6__* %91)
  %93 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %94 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %93, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %94, align 8
  %95 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %96 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  store i32 0, i32* %5, align 4
  br label %146

97:                                               ; preds = %71, %57
  %98 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %99 = load %struct.net_device*, %struct.net_device** %7, align 8
  %100 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %101 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @__cfg80211_mlme_deauth(%struct.cfg80211_registered_device* %98, %struct.net_device* %99, i32 %105, i32* null, i32 0, i32 %106, i32 0)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %97
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %5, align 4
  br label %146

112:                                              ; preds = %97
  br label %123

113:                                              ; preds = %25
  %114 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %115 = load %struct.net_device*, %struct.net_device** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @rdev_disconnect(%struct.cfg80211_registered_device* %114, %struct.net_device* %115, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %5, align 4
  br label %146

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %112
  br label %124

124:                                              ; preds = %123, %53
  %125 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %126 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = call i32 @__cfg80211_disconnected(%struct.net_device* %131, i32* null, i32 0, i32 0, i32 0)
  br label %145

133:                                              ; preds = %124
  %134 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %135 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CFG80211_SME_CONNECTING, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.net_device*, %struct.net_device** %7, align 8
  %141 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @__cfg80211_connect_result(%struct.net_device* %140, i32* null, i32* null, i32 0, i32* null, i32 0, i32 %141, i32 %142, i32* null)
  br label %144

144:                                              ; preds = %139, %133
  br label %145

145:                                              ; preds = %144, %130
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %145, %120, %110, %79, %45, %22
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @cfg80211_mlme_down(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local i32 @__cfg80211_mlme_deauth(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rdev_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

declare dso_local i32 @__cfg80211_disconnected(%struct.net_device*, i32*, i32, i32, i32) #1

declare dso_local i32 @__cfg80211_connect_result(%struct.net_device*, i32*, i32*, i32, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
