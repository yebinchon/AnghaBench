; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_conn_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_sme.c_cfg80211_conn_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32, %struct.ieee80211_channel* }
%struct.cfg80211_registered_device = type { %struct.cfg80211_scan_request*, i32, i32 }
%struct.cfg80211_scan_request = type { i32*, i32, i32, i32, i32*, %struct.wireless_dev*, %struct.TYPE_5__*, %struct.ieee80211_channel** }
%struct.TYPE_5__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@IEEE80211_NUM_BANDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CFG80211_CONN_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wireless_dev*)* @cfg80211_conn_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_conn_scan(%struct.wireless_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.TYPE_8__* %16)
  store %struct.cfg80211_registered_device* %17, %struct.cfg80211_registered_device** %4, align 8
  %18 = call i32 (...) @ASSERT_RTNL()
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %20 = call i32 @ASSERT_RDEV_LOCK(%struct.cfg80211_registered_device* %19)
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %22 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %21)
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %23, i32 0, i32 2
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 0
  %28 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %27, align 8
  %29 = icmp ne %struct.cfg80211_scan_request* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %261

33:                                               ; preds = %1
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %35 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %38, align 8
  %40 = icmp ne %struct.ieee80211_channel* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %77

42:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %52, i64 %54
  %56 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %55, align 8
  %57 = icmp ne %struct.ieee80211_supported_band* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  br label %73

59:                                               ; preds = %47
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %64, i64 %66
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %67, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %59, %58
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %43

76:                                               ; preds = %43
  br label %77

77:                                               ; preds = %76, %41
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 8, %79
  %81 = add i64 64, %80
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.cfg80211_scan_request* @kzalloc(i32 %82, i32 %83)
  store %struct.cfg80211_scan_request* %84, %struct.cfg80211_scan_request** %5, align 8
  %85 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %86 = icmp ne %struct.cfg80211_scan_request* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %261

90:                                               ; preds = %77
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %92 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %95, align 8
  %97 = icmp ne %struct.ieee80211_channel* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %90
  %99 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %100 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %103, align 8
  %105 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %106 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %105, i32 0, i32 7
  %107 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %106, align 8
  %108 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %107, i64 0
  store %struct.ieee80211_channel* %104, %struct.ieee80211_channel** %108, align 8
  br label %177

109:                                              ; preds = %90
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %172, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @IEEE80211_NUM_BANDS, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %175

114:                                              ; preds = %110
  %115 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %116 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %119, i64 %121
  %123 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %122, align 8
  store %struct.ieee80211_supported_band* %123, %struct.ieee80211_supported_band** %12, align 8
  %124 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %125 = icmp ne %struct.ieee80211_supported_band* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %114
  br label %172

127:                                              ; preds = %114
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %157, %127
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %131 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %128
  %135 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %136 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %135, i32 0, i32 2
  %137 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %137, i64 %139
  store %struct.ieee80211_channel* %140, %struct.ieee80211_channel** %13, align 8
  %141 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %142 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %134
  br label %157

148:                                              ; preds = %134
  %149 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %150 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %151 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %150, i32 0, i32 7
  %152 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %152, i64 %155
  store %struct.ieee80211_channel* %149, %struct.ieee80211_channel** %156, align 8
  br label %157

157:                                              ; preds = %148, %147
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %128

160:                                              ; preds = %128
  %161 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %162 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = shl i32 1, %163
  %165 = sub nsw i32 %164, 1
  %166 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %167 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  br label %172

172:                                              ; preds = %160, %126
  %173 = load i32, i32* %11, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %110

175:                                              ; preds = %110
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %175, %98
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %180 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 8
  %181 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %182 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %181, i32 0, i32 7
  %183 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %183, i64 %185
  %187 = bitcast %struct.ieee80211_channel** %186 to i8*
  %188 = bitcast i8* %187 to %struct.TYPE_5__*
  %189 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %190 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %189, i32 0, i32 6
  store %struct.TYPE_5__* %188, %struct.TYPE_5__** %190, align 8
  %191 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %192 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %191, i32 0, i32 2
  store i32 1, i32* %192, align 4
  %193 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %194 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %193, i32 0, i32 6
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %200 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %199, i32 0, i32 1
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %206 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %205, i32 0, i32 1
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @memcpy(i32 %198, i32 %204, i32 %210)
  %212 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %213 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %212, i32 0, i32 1
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %219 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %218, i32 0, i32 6
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  store i32 %217, i32* %222, align 4
  %223 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %224 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %225 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %224, i32 0, i32 5
  store %struct.wireless_dev* %223, %struct.wireless_dev** %225, align 8
  %226 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %227 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %226, i32 0, i32 1
  %228 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %229 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %228, i32 0, i32 4
  store i32* %227, i32** %229, align 8
  %230 = load i32, i32* @jiffies, align 4
  %231 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %232 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 8
  %233 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %234 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %235 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %234, i32 0, i32 0
  store %struct.cfg80211_scan_request* %233, %struct.cfg80211_scan_request** %235, align 8
  %236 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %237 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %238 = call i32 @rdev_scan(%struct.cfg80211_registered_device* %236, %struct.cfg80211_scan_request* %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %254, label %241

241:                                              ; preds = %177
  %242 = load i32, i32* @CFG80211_CONN_SCANNING, align 4
  %243 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %244 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %243, i32 0, i32 1
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  store i32 %242, i32* %246, align 8
  %247 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %248 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %249 = call i32 @nl80211_send_scan_start(%struct.cfg80211_registered_device* %247, %struct.wireless_dev* %248)
  %250 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %251 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @dev_hold(i32 %252)
  br label %259

254:                                              ; preds = %177
  %255 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %256 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %255, i32 0, i32 0
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %256, align 8
  %257 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %258 = call i32 @kfree(%struct.cfg80211_scan_request* %257)
  br label %259

259:                                              ; preds = %254, %241
  %260 = load i32, i32* %7, align 4
  store i32 %260, i32* %2, align 4
  br label %261

261:                                              ; preds = %259, %87, %30
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ASSERT_RDEV_LOCK(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.cfg80211_scan_request* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rdev_scan(%struct.cfg80211_registered_device*, %struct.cfg80211_scan_request*) #1

declare dso_local i32 @nl80211_send_scan_start(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @kfree(%struct.cfg80211_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
