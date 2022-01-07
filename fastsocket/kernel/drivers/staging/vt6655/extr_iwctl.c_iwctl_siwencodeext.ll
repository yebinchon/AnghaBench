; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_iwctl.c_iwctl_siwencodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_iwctl.c_iwctl_siwencodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.iw_encode_ext = type { i32, i32, i64, i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.viawget_wpa_param = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i32*, i32* }

@IW_ENCODE_SEQ_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SIOCSIWENCODEEXT...... \0A\00", align 1
@GFP_KERNEL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@WPA_ALG_NONE = common dso_local global i32 0, align 4
@WPA_ALG_WEP = common dso_local global i32 0, align 4
@WPA_ALG_TKIP = common dso_local global i32 0, align 4
@WPA_ALG_CCMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown alg = %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_SET_TX_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_RX_SEQ_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"SIOCSIWENCODEEXT:Enable WPA WEXT SUPPORT!!!!!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ii = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwctl_siwencodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca %struct.viawget_wpa_param*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [64 x i32], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [64 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call i32 @netdev_priv(%struct.net_device* %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %10, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = bitcast i8* %31 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %32, %struct.iw_encode_ext** %11, align 8
  store %struct.viawget_wpa_param* null, %struct.viawget_wpa_param** %12, align 8
  store i32 0, i32* %16, align 4
  %33 = load i32, i32* @IW_ENCODE_SEQ_MAX_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %17, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %25, align 4
  %37 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 56, i64* %23, align 8
  %38 = load i64, i64* %23, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* @GFP_KERNEL, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32* @kmalloc(i32 %39, i32 %41)
  store i32* %42, i32** %22, align 8
  %43 = load i32*, i32** %22, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %287

48:                                               ; preds = %4
  %49 = load i32*, i32** %22, align 8
  %50 = load i64, i64* %23, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32* %49, i32 0, i32 %51)
  %53 = load i32*, i32** %22, align 8
  %54 = bitcast i32* %53 to %struct.viawget_wpa_param*
  store %struct.viawget_wpa_param* %54, %struct.viawget_wpa_param** %12, align 8
  %55 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %56 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %66 [
    i32 130, label %58
    i32 128, label %60
    i32 129, label %62
    i32 131, label %64
  ]

58:                                               ; preds = %48
  %59 = load i32, i32* @WPA_ALG_NONE, align 4
  store i32 %59, i32* %13, align 4
  br label %73

60:                                               ; preds = %48
  %61 = load i32, i32* @WPA_ALG_WEP, align 4
  store i32 %61, i32* %13, align 4
  br label %73

62:                                               ; preds = %48
  %63 = load i32, i32* @WPA_ALG_TKIP, align 4
  store i32 %63, i32* %13, align 4
  br label %73

64:                                               ; preds = %48
  %65 = load i32, i32* @WPA_ALG_CCMP, align 4
  store i32 %65, i32* %13, align 4
  br label %73

66:                                               ; preds = %48
  %67 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %68 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %25, align 4
  br label %283

73:                                               ; preds = %64, %62, %60, %58
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %75 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %76 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i32 @memcpy(i32* %74, i32* %78, i32 %79)
  %81 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %82 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %85 = and i32 %83, %84
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  %87 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %88 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  store i32 1, i32* %16, align 4
  br label %94

94:                                               ; preds = %93, %73
  %95 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %96 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IW_ENCODE_EXT_RX_SEQ_VALID, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load i32, i32* @IW_ENCODE_SEQ_MAX_SIZE, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %20, align 8
  %104 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %105 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %20, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(i32* %36, i32* %106, i32 %108)
  br label %110

110:                                              ; preds = %101, %94
  %111 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %112 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %117 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %21, align 8
  %119 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 0
  %120 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %121 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i64, i64* %21, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(i32* %119, i32* %123, i32 %125)
  br label %127

127:                                              ; preds = %115, %110
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %129 = call i32 @memset(i32* %128, i32 0, i32 64)
  %130 = load i64, i64* %21, align 8
  %131 = icmp ugt i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %127
  %133 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %134 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 0
  %135 = load i64, i64* %21, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memcpy(i32* %133, i32* %134, i32 %136)
  %138 = load i64, i64* %21, align 8
  %139 = icmp eq i64 %138, 32
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 16
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 24
  %143 = call i32 @memcpy(i32* %141, i32* %142, i32 8)
  %144 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 24
  %145 = getelementptr inbounds [64 x i32], [64 x i32]* %19, i64 0, i64 16
  %146 = call i32 @memcpy(i32* %144, i32* %145, i32 8)
  br label %147

147:                                              ; preds = %140, %132
  br label %148

148:                                              ; preds = %147, %127
  %149 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %150 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %153 = load i32, i32* @ETH_ALEN, align 4
  %154 = call i32 @memcpy(i32* %151, i32* %152, i32 %153)
  %155 = load i32, i32* %13, align 4
  %156 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %157 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i32 %155, i32* %159, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %162 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  store i32 %160, i32* %164, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %167 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  store i32 %165, i32* %169, align 8
  %170 = load i64, i64* %21, align 8
  %171 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %172 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 3
  store i64 %170, i64* %174, align 8
  %175 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 0
  %176 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %177 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 6
  store i32* %175, i32** %179, align 8
  %180 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %181 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 5
  store i32* %36, i32** %183, align 8
  %184 = load i64, i64* %20, align 8
  %185 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %186 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 4
  store i64 %184, i64* %188, align 8
  %189 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %190 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @WPA_ALG_NONE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %260

196:                                              ; preds = %148
  %197 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %198 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %203, %196
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %225

213:                                              ; preds = %208
  %214 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %215 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %225

220:                                              ; preds = %213
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %220, %213, %208
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %230, label %242

230:                                              ; preds = %225
  %231 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %232 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %242

237:                                              ; preds = %230
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %237, %230, %225
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp eq i32 %245, 3
  br i1 %246, label %247, label %259

247:                                              ; preds = %242
  %248 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %249 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 3
  br i1 %253, label %254, label %259

254:                                              ; preds = %247
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %254, %247, %242
  br label %260

260:                                              ; preds = %259, %148
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 4
  br i1 %264, label %265, label %272

265:                                              ; preds = %260
  %266 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  store i32 0, i32* %268, align 4
  %269 = load i32, i32* @TRUE, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %265, %260
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = call i32 @spin_lock_irq(i32* %274)
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %277 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %278 = load i32, i32* @TRUE, align 4
  %279 = call i32 @wpa_set_keys(%struct.TYPE_9__* %276, %struct.viawget_wpa_param* %277, i32 %278)
  store i32 %279, i32* %25, align 4
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 1
  %282 = call i32 @spin_unlock_irq(i32* %281)
  br label %283

283:                                              ; preds = %272, %66
  %284 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %12, align 8
  %285 = call i32 @kfree(%struct.viawget_wpa_param* %284)
  %286 = load i32, i32* %25, align 4
  store i32 %286, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %287

287:                                              ; preds = %283, %45
  %288 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %288)
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PRINT_K(i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wpa_set_keys(%struct.TYPE_9__*, %struct.viawget_wpa_param*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.viawget_wpa_param*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
