; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_mlme_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_mlme.c___cfg80211_mlme_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_assoc_request = type { i32, i32, i32, i64 }

@CFG80211_SME_CONNECTED = common dso_local global i64 0, align 8
@CFG80211_SME_CONNECTING = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_mlme_assoc(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.ieee80211_channel* %2, i32* %3, i32* %4, i32 %5, %struct.cfg80211_assoc_request* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cfg80211_assoc_request*, align 8
  %16 = alloca %struct.wireless_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.cfg80211_assoc_request* %6, %struct.cfg80211_assoc_request** %15, align 8
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %16, align 8
  store i32 0, i32* %18, align 4
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %23 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %22)
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %56

28:                                               ; preds = %7
  %29 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %30 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %41 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ether_addr_equal(i32 %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %47 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  store i32 1, i32* %18, align 4
  %52 = load i64, i64* @CFG80211_SME_CONNECTING, align 8
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %45
  br label %65

56:                                               ; preds = %33, %28, %7
  %57 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %58 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = icmp ne %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EALREADY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %138

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %55
  %66 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %67 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %66, i32 0, i32 2
  %68 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %69 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cfg80211_oper_and_ht_capa(i32* %67, i32 %71)
  %73 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %74 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %73, i32 0, i32 1
  %75 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %76 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cfg80211_oper_and_vht_capa(i32* %74, i32 %78)
  %80 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %81 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %80, i32 0, i32 0
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %87 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %88 = call i32 @cfg80211_get_bss(%struct.TYPE_7__* %81, %struct.ieee80211_channel* %82, i32* %83, i32* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %90 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %92 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %65
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %100 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %101 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %138

105:                                              ; preds = %65
  %106 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %107 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %108 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %109 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %110 = call i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device* %106, %struct.wireless_dev* %107, %struct.ieee80211_channel* %108, i32 %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %119

114:                                              ; preds = %105
  %115 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %116 = load %struct.net_device*, %struct.net_device** %10, align 8
  %117 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %118 = call i32 @rdev_assoc(%struct.cfg80211_registered_device* %115, %struct.net_device* %116, %struct.cfg80211_assoc_request* %117)
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %114, %113
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i64, i64* @CFG80211_SME_CONNECTED, align 8
  %127 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %128 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %125, %122
  %130 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %131 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %130, i32 0, i32 0
  %132 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %133 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @cfg80211_put_bss(%struct.TYPE_7__* %131, i32 %134)
  br label %136

136:                                              ; preds = %129, %119
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %136, %102, %61
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @ether_addr_equal(i32, i64) #1

declare dso_local i32 @cfg80211_oper_and_ht_capa(i32*, i32) #1

declare dso_local i32 @cfg80211_oper_and_vht_capa(i32*, i32) #1

declare dso_local i32 @cfg80211_get_bss(%struct.TYPE_7__*, %struct.ieee80211_channel*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_can_use_chan(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @rdev_assoc(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_assoc_request*) #1

declare dso_local i32 @cfg80211_put_bss(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
