; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i8*, i64, i8*, i32 }
%struct.iwreq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.iw_point }
%struct.iw_point = type { i32, i64 }
%struct.ieee_param = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@__const.rtl8192_ioctl.broadcast_addr = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IEEE_CMD_SET_ENCRYPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@KEY_TYPE_CCMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"TKIP\00", align 1
@KEY_TYPE_TKIP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@KEY_TYPE_WEP104 = common dso_local global i8* null, align 8
@KEY_TYPE_WEP40 = common dso_local global i8* null, align 8
@KEY_TYPE_NA = common dso_local global i8* null, align 8
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8192_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca %struct.iwreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_device*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca [6 x i32], align 16
  %13 = alloca [6 x i32], align 16
  %14 = alloca %struct.iw_point*, align 8
  %15 = alloca %struct.ieee_param*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i64 @ieee80211_priv(%struct.net_device* %16)
  %18 = inttoptr i64 %17 to %struct.r8192_priv*
  store %struct.r8192_priv* %18, %struct.r8192_priv** %7, align 8
  %19 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %20 = bitcast %struct.ifreq* %19 to %struct.iwreq*
  store %struct.iwreq* %20, %struct.iwreq** %8, align 8
  store i32 -1, i32* %9, align 4
  %21 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %22 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %21, i32 0, i32 1
  %23 = load %struct.ieee80211_device*, %struct.ieee80211_device** %22, align 8
  store %struct.ieee80211_device* %23, %struct.ieee80211_device** %10, align 8
  %24 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([6 x i32]* @__const.rtl8192_ioctl.broadcast_addr to i8*), i64 24, i1 false)
  %25 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 24, i1 false)
  %26 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %27 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.iw_point* %28, %struct.iw_point** %14, align 8
  store %struct.ieee_param* null, %struct.ieee_param** %15, align 8
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 0
  %31 = call i32 @down(i32* %30)
  %32 = load %struct.iw_point*, %struct.iw_point** %14, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 24
  br i1 %36, label %42, label %37

37:                                               ; preds = %3
  %38 = load %struct.iw_point*, %struct.iw_point** %14, align 8
  %39 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37, %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %326

45:                                               ; preds = %37
  %46 = load %struct.iw_point*, %struct.iw_point** %14, align 8
  %47 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i64 @kmalloc(i32 %48, i32 %49)
  %51 = inttoptr i64 %50 to %struct.ieee_param*
  store %struct.ieee_param* %51, %struct.ieee_param** %15, align 8
  %52 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %53 = icmp eq %struct.ieee_param* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %326

57:                                               ; preds = %45
  %58 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %59 = load %struct.iw_point*, %struct.iw_point** %14, align 8
  %60 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.iw_point*, %struct.iw_point** %14, align 8
  %63 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @copy_from_user(%struct.ieee_param* %58, i64 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %69 = call i32 @kfree(%struct.ieee_param* %68)
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %326

72:                                               ; preds = %57
  %73 = load i32, i32* %6, align 4
  switch i32 %73, label %320 [
    i32 128, label %74
  ]

74:                                               ; preds = %72
  %75 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %76 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE_CMD_SET_ENCRYPTION, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %312

80:                                               ; preds = %74
  %81 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %82 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %218

87:                                               ; preds = %80
  %88 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %89 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcmp(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i8*, i8** @KEY_TYPE_CCMP, align 8
  %97 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %98 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %149

99:                                               ; preds = %87
  %100 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %101 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @strcmp(i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i8*, i8** @KEY_TYPE_TKIP, align 8
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %110 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %148

111:                                              ; preds = %99
  %112 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %113 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @strcmp(i32 %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %111
  %120 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %121 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 13
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i8*, i8** @KEY_TYPE_WEP104, align 8
  %128 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %129 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  br label %142

130:                                              ; preds = %119
  %131 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %132 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 5
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i8*, i8** @KEY_TYPE_WEP40, align 8
  %139 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %140 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %137, %130
  br label %142

142:                                              ; preds = %141, %126
  br label %147

143:                                              ; preds = %111
  %144 = load i8*, i8** @KEY_TYPE_NA, align 8
  %145 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %146 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %143, %142
  br label %148

148:                                              ; preds = %147, %107
  br label %149

149:                                              ; preds = %148, %95
  %150 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %151 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %217

154:                                              ; preds = %149
  %155 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %156 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %159 = call i32 @memcmp(i64 %157, i32* %158, i32 6)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @IW_MODE_ADHOC, align 4
  %163 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %164 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %161, %154
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %167 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %168 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @memcpy(i32* %166, i32 %171, i32 16)
  %173 = load %struct.net_device*, %struct.net_device** %4, align 8
  %174 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %173)
  %175 = load %struct.net_device*, %struct.net_device** %4, align 8
  %176 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %177 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %182 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %185 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i32*
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %189 = call i32 @setKey(%struct.net_device* %175, i32 4, i32 %180, i8* %183, i32* %187, i32 0, i32* %188)
  %190 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %191 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @IW_MODE_ADHOC, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %216

195:                                              ; preds = %165
  %196 = load %struct.net_device*, %struct.net_device** %4, align 8
  %197 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %198 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %203 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %208 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %211 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i32*
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %215 = call i32 @setKey(%struct.net_device* %196, i32 %201, i32 %206, i8* %209, i32* %213, i32 0, i32* %214)
  br label %216

216:                                              ; preds = %195, %165
  br label %217

217:                                              ; preds = %216, %149
  br label %311

218:                                              ; preds = %80
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %220 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %221 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @memcpy(i32* %219, i32 %224, i32 16)
  %226 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %227 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @strcmp(i32 %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %218
  %234 = load i8*, i8** @KEY_TYPE_CCMP, align 8
  %235 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %236 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  br label %287

237:                                              ; preds = %218
  %238 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %239 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @strcmp(i32 %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %237
  %246 = load i8*, i8** @KEY_TYPE_TKIP, align 8
  %247 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %248 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %247, i32 0, i32 0
  store i8* %246, i8** %248, align 8
  br label %286

249:                                              ; preds = %237
  %250 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %251 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @strcmp(i32 %254, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %281

257:                                              ; preds = %249
  %258 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %259 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 13
  br i1 %263, label %264, label %268

264:                                              ; preds = %257
  %265 = load i8*, i8** @KEY_TYPE_WEP104, align 8
  %266 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %267 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %266, i32 0, i32 0
  store i8* %265, i8** %267, align 8
  br label %280

268:                                              ; preds = %257
  %269 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %270 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 5
  br i1 %274, label %275, label %279

275:                                              ; preds = %268
  %276 = load i8*, i8** @KEY_TYPE_WEP40, align 8
  %277 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %278 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %277, i32 0, i32 0
  store i8* %276, i8** %278, align 8
  br label %279

279:                                              ; preds = %275, %268
  br label %280

280:                                              ; preds = %279, %264
  br label %285

281:                                              ; preds = %249
  %282 = load i8*, i8** @KEY_TYPE_NA, align 8
  %283 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %284 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %281, %280
  br label %286

286:                                              ; preds = %285, %245
  br label %287

287:                                              ; preds = %286, %233
  %288 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %289 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %310

292:                                              ; preds = %287
  %293 = load %struct.net_device*, %struct.net_device** %4, align 8
  %294 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %295 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %300 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %305 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %308 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %309 = call i32 @setKey(%struct.net_device* %293, i32 %298, i32 %303, i8* %306, i32* %307, i32 0, i32* %308)
  br label %310

310:                                              ; preds = %292, %287
  br label %311

311:                                              ; preds = %310, %217
  br label %312

312:                                              ; preds = %311, %74
  %313 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %314 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %313, i32 0, i32 1
  %315 = load %struct.ieee80211_device*, %struct.ieee80211_device** %314, align 8
  %316 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %317 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  %319 = call i32 @ieee80211_wpa_supplicant_ioctl(%struct.ieee80211_device* %315, %struct.iw_point* %318)
  store i32 %319, i32* %9, align 4
  br label %323

320:                                              ; preds = %72
  %321 = load i32, i32* @EOPNOTSUPP, align 4
  %322 = sub nsw i32 0, %321
  store i32 %322, i32* %9, align 4
  br label %323

323:                                              ; preds = %320, %312
  %324 = load %struct.ieee_param*, %struct.ieee_param** %15, align 8
  %325 = call i32 @kfree(%struct.ieee_param* %324)
  store %struct.ieee_param* null, %struct.ieee_param** %15, align 8
  br label %326

326:                                              ; preds = %323, %67, %54, %42
  %327 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %328 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %327, i32 0, i32 0
  %329 = call i32 @up(i32* %328)
  %330 = load i32, i32* %9, align 4
  ret i32 %330
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(%struct.ieee_param*, i64, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @memcmp(i64, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @EnableHWSecurityConfig8192(%struct.net_device*) #1

declare dso_local i32 @setKey(%struct.net_device*, i32, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @ieee80211_wpa_supplicant_ioctl(%struct.ieee80211_device*, %struct.iw_point*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
