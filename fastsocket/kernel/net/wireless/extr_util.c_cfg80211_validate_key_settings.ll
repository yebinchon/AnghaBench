; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_validate_key_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_util.c_cfg80211_validate_key_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.key_params = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP40 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_TKIP = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_CCMP = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_WEP104 = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_AES_CMAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_validate_key_settings(%struct.cfg80211_registered_device* %0, %struct.key_params* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.key_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %7, align 8
  store %struct.key_params* %1, %struct.key_params** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = icmp sgt i32 %12, 5
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %156

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %25 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %156

34:                                               ; preds = %23, %20, %17
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %156

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load %struct.key_params*, %struct.key_params** %8, align 8
  %51 = getelementptr inbounds %struct.key_params, %struct.key_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 130
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.key_params*, %struct.key_params** %8, align 8
  %56 = getelementptr inbounds %struct.key_params, %struct.key_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 131
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.key_params*, %struct.key_params** %8, align 8
  %61 = getelementptr inbounds %struct.key_params, %struct.key_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 132
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54, %49
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %156

67:                                               ; preds = %59, %46, %43
  %68 = load %struct.key_params*, %struct.key_params** %8, align 8
  %69 = getelementptr inbounds %struct.key_params, %struct.key_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %121 [
    i32 128, label %71
    i32 130, label %81
    i32 131, label %91
    i32 129, label %101
    i32 132, label %111
  ]

71:                                               ; preds = %67
  %72 = load %struct.key_params*, %struct.key_params** %8, align 8
  %73 = getelementptr inbounds %struct.key_params, %struct.key_params* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @WLAN_KEY_LEN_WEP40, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %156

80:                                               ; preds = %71
  br label %122

81:                                               ; preds = %67
  %82 = load %struct.key_params*, %struct.key_params** %8, align 8
  %83 = getelementptr inbounds %struct.key_params, %struct.key_params* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @WLAN_KEY_LEN_TKIP, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %156

90:                                               ; preds = %81
  br label %122

91:                                               ; preds = %67
  %92 = load %struct.key_params*, %struct.key_params** %8, align 8
  %93 = getelementptr inbounds %struct.key_params, %struct.key_params* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %156

100:                                              ; preds = %91
  br label %122

101:                                              ; preds = %67
  %102 = load %struct.key_params*, %struct.key_params** %8, align 8
  %103 = getelementptr inbounds %struct.key_params, %struct.key_params* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @WLAN_KEY_LEN_WEP104, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %156

110:                                              ; preds = %101
  br label %122

111:                                              ; preds = %67
  %112 = load %struct.key_params*, %struct.key_params** %8, align 8
  %113 = getelementptr inbounds %struct.key_params, %struct.key_params* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @WLAN_KEY_LEN_AES_CMAC, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %156

120:                                              ; preds = %111
  br label %122

121:                                              ; preds = %67
  br label %122

122:                                              ; preds = %121, %120, %110, %100, %90, %80
  %123 = load %struct.key_params*, %struct.key_params** %8, align 8
  %124 = getelementptr inbounds %struct.key_params, %struct.key_params* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %122
  %128 = load %struct.key_params*, %struct.key_params** %8, align 8
  %129 = getelementptr inbounds %struct.key_params, %struct.key_params* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %143 [
    i32 128, label %131
    i32 129, label %131
    i32 130, label %134
    i32 131, label %134
    i32 132, label %134
  ]

131:                                              ; preds = %127, %127
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %156

134:                                              ; preds = %127, %127, %127
  %135 = load %struct.key_params*, %struct.key_params** %8, align 8
  %136 = getelementptr inbounds %struct.key_params, %struct.key_params* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 6
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %156

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %127, %142
  br label %144

144:                                              ; preds = %143, %122
  %145 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %146 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %145, i32 0, i32 0
  %147 = load %struct.key_params*, %struct.key_params** %8, align 8
  %148 = getelementptr inbounds %struct.key_params, %struct.key_params* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @cfg80211_supported_cipher_suite(%struct.TYPE_2__* %146, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %6, align 4
  br label %156

155:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %155, %152, %139, %131, %117, %107, %97, %87, %77, %64, %40, %31, %14
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @cfg80211_supported_cipher_suite(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
