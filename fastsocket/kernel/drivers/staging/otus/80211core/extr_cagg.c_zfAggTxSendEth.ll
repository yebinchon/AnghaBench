; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxSendEth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxSendEth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i64*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.aggControl = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.zsFrag = type { i32*, i64*, i32**, i64* }

@ZM_LV_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"zfTxSendEth(), port=\00", align 1
@wd = common dso_local global %struct.TYPE_17__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@zcUpToAc = common dso_local global i64* null, align 8
@ZM_AGG_FIRST_MPDU = common dso_local global i64 0, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"start seq=\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"up not 0, up=\00", align 1
@ZM_SUCCESS = common dso_local global i64 0, align 8
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i64 0, align 8
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i64 0, align 8
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@addrTblSize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfAggTxSendEth(i32* %0, i32* %1, i64 %2, i64 %3, i64 %4, %struct.aggControl* %5, %struct.TYPE_16__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.aggControl*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [29 x i64], align 16
  %18 = alloca i64, align 8
  %19 = alloca [4 x i64], align 16
  %20 = alloca i64, align 8
  %21 = alloca [4 x i64], align 16
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.zsFrag, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca [3 x i64], align 16
  %30 = alloca [3 x i64], align 16
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.aggControl* %5, %struct.aggControl** %13, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %14, align 8
  store i64 0, i64* %33, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @zmw_get_wlan_dev(i32* %35)
  %37 = call i32 (...) @zmw_declare_for_critical_section()
  %38 = load i32, i32* @ZM_LV_2, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @zm_msg1_tx(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @zfTxGetIpTosAndFrag(i32* %41, i32* %42, i64* %31, i64* %34)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @zmw_tx_buf_readh(i32* %44, i32* %45, i32 0)
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  store i64 %46, i64* %47, align 16
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @zmw_tx_buf_readh(i32* %48, i32* %49, i32 2)
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 1
  store i64 %50, i64* %51, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @zmw_tx_buf_readh(i32* %52, i32* %53, i32 4)
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 2
  store i64 %54, i64* %55, align 16
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @zmw_tx_buf_readh(i32* %56, i32* %57, i32 6)
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 0
  store i64 %58, i64* %59, align 16
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @zmw_tx_buf_readh(i32* %60, i32* %61, i32 8)
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 1
  store i64 %62, i64* %63, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i64 @zmw_tx_buf_readh(i32* %64, i32* %65, i32 10)
  %67 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 2
  store i64 %66, i64* %67, align 16
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ZM_MODE_AP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %7
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %33, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  %83 = call i64 @zfApFindSta(i32* %81, i64* %82)
  store i64 %83, i64* %28, align 8
  %84 = load i64, i64* %28, align 8
  %85 = icmp ne i64 %84, 65535
  br i1 %85, label %86, label %105

86:                                               ; preds = %73
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i64, i64* %28, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %104 [
    i32 133, label %95
    i32 131, label %95
  ]

95:                                               ; preds = %86, %86
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = load i64, i64* %28, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %33, align 8
  br label %104

104:                                              ; preds = %86, %95
  br label %105

105:                                              ; preds = %104, %73
  br label %125

106:                                              ; preds = %7
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %124 [
    i32 128, label %111
    i32 130, label %111
    i32 129, label %111
    i32 133, label %116
    i32 131, label %116
  ]

111:                                              ; preds = %106, %106, %106
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %33, align 8
  br label %124

116:                                              ; preds = %106, %106
  %117 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  %118 = load i64, i64* %117, align 16
  %119 = and i64 %118, 1
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i64 5, i64* %33, align 8
  br label %123

122:                                              ; preds = %116
  store i64 4, i64* %33, align 8
  br label %123

123:                                              ; preds = %122, %121
  br label %124

124:                                              ; preds = %106, %123, %111
  br label %125

125:                                              ; preds = %124, %105
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %129 = call i64 @zfTxGenWlanSnap(i32* %126, i32* %127, i64* %128, i64* %22)
  store i64 %129, i64* %16, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %23, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i64 @zfwBufGetSize(i32* %133, i32* %134)
  store i64 %135, i64* %24, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %24, align 8
  %138 = sub i64 %137, %136
  store i64 %138, i64* %24, align 8
  %139 = load i64, i64* %24, align 8
  %140 = load i64, i64* %23, align 8
  %141 = icmp ugt i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %125
  %143 = load i32*, i32** %8, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %146 = load i64, i64* %22, align 8
  %147 = getelementptr inbounds [4 x i64], [4 x i64]* %19, i64 0, i64 0
  %148 = call i64 @zfTxGenWlanTail(i32* %143, i32* %144, i64* %145, i64 %146, i64* %147)
  store i64 %148, i64* %20, align 8
  br label %150

149:                                              ; preds = %125
  store i64 0, i64* %20, align 8
  br label %150

150:                                              ; preds = %149, %142
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @ZM_MODE_AP, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  %159 = call i32 @zfApGetStaQosType(i32* %157, i64* %158, i64* %32)
  %160 = load i64, i64* %32, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  store i64 0, i64* %31, align 8
  br label %163

163:                                              ; preds = %162, %156
  br label %180

164:                                              ; preds = %150
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i64 0, i64* %31, align 8
  br label %177

177:                                              ; preds = %176, %170
  br label %179

178:                                              ; preds = %164
  store i64 0, i64* %31, align 8
  br label %179

179:                                              ; preds = %178, %177
  br label %180

180:                                              ; preds = %179, %163
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @zmw_enter_critical_section(i32* %181)
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = load i64*, i64** @zcUpToAc, align 8
  %187 = load i64, i64* %31, align 8
  %188 = and i64 %187, 7
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i32, i32* %185, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = shl i32 %192, 4
  %195 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %194, i32* %197, align 4
  %198 = load %struct.aggControl*, %struct.aggControl** %13, align 8
  %199 = icmp ne %struct.aggControl* %198, null
  br i1 %199, label %200, label %219

200:                                              ; preds = %180
  %201 = load i64, i64* @ZM_AGG_FIRST_MPDU, align 8
  %202 = load %struct.aggControl*, %struct.aggControl** %13, align 8
  %203 = getelementptr inbounds %struct.aggControl, %struct.aggControl* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %201, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* @ZM_LV_0, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 4
  %218 = call i32 @zm_msg1_agg(i32 %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %206, %200, %180
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @zmw_leave_critical_section(i32* %220)
  %222 = load i32*, i32** %9, align 8
  %223 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 2
  %224 = load i32**, i32*** %223, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 0
  store i32* %222, i32** %225, align 8
  %226 = load i64, i64* %11, align 8
  %227 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 1
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 0
  store i64 %226, i64* %229, align 8
  %230 = load i64, i64* %12, align 8
  %231 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 3
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  store i64 %230, i64* %233, align 8
  store i64 1, i64* %25, align 8
  store i64 0, i64* %27, align 8
  br label %234

234:                                              ; preds = %411, %219
  %235 = load i64, i64* %27, align 8
  %236 = load i64, i64* %25, align 8
  %237 = icmp ult i64 %235, %236
  br i1 %237, label %238, label %414

238:                                              ; preds = %234
  %239 = load i64, i64* %31, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i64, i64* %31, align 8
  %243 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load i32*, i32** %8, align 8
  %246 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 2
  %247 = load i32**, i32*** %246, align 8
  %248 = load i64, i64* %27, align 8
  %249 = getelementptr inbounds i32*, i32** %247, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds [29 x i64], [29 x i64]* %17, i64 0, i64 0
  %252 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* %27, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 3
  %258 = load i64*, i64** %257, align 8
  %259 = load i64, i64* %27, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* %22, align 8
  %263 = load i64, i64* %20, align 8
  %264 = add i64 %262, %263
  %265 = load i64, i64* %16, align 8
  %266 = load i64, i64* %10, align 8
  %267 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  %268 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 0, i64 0
  %269 = load i64, i64* %31, align 8
  %270 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %271 = load i64, i64* %22, align 8
  %272 = load %struct.aggControl*, %struct.aggControl** %13, align 8
  %273 = call i64 @zfTxGenWlanHeader(i32* %245, i32* %250, i64* %251, i32 %256, i64 %261, i64 %264, i64 %265, i64 %266, i64* %267, i64* %268, i64 %269, i64* %20, i64* %270, i64 %271, %struct.aggControl* %272)
  store i64 %273, i64* %18, align 8
  %274 = load i32*, i32** %8, align 8
  %275 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 2
  %276 = load i32**, i32*** %275, align 8
  %277 = load i64, i64* %27, align 8
  %278 = getelementptr inbounds i32*, i32** %276, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = call i64 @zfwBufGetSize(i32* %274, i32* %279)
  store i64 %280, i64* %23, align 8
  %281 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  %282 = load i64, i64* %281, align 16
  %283 = and i64 %282, 1
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %301

285:                                              ; preds = %244
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  %291 = load i64, i64* %23, align 8
  %292 = load i64, i64* %22, align 8
  %293 = add i64 %291, %292
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 4
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = add i64 %298, %293
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %296, align 4
  br label %339

301:                                              ; preds = %244
  %302 = getelementptr inbounds [3 x i64], [3 x i64]* %29, i64 0, i64 0
  %303 = load i64, i64* %302, align 16
  %304 = and i64 %303, 1
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %322

306:                                              ; preds = %301
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 4
  %312 = load i64, i64* %23, align 8
  %313 = load i64, i64* %22, align 8
  %314 = add i64 %312, %313
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = add i64 %319, %314
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %317, align 4
  br label %338

322:                                              ; preds = %301
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  %328 = load i64, i64* %23, align 8
  %329 = load i64, i64* %22, align 8
  %330 = add i64 %328, %329
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = add i64 %335, %330
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %333, align 4
  br label %338

338:                                              ; preds = %322, %306
  br label %339

339:                                              ; preds = %338, %285
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** @wd, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %342, align 8
  %345 = load i32*, i32** %8, align 8
  %346 = getelementptr inbounds [29 x i64], [29 x i64]* %17, i64 0, i64 0
  %347 = load i64, i64* %18, align 8
  %348 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %349 = load i64, i64* %22, align 8
  %350 = getelementptr inbounds [4 x i64], [4 x i64]* %19, i64 0, i64 0
  %351 = load i64, i64* %20, align 8
  %352 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 2
  %353 = load i32**, i32*** %352, align 8
  %354 = load i64, i64* %27, align 8
  %355 = getelementptr inbounds i32*, i32** %353, i64 %354
  %356 = load i32*, i32** %355, align 8
  %357 = load i64, i64* %16, align 8
  %358 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 1
  %359 = load i64*, i64** %358, align 8
  %360 = load i64, i64* %27, align 8
  %361 = getelementptr inbounds i64, i64* %359, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = load i64*, i64** @zcUpToAc, align 8
  %364 = load i64, i64* %31, align 8
  %365 = and i64 %364, 7
  %366 = getelementptr inbounds i64, i64* %363, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %33, align 8
  %369 = call i64 @zfHpSend(i32* %345, i64* %346, i64 %347, i64* %348, i64 %349, i64* %350, i64 %351, i32* %356, i64 %357, i64 %362, i64 %367, i64 %368)
  store i64 %369, i64* %15, align 8
  %370 = load i64, i64* @ZM_SUCCESS, align 8
  %371 = icmp ne i64 %369, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %339
  br label %374

373:                                              ; preds = %339
  br label %411

374:                                              ; preds = %372
  %375 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 1
  %376 = load i64*, i64** %375, align 8
  %377 = load i64, i64* %27, align 8
  %378 = getelementptr inbounds i64, i64* %376, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @ZM_EXTERNAL_ALLOC_BUF, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %391

382:                                              ; preds = %374
  %383 = load i32*, i32** %8, align 8
  %384 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 2
  %385 = load i32**, i32*** %384, align 8
  %386 = load i64, i64* %27, align 8
  %387 = getelementptr inbounds i32*, i32** %385, i64 %386
  %388 = load i32*, i32** %387, align 8
  %389 = load i64, i64* %15, align 8
  %390 = call i32 @zfwBufFree(i32* %383, i32* %388, i64 %389)
  br label %410

391:                                              ; preds = %374
  %392 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 1
  %393 = load i64*, i64** %392, align 8
  %394 = load i64, i64* %27, align 8
  %395 = getelementptr inbounds i64, i64* %393, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @ZM_INTERNAL_ALLOC_BUF, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %407

399:                                              ; preds = %391
  %400 = load i32*, i32** %8, align 8
  %401 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %26, i32 0, i32 2
  %402 = load i32**, i32*** %401, align 8
  %403 = load i64, i64* %27, align 8
  %404 = getelementptr inbounds i32*, i32** %402, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = call i32 @zfwBufFree(i32* %400, i32* %405, i64 0)
  br label %409

407:                                              ; preds = %391
  %408 = call i32 @zm_assert(i32 0)
  br label %409

409:                                              ; preds = %407, %399
  br label %410

410:                                              ; preds = %409, %382
  br label %411

411:                                              ; preds = %410, %373
  %412 = load i64, i64* %27, align 8
  %413 = add i64 %412, 1
  store i64 %413, i64* %27, align 8
  br label %234

414:                                              ; preds = %234
  %415 = load i64, i64* @ZM_SUCCESS, align 8
  ret i64 %415
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_msg1_tx(i32, i8*, i64) #1

declare dso_local i32 @zfTxGetIpTosAndFrag(i32*, i32*, i64*, i64*) #1

declare dso_local i64 @zmw_tx_buf_readh(i32*, i32*, i32) #1

declare dso_local i64 @zfApFindSta(i32*, i64*) #1

declare dso_local i64 @zfTxGenWlanSnap(i32*, i32*, i64*, i64*) #1

declare dso_local i64 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i64 @zfTxGenWlanTail(i32*, i32*, i64*, i64, i64*) #1

declare dso_local i32 @zfApGetStaQosType(i32*, i64*, i64*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zm_msg1_agg(i32, i8*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i64) #1

declare dso_local i64 @zfTxGenWlanHeader(i32*, i32*, i64*, i32, i64, i64, i64, i64, i64*, i64*, i64, i64*, i64*, i64, %struct.aggControl*) #1

declare dso_local i64 @zfHpSend(i32*, i64*, i64, i64*, i64, i64*, i64, i32*, i64, i64, i64, i64) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i64) #1

declare dso_local i32 @zm_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
