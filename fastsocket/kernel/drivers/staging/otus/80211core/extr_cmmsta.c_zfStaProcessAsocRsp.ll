; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessAsocRsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaProcessAsocRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, %struct.TYPE_9__, i32 (i32*, i32, i32)*, i64 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i64, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.zsWlanAssoFrameHeader = type { i64, i32 }

@wd = common dso_local global %struct.TYPE_10__* null, align 8
@ZM_STA_CONN_STATE_ASSOCIATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"ZM_STA_STATE_CONNECTED\00", align 1
@ZM_STA_WME_ENABLE_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"WME enable\00", align 1
@ZM_STA_UAPSD_ENABLE_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"UAPSD enable\00", align 1
@ZM_CACHED_FRAMEBODY_SIZE = common dso_local global i64 0, align 8
@HTCAP_SupChannelWidthSet = common dso_local global i32 0, align 4
@ZM_SW_TKIP_ENCRY_EN = common dso_local global i32 0, align 4
@ZM_SW_WEP_ENCRY_EN = common dso_local global i32 0, align 4
@ZM_EVENT_TIMEOUT_ADDBA = common dso_local global i32 0, align 4
@ExtHtCap_RIFSMode = common dso_local global i32 0, align 4
@ZM_STA_STATE_CONNECTED = common dso_local global i32 0, align 4
@ZM_HP_CAP_11N_ONE_TX_STREAM = common dso_local global i64 0, align 8
@ZM_STATUS_MEDIA_CONNECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"association failed, status = \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ZM_STA_STATE_DISCONNECT\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ZM_STATUS_MEDIA_DISCONNECT_ASOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaProcessAsocRsp(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.zsWlanAssoFrameHeader*, align 8
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @zfStaIsConnecting(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %373

16:                                               ; preds = %2
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %18 = bitcast i32* %17 to %struct.zsWlanAssoFrameHeader*
  store %struct.zsWlanAssoFrameHeader* %18, %struct.zsWlanAssoFrameHeader** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %22 = call i32 @zfCopyFromRxBuffer(i32* %19, i32* %20, i32* %21, i32 0, i32 16)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZM_STA_CONN_STATE_ASSOCIATE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %373

29:                                               ; preds = %16
  %30 = load %struct.zsWlanAssoFrameHeader*, %struct.zsWlanAssoFrameHeader** %5, align 8
  %31 = getelementptr inbounds %struct.zsWlanAssoFrameHeader, %struct.zsWlanAssoFrameHeader* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %355

34:                                               ; preds = %29
  %35 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ZM_STA_WME_ENABLE_BIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %94

53:                                               ; preds = %45
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @zfFindWifiElement(i32* %54, i32* %55, i32 2, i32 1)
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %56, 65535
  br i1 %57, label %58, label %93

58:                                               ; preds = %53
  %59 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ZM_STA_UAPSD_ENABLE_BIT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %58
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 8
  %75 = sext i32 %74 to i64
  %76 = call i32 @zmw_rx_buf_readb(i32* %71, i32* %72, i64 %75)
  %77 = and i32 %76, 128
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 19
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 20
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %70
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i32*, i32** %3, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @zfStaUpdateWmeParameter(i32* %90, i32* %91)
  br label %93

93:                                               ; preds = %89, %53
  br label %94

94:                                               ; preds = %93, %45
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i64 @zfwBufGetSize(i32* %95, i32* %96)
  %98 = sub nsw i64 %97, 24
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  store i64 %98, i64* %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ZM_CACHED_FRAMEBODY_SIZE, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load i64, i64* @ZM_CACHED_FRAMEBODY_SIZE, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  store i64 %109, i64* %112, align 8
  br label %113

113:                                              ; preds = %108, %94
  store i64 0, i64* %8, align 8
  br label %114

114:                                              ; preds = %133, %113
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %115, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %114
  %122 = load i32*, i32** %3, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = load i64, i64* %8, align 8
  %125 = add nsw i64 %124, 24
  %126 = call i32 @zmw_rx_buf_readb(i32* %122, i32* %123, i64 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %126, i32* %132, align 4
  br label %133

133:                                              ; preds = %121
  %134 = load i64, i64* %8, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %8, align 8
  br label %114

136:                                              ; preds = %114
  %137 = load i32*, i32** %3, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @zfStaStoreAsocRspIe(i32* %137, i32* %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %136
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 18
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @HTCAP_SupChannelWidthSet, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %145
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 6
  store i32 1, i32* %163, align 8
  br label %168

164:                                              ; preds = %155, %145, %136
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 6
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %164, %160
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %205

174:                                              ; preds = %168
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 6
  store i64 0, i64* %176, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ZM_SW_TKIP_ENCRY_EN, align 4
  %182 = and i32 %180, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %174
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @ZM_SW_WEP_ENCRY_EN, align 4
  %190 = and i32 %188, %189
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %184
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  store i32 1, i32* %194, align 8
  %195 = load i32*, i32** %3, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 12
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @zfAggSendAddbaRequest(i32* %195, i32 %199, i32 0, i32 0)
  %201 = load i32*, i32** %3, align 8
  %202 = load i32, i32* @ZM_EVENT_TIMEOUT_ADDBA, align 4
  %203 = call i32 @zfTimerSchedule(i32* %201, i32 %202, i32 100)
  br label %204

204:                                              ; preds = %192, %184, %174
  br label %205

205:                                              ; preds = %204, %168
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 18
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @ExtHtCap_RIFSMode, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 8
  store i32 1, i32* %218, align 8
  br label %219

219:                                              ; preds = %215, %205
  %220 = load %struct.zsWlanAssoFrameHeader*, %struct.zsWlanAssoFrameHeader** %5, align 8
  %221 = getelementptr inbounds %struct.zsWlanAssoFrameHeader, %struct.zsWlanAssoFrameHeader* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, 16383
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 9
  store i32 %223, i32* %226, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 17
  store i64 0, i64* %229, align 8
  %230 = load i32*, i32** %3, align 8
  %231 = load i32*, i32** %4, align 8
  %232 = call i32 @zfStaSetOppositeInfoFromRxBuf(i32* %230, i32* %231)
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 10
  store i32 16, i32* %235, align 8
  %236 = load i32*, i32** %3, align 8
  %237 = load i32, i32* @ZM_STA_STATE_CONNECTED, align 4
  %238 = call i32 @zfChangeAdapterState(i32* %236, i32 %237)
  %239 = load i32*, i32** %3, align 8
  %240 = call i32 @zfHpGetTransmitPower(i32* %239)
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 16
  store i32 %240, i32* %243, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 5
  %246 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %245, align 8
  %247 = icmp ne i32 (i32*, i32, i32)* %246, null
  br i1 %247, label %248, label %345

248:                                              ; preds = %219
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %317

254:                                              ; preds = %248
  %255 = load i32*, i32** %3, align 8
  %256 = call i64 @zfHpCapability(i32* %255)
  %257 = load i64, i64* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 8
  %258 = and i64 %256, %257
  store i64 %258, i64* %9, align 8
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %302

264:                                              ; preds = %254
  %265 = load i64, i64* %9, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %284

267:                                              ; preds = %264
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 15
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %267
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 2
  store i32 150000, i32* %275, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 3
  store i32 300000, i32* %277, align 8
  br label %283

278:                                              ; preds = %267
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 2
  store i32 135000, i32* %280, align 4
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 3
  store i32 270000, i32* %282, align 8
  br label %283

283:                                              ; preds = %278, %273
  br label %301

284:                                              ; preds = %264
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 15
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %284
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 2
  store i32 300000, i32* %292, align 4
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 3
  store i32 300000, i32* %294, align 8
  br label %300

295:                                              ; preds = %284
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 2
  store i32 270000, i32* %297, align 4
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 3
  store i32 270000, i32* %299, align 8
  br label %300

300:                                              ; preds = %295, %290
  br label %301

301:                                              ; preds = %300, %283
  br label %316

302:                                              ; preds = %254
  %303 = load i64, i64* %9, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 2
  store i32 650000, i32* %307, align 4
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 3
  store i32 130000, i32* %309, align 8
  br label %315

310:                                              ; preds = %302
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 2
  store i32 130000, i32* %312, align 4
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 3
  store i32 130000, i32* %314, align 8
  br label %315

315:                                              ; preds = %310, %305
  br label %316

316:                                              ; preds = %315, %301
  br label %334

317:                                              ; preds = %248
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 11
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %317
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 2
  store i32 11000, i32* %325, align 4
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 3
  store i32 11000, i32* %327, align 8
  br label %333

328:                                              ; preds = %317
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 2
  store i32 54000, i32* %330, align 4
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 3
  store i32 54000, i32* %332, align 8
  br label %333

333:                                              ; preds = %328, %323
  br label %334

334:                                              ; preds = %333, %316
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 5
  %337 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %336, align 8
  %338 = load i32*, i32** %3, align 8
  %339 = load i32, i32* @ZM_STATUS_MEDIA_CONNECT, align 4
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 12
  %343 = load i32, i32* %342, align 8
  %344 = call i32 %337(i32* %338, i32 %339, i32 %343)
  br label %345

345:                                              ; preds = %334, %219
  %346 = load i32, i32* @TRUE, align 4
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 13
  store i32 %346, i32* %349, align 4
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 14
  store i64 0, i64* %352, align 8
  %353 = load i32*, i32** %3, align 8
  %354 = call i32 @zfPowerSavingMgrConnectNotify(i32* %353)
  br label %372

355:                                              ; preds = %29
  %356 = load %struct.zsWlanAssoFrameHeader*, %struct.zsWlanAssoFrameHeader** %5, align 8
  %357 = getelementptr inbounds %struct.zsWlanAssoFrameHeader, %struct.zsWlanAssoFrameHeader* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %358)
  %360 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %361 = load i32, i32* @FALSE, align 4
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 4
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 13
  store i32 %361, i32* %364, align 4
  %365 = load i32*, i32** %3, align 8
  %366 = load i32, i32* @ZM_STATUS_MEDIA_DISCONNECT_ASOC_FAILED, align 4
  %367 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %368 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 12
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @zfStaConnectFail(i32* %365, i32 %366, i32 %370, i32 3)
  br label %372

372:                                              ; preds = %355, %345
  br label %373

373:                                              ; preds = %15, %372, %16
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfStaIsConnecting(i32*) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfFindWifiElement(i32*, i32*, i32, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i64) #1

declare dso_local i32 @zfStaUpdateWmeParameter(i32*, i32*) #1

declare dso_local i64 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfStaStoreAsocRspIe(i32*, i32*) #1

declare dso_local i32 @zfAggSendAddbaRequest(i32*, i32, i32, i32) #1

declare dso_local i32 @zfTimerSchedule(i32*, i32, i32) #1

declare dso_local i32 @zfStaSetOppositeInfoFromRxBuf(i32*, i32*) #1

declare dso_local i32 @zfChangeAdapterState(i32*, i32) #1

declare dso_local i32 @zfHpGetTransmitPower(i32*) #1

declare dso_local i64 @zfHpCapability(i32*) #1

declare dso_local i32 @zfPowerSavingMgrConnectNotify(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i64) #1

declare dso_local i32 @zfStaConnectFail(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
