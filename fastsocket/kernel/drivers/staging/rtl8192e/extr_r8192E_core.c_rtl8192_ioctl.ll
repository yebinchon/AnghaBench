; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8192E_core.c_rtl8192_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.r8192_priv = type { i32, %struct.ieee80211_device* }
%struct.ieee80211_device = type { i8*, i32, i8*, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.iwreq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.iw_point }
%struct.iw_point = type { i32, i64 }
%struct.ieee_param = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

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
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @rtl8192_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca %struct.iwreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_device*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca [6 x i32], align 16
  %13 = alloca %struct.iw_point*, align 8
  %14 = alloca %struct.ieee_param*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i64 @ieee80211_priv(%struct.net_device* %15)
  %17 = inttoptr i64 %16 to %struct.r8192_priv*
  store %struct.r8192_priv* %17, %struct.r8192_priv** %7, align 8
  %18 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %19 = bitcast %struct.ifreq* %18 to %struct.iwreq*
  store %struct.iwreq* %19, %struct.iwreq** %8, align 8
  store i32 -1, i32* %9, align 4
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %21, align 8
  store %struct.ieee80211_device* %22, %struct.ieee80211_device** %10, align 8
  %23 = bitcast [6 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([6 x i32]* @__const.rtl8192_ioctl.broadcast_addr to i8*), i64 24, i1 false)
  %24 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %25 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.iw_point* %26, %struct.iw_point** %13, align 8
  store %struct.ieee_param* null, %struct.ieee_param** %14, align 8
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 0
  %29 = call i32 @down(i32* %28)
  %30 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 24
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %37 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %328

43:                                               ; preds = %35
  %44 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %45 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i64 @kmalloc(i32 %46, i32 %47)
  %49 = inttoptr i64 %48 to %struct.ieee_param*
  store %struct.ieee_param* %49, %struct.ieee_param** %14, align 8
  %50 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %51 = icmp eq %struct.ieee_param* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %328

55:                                               ; preds = %43
  %56 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %57 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %58 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.iw_point*, %struct.iw_point** %13, align 8
  %61 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @copy_from_user(%struct.ieee_param* %56, i64 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %67 = call i32 @kfree(%struct.ieee_param* %66)
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %328

70:                                               ; preds = %55
  %71 = load i32, i32* %6, align 4
  switch i32 %71, label %322 [
    i32 128, label %72
  ]

72:                                               ; preds = %70
  %73 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %74 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IEEE_CMD_SET_ENCRYPTION, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %314

78:                                               ; preds = %72
  %79 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %80 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %220

85:                                               ; preds = %78
  %86 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %87 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strcmp(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i8*, i8** @KEY_TYPE_CCMP, align 8
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %96 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  br label %147

97:                                               ; preds = %85
  %98 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %99 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strcmp(i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i8*, i8** @KEY_TYPE_TKIP, align 8
  %107 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %108 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %146

109:                                              ; preds = %97
  %110 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %111 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @strcmp(i32 %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %109
  %118 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %119 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 13
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i8*, i8** @KEY_TYPE_WEP104, align 8
  %126 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %127 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  br label %140

128:                                              ; preds = %117
  %129 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %130 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 5
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i8*, i8** @KEY_TYPE_WEP40, align 8
  %137 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %138 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %135, %128
  br label %140

140:                                              ; preds = %139, %124
  br label %145

141:                                              ; preds = %109
  %142 = load i8*, i8** @KEY_TYPE_NA, align 8
  %143 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %144 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %141, %140
  br label %146

146:                                              ; preds = %145, %105
  br label %147

147:                                              ; preds = %146, %93
  %148 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %149 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %203

152:                                              ; preds = %147
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %154 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %155 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @memcpy(i32* %153, i32 %158, i32 16)
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = call i32 @EnableHWSecurityConfig8192(%struct.net_device* %160)
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %164 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %169 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %172 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to i32*
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %176 = call i32 @setKey(%struct.net_device* %162, i32 4, i32 %167, i8* %170, i32* %174, i32 0, i32* %175)
  %177 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %178 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 2
  br i1 %180, label %181, label %202

181:                                              ; preds = %152
  %182 = load %struct.net_device*, %struct.net_device** %4, align 8
  %183 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %184 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %189 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %194 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %197 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i32*
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %201 = call i32 @setKey(%struct.net_device* %182, i32 %187, i32 %192, i8* %195, i32* %199, i32 0, i32* %200)
  br label %202

202:                                              ; preds = %181, %152
  br label %203

203:                                              ; preds = %202, %147
  %204 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %205 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i8*, i8** @KEY_TYPE_CCMP, align 8
  %208 = icmp eq i8* %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %203
  %210 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %211 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %210, i32 0, i32 3
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = load %struct.net_device*, %struct.net_device** %4, align 8
  %218 = call i32 @write_nic_byte(%struct.net_device* %217, i32 371, i32 1)
  br label %219

219:                                              ; preds = %216, %209, %203
  br label %313

220:                                              ; preds = %78
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %222 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %223 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @memcpy(i32* %221, i32 %226, i32 16)
  %228 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %229 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @strcmp(i32 %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %220
  %236 = load i8*, i8** @KEY_TYPE_CCMP, align 8
  %237 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %238 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %237, i32 0, i32 2
  store i8* %236, i8** %238, align 8
  br label %289

239:                                              ; preds = %220
  %240 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %241 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @strcmp(i32 %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %239
  %248 = load i8*, i8** @KEY_TYPE_TKIP, align 8
  %249 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %250 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %249, i32 0, i32 2
  store i8* %248, i8** %250, align 8
  br label %288

251:                                              ; preds = %239
  %252 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %253 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @strcmp(i32 %256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %283

259:                                              ; preds = %251
  %260 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %261 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 13
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = load i8*, i8** @KEY_TYPE_WEP104, align 8
  %268 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %269 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %268, i32 0, i32 2
  store i8* %267, i8** %269, align 8
  br label %282

270:                                              ; preds = %259
  %271 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %272 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 5
  br i1 %276, label %277, label %281

277:                                              ; preds = %270
  %278 = load i8*, i8** @KEY_TYPE_WEP40, align 8
  %279 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %280 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %279, i32 0, i32 2
  store i8* %278, i8** %280, align 8
  br label %281

281:                                              ; preds = %277, %270
  br label %282

282:                                              ; preds = %281, %266
  br label %287

283:                                              ; preds = %251
  %284 = load i8*, i8** @KEY_TYPE_NA, align 8
  %285 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %286 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %285, i32 0, i32 2
  store i8* %284, i8** %286, align 8
  br label %287

287:                                              ; preds = %283, %282
  br label %288

288:                                              ; preds = %287, %247
  br label %289

289:                                              ; preds = %288, %235
  %290 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %291 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %290, i32 0, i32 2
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %312

294:                                              ; preds = %289
  %295 = load %struct.net_device*, %struct.net_device** %4, align 8
  %296 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %297 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %302 = getelementptr inbounds %struct.ieee_param, %struct.ieee_param* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.ieee80211_device*, %struct.ieee80211_device** %10, align 8
  %307 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %306, i32 0, i32 2
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %311 = call i32 @setKey(%struct.net_device* %295, i32 %300, i32 %305, i8* %308, i32* %309, i32 0, i32* %310)
  br label %312

312:                                              ; preds = %294, %289
  br label %313

313:                                              ; preds = %312, %219
  br label %314

314:                                              ; preds = %313, %72
  %315 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %316 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %315, i32 0, i32 1
  %317 = load %struct.ieee80211_device*, %struct.ieee80211_device** %316, align 8
  %318 = load %struct.iwreq*, %struct.iwreq** %8, align 8
  %319 = getelementptr inbounds %struct.iwreq, %struct.iwreq* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = call i32 @ieee80211_wpa_supplicant_ioctl(%struct.ieee80211_device* %317, %struct.iw_point* %320)
  store i32 %321, i32* %9, align 4
  br label %325

322:                                              ; preds = %70
  %323 = load i32, i32* @EOPNOTSUPP, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %9, align 4
  br label %325

325:                                              ; preds = %322, %314
  %326 = load %struct.ieee_param*, %struct.ieee_param** %14, align 8
  %327 = call i32 @kfree(%struct.ieee_param* %326)
  br label %328

328:                                              ; preds = %325, %65, %52, %40
  %329 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %330 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %329, i32 0, i32 0
  %331 = call i32 @up(i32* %330)
  %332 = load i32, i32* %9, align 4
  ret i32 %332
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @down(i32*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i64 @copy_from_user(%struct.ieee_param*, i64, i32) #1

declare dso_local i32 @kfree(%struct.ieee_param*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @EnableHWSecurityConfig8192(%struct.net_device*) #1

declare dso_local i32 @setKey(%struct.net_device*, i32, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ieee80211_wpa_supplicant_ioctl(%struct.ieee80211_device*, %struct.iw_point*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
