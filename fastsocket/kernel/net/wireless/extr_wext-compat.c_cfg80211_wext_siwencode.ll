; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_wext-compat.c_cfg80211_wext_siwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.key_params = type { i8*, i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @cfg80211_wext_siwencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_siwencode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.key_params, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %17, align 8
  store %struct.wireless_dev* %18, %struct.wireless_dev** %10, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.cfg80211_registered_device* @wiphy_to_dev(i32 %21)
  store %struct.cfg80211_registered_device* %22, %struct.cfg80211_registered_device** %11, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %30 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %172

37:                                               ; preds = %28, %4
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %46 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %53 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51, %44, %37
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %172

61:                                               ; preds = %51
  %62 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %69
  br label %91

78:                                               ; preds = %61
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp sgt i32 %82, 4
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %172

87:                                               ; preds = %81
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %93 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 1, i32* %14, align 4
  br label %129

99:                                               ; preds = %91
  %100 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %101 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %99
  store i32 0, i32* %13, align 4
  %105 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %106 = call i32 @wdev_lock(%struct.wireless_dev* %105)
  %107 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %108 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %113 = load %struct.net_device*, %struct.net_device** %6, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @rdev_set_default_key(%struct.cfg80211_registered_device* %112, %struct.net_device* %113, i32 %114, i32 1, i32 1)
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %111, %104
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %122 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %116
  %125 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %126 = call i32 @wdev_unlock(%struct.wireless_dev* %125)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %5, align 4
  br label %172

128:                                              ; preds = %99
  br label %129

129:                                              ; preds = %128, %98
  %130 = call i32 @memset(%struct.key_params* %15, i32 0, i32 16)
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds %struct.key_params, %struct.key_params* %15, i32 0, i32 0
  store i8* %131, i8** %132, align 8
  %133 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %134 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.key_params, %struct.key_params* %15, i32 0, i32 1
  store i32 %135, i32* %136, align 8
  %137 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %138 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 5
  br i1 %140, label %141, label %144

141:                                              ; preds = %129
  %142 = load i32, i32* @WLAN_CIPHER_SUITE_WEP40, align 4
  %143 = getelementptr inbounds %struct.key_params, %struct.key_params* %15, i32 0, i32 2
  store i32 %142, i32* %143, align 4
  br label %160

144:                                              ; preds = %129
  %145 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %146 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 13
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @WLAN_CIPHER_SUITE_WEP104, align 4
  %151 = getelementptr inbounds %struct.key_params, %struct.key_params* %15, i32 0, i32 2
  store i32 %150, i32* %151, align 4
  br label %159

152:                                              ; preds = %144
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %172

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %149
  br label %160

160:                                              ; preds = %159, %141
  %161 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %162 = load %struct.net_device*, %struct.net_device** %6, align 8
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %165 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, -1
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @cfg80211_set_encryption(%struct.cfg80211_registered_device* %161, %struct.net_device* %162, i32 0, i32* null, i32 %163, i32 %169, i32 %170, %struct.key_params* %15)
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %160, %155, %124, %84, %58, %34
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_set_default_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @memset(%struct.key_params*, i32, i32) #1

declare dso_local i32 @cfg80211_set_encryption(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32, i32, i32, %struct.key_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
