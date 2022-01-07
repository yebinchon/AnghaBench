; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_nl80211.c_nl80211_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.net_device** }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32, i32, i32 }
%struct.cfg80211_registered_device = type { %struct.wireless_dev* }
%struct.vif_params = type { i32 }

@NL80211_ATTR_IFTYPE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_MESH_ID = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@IEEE80211_MAX_MESH_ID_LEN = common dso_local global i64 0, align 8
@NL80211_ATTR_4ADDR = common dso_local global i64 0, align 8
@NL80211_ATTR_MNTR_FLAGS = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_interface(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.vif_params, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wireless_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = bitcast %struct.net_device* %20 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %6, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load %struct.net_device**, %struct.net_device*** %23, align 8
  %25 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 1
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %11, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %27 = call i32 @memset(%struct.vif_params* %7, i32 0, i32 4)
  %28 = load %struct.net_device*, %struct.net_device** %11, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %29, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @NL80211_ATTR_IFTYPE, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %2
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @NL80211_ATTR_IFTYPE, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @nla_get_u32(i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 1, i32* %14, align 4
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @NL80211_IFTYPE_MAX, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %208

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %62 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %118

68:                                               ; preds = %60
  %69 = load %struct.net_device*, %struct.net_device** %11, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %70, align 8
  store %struct.wireless_dev* %71, %struct.wireless_dev** %15, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %208

78:                                               ; preds = %68
  %79 = load %struct.net_device*, %struct.net_device** %11, align 8
  %80 = call i64 @netif_running(%struct.net_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %208

85:                                               ; preds = %78
  %86 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %87 = call i32 @wdev_lock(%struct.wireless_dev* %86)
  %88 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %89 = load i64, i64* @IEEE80211_MAX_MESH_ID_LEN, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUILD_BUG_ON(i32 %91)
  %93 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @nla_len(i64 %98)
  %100 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %101 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %103 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %106 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @nla_data(i64 %110)
  %112 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %113 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memcpy(i32 %104, i32 %111, i32 %114)
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  %117 = call i32 @wdev_unlock(%struct.wireless_dev* %116)
  br label %118

118:                                              ; preds = %85, %60
  %119 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %120 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @NL80211_ATTR_4ADDR, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %118
  %127 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %128 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @NL80211_ATTR_4ADDR, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @nla_get_u8(i64 %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  store i32 1, i32* %14, align 4
  %139 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %140 = bitcast %struct.cfg80211_registered_device* %139 to %struct.net_device*
  %141 = load %struct.net_device*, %struct.net_device** %11, align 8
  %142 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @nl80211_valid_4addr(%struct.net_device* %140, %struct.net_device* %141, i32 %143, i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %126
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %3, align 4
  br label %208

150:                                              ; preds = %126
  br label %153

151:                                              ; preds = %118
  %152 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  store i32 -1, i32* %152, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %155 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* @NL80211_ATTR_MNTR_FLAGS, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %153
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %208

168:                                              ; preds = %161
  %169 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %170 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* @NL80211_ATTR_MNTR_FLAGS, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @parse_monitor_flags(i64 %174, i32* %12)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %208

180:                                              ; preds = %168
  store i32* %12, i32** %13, align 8
  store i32 1, i32* %14, align 4
  br label %181

181:                                              ; preds = %180, %153
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %186 = bitcast %struct.cfg80211_registered_device* %185 to %struct.net_device*
  %187 = load %struct.net_device*, %struct.net_device** %11, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32*, i32** %13, align 8
  %190 = call i32 @cfg80211_change_iface(%struct.net_device* %186, %struct.net_device* %187, i32 %188, i32* %189, %struct.vif_params* %7)
  store i32 %190, i32* %8, align 4
  br label %192

191:                                              ; preds = %181
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %191, %184
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, -1
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.net_device*, %struct.net_device** %11, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 0
  %204 = load %struct.wireless_dev*, %struct.wireless_dev** %203, align 8
  %205 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %204, i32 0, i32 1
  store i32 %201, i32* %205, align 4
  br label %206

206:                                              ; preds = %199, %195, %192
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %206, %178, %165, %148, %82, %75, %56
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @memset(%struct.vif_params*, i32, i32) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i32 @nl80211_valid_4addr(%struct.net_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @parse_monitor_flags(i64, i32*) #1

declare dso_local i32 @cfg80211_change_iface(%struct.net_device*, %struct.net_device*, i32, i32*, %struct.vif_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
