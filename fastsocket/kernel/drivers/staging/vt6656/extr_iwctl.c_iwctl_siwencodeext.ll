; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_iwctl.c_iwctl_siwencodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_iwctl.c_iwctl_siwencodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i64, i8*, i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.iw_encode_ext = type { i32, i32, i64, i32*, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.viawget_wpa_param = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, i32*, i32* }

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
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"SIOCSIWENCODEEXT:Enable WPA WEXT SUPPORT!!!!!\0A\00", align 1
@ii = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwctl_siwencodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.iw_encode_ext*, align 8
  %13 = alloca %struct.viawget_wpa_param*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [6 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [64 x i32], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca [64 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call i32 @netdev_priv(%struct.net_device* %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %10, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 7
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %11, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = bitcast i8* %34 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %35, %struct.iw_encode_ext** %12, align 8
  store %struct.viawget_wpa_param* null, %struct.viawget_wpa_param** %13, align 8
  store i32 0, i32* %17, align 4
  %36 = load i32, i32* @IW_ENCODE_SEQ_MAX_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %18, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %19, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i32 0, i32* %26, align 4
  %40 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 56, i64* %24, align 8
  %41 = load i64, i64* %24, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* @GFP_KERNEL, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32* @kmalloc(i32 %42, i32 %44)
  store i32* %45, i32** %23, align 8
  %46 = load i32*, i32** %23, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %4
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %321

51:                                               ; preds = %4
  %52 = load i32*, i32** %23, align 8
  %53 = load i64, i64* %24, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(i32* %52, i32 0, i32 %54)
  %56 = load i32*, i32** %23, align 8
  %57 = bitcast i32* %56 to %struct.viawget_wpa_param*
  store %struct.viawget_wpa_param* %57, %struct.viawget_wpa_param** %13, align 8
  %58 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %59 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %69 [
    i32 130, label %61
    i32 128, label %63
    i32 129, label %65
    i32 131, label %67
  ]

61:                                               ; preds = %51
  %62 = load i32, i32* @WPA_ALG_NONE, align 4
  store i32 %62, i32* %14, align 4
  br label %76

63:                                               ; preds = %51
  %64 = load i32, i32* @WPA_ALG_WEP, align 4
  store i32 %64, i32* %14, align 4
  br label %76

65:                                               ; preds = %51
  %66 = load i32, i32* @WPA_ALG_TKIP, align 4
  store i32 %66, i32* %14, align 4
  br label %76

67:                                               ; preds = %51
  %68 = load i32, i32* @WPA_ALG_CCMP, align 4
  store i32 %68, i32* %14, align 4
  br label %76

69:                                               ; preds = %51
  %70 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %71 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %26, align 4
  br label %317

76:                                               ; preds = %67, %65, %63, %61
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %78 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %79 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i32* %77, i32* %81, i32 %82)
  %84 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %85 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %88 = and i32 %86, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  %90 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %91 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IW_ENCODE_EXT_SET_TX_KEY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %76
  store i32 1, i32* %17, align 4
  br label %97

97:                                               ; preds = %96, %76
  %98 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %99 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IW_ENCODE_EXT_RX_SEQ_VALID, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %97
  %105 = load i32, i32* @IW_ENCODE_SEQ_MAX_SIZE, align 4
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %21, align 8
  %107 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %108 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %21, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memcpy(i32* %39, i32* %109, i32 %111)
  br label %113

113:                                              ; preds = %104, %97
  %114 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %115 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  %119 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %120 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %22, align 8
  %122 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %123 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %124 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i64, i64* %22, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memcpy(i32* %122, i32* %126, i32 %128)
  br label %130

130:                                              ; preds = %118, %113
  %131 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %132 = call i32 @memset(i32* %131, i32 0, i32 64)
  %133 = load i64, i64* %22, align 8
  %134 = icmp ugt i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %137 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %138 = load i64, i64* %22, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memcpy(i32* %136, i32* %137, i32 %139)
  %141 = load i64, i64* %22, align 8
  %142 = icmp eq i64 %141, 32
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 16
  %145 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 24
  %146 = call i32 @memcpy(i32* %144, i32* %145, i32 8)
  %147 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 24
  %148 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 16
  %149 = call i32 @memcpy(i32* %147, i32* %148, i32 8)
  br label %150

150:                                              ; preds = %143, %135
  br label %151

151:                                              ; preds = %150, %130
  %152 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %153 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %156 = load i32, i32* @ETH_ALEN, align 4
  %157 = call i32 @memcpy(i32* %154, i32* %155, i32 %156)
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %160 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 8
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %165 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %170 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  store i32 %168, i32* %172, align 8
  %173 = load i64, i64* %22, align 8
  %174 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %175 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  store i64 %173, i64* %177, align 8
  %178 = getelementptr inbounds [64 x i32], [64 x i32]* %25, i64 0, i64 0
  %179 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %180 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 6
  store i32* %178, i32** %182, align 8
  %183 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %184 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 5
  store i32* %39, i32** %186, align 8
  %187 = load i64, i64* %21, align 8
  %188 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %189 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 4
  store i64 %187, i64* %191, align 8
  %192 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %193 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @WPA_ALG_NONE, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %274

199:                                              ; preds = %151
  %200 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %201 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %199
  %207 = load i64, i64* @TRUE, align 8
  %208 = inttoptr i64 %207 to i8*
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 6
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %206, %199
  %212 = load i64, i64* @TRUE, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 6
  store i8* %213, i8** %215, align 8
  %216 = icmp ne i8* %213, null
  br i1 %216, label %217, label %232

217:                                              ; preds = %211
  %218 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %219 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %232

224:                                              ; preds = %217
  %225 = load i8*, i8** @FALSE, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 6
  store i8* %225, i8** %227, align 8
  %228 = load i64, i64* @TRUE, align 8
  %229 = inttoptr i64 %228 to i8*
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 5
  store i8* %229, i8** %231, align 8
  br label %232

232:                                              ; preds = %224, %217, %211
  %233 = load i64, i64* @TRUE, align 8
  %234 = inttoptr i64 %233 to i8*
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 5
  store i8* %234, i8** %236, align 8
  %237 = icmp ne i8* %234, null
  br i1 %237, label %238, label %253

238:                                              ; preds = %232
  %239 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %240 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 2
  br i1 %244, label %245, label %253

245:                                              ; preds = %238
  %246 = load i8*, i8** @FALSE, align 8
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 5
  store i8* %246, i8** %248, align 8
  %249 = load i64, i64* @TRUE, align 8
  %250 = inttoptr i64 %249 to i8*
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 4
  store i8* %250, i8** %252, align 8
  br label %253

253:                                              ; preds = %245, %238, %232
  %254 = load i64, i64* @TRUE, align 8
  %255 = inttoptr i64 %254 to i8*
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 4
  store i8* %255, i8** %257, align 8
  %258 = icmp ne i8* %255, null
  br i1 %258, label %259, label %273

259:                                              ; preds = %253
  %260 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %261 = getelementptr inbounds %struct.viawget_wpa_param, %struct.viawget_wpa_param* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 3
  br i1 %265, label %266, label %273

266:                                              ; preds = %259
  %267 = load i8*, i8** @FALSE, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 4
  store i8* %267, i8** %269, align 8
  %270 = load i64, i64* @TRUE, align 8
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %266, %259, %253
  br label %274

274:                                              ; preds = %273, %151
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @TRUE, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %306

280:                                              ; preds = %274
  %281 = call i32 (i8*, ...) @PRINT_K(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %282 = load i8*, i8** @FALSE, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 6
  store i8* %282, i8** %284, align 8
  %285 = load i8*, i8** @FALSE, align 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 5
  store i8* %285, i8** %287, align 8
  %288 = load i8*, i8** @FALSE, align 8
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 4
  store i8* %288, i8** %290, align 8
  %291 = load i8*, i8** @FALSE, align 8
  %292 = ptrtoint i8* %291 to i64
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  %295 = load i64, i64* @TRUE, align 8
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 3
  store i64 %295, i64* %297, align 8
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @memset(i32* %300, i32 255, i32 6)
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 2
  %305 = call i32 @KeyvInitTable(%struct.TYPE_12__* %302, i32* %304)
  br label %306

306:                                              ; preds = %280, %274
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 1
  %309 = call i32 @spin_lock_irq(i32* %308)
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %311 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %312 = load i64, i64* @TRUE, align 8
  %313 = call i32 @wpa_set_keys(%struct.TYPE_12__* %310, %struct.viawget_wpa_param* %311, i64 %312)
  store i32 %313, i32* %26, align 4
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = call i32 @spin_unlock_irq(i32* %315)
  br label %317

317:                                              ; preds = %306, %69
  %318 = load %struct.viawget_wpa_param*, %struct.viawget_wpa_param** %13, align 8
  %319 = call i32 @kfree(%struct.viawget_wpa_param* %318)
  %320 = load i32, i32* %26, align 4
  store i32 %320, i32* %5, align 4
  store i32 1, i32* %27, align 4
  br label %321

321:                                              ; preds = %317, %48
  %322 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %322)
  %323 = load i32, i32* %5, align 4
  ret i32 %323
}

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PRINT_K(i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @KeyvInitTable(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wpa_set_keys(%struct.TYPE_12__*, %struct.viawget_wpa_param*, i64) #1

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
