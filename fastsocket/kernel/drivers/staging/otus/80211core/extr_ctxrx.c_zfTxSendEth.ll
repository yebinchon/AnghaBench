; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfTxSendEth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfTxSendEth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.zsFrag = type { i32*, i32*, i32*, i32** }
%struct.zsMicVar = type { i32 }

@ZM_LV_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"zfTxSendEth(), port=\00", align 1
@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@zcUpToAc = common dso_local global i64* null, align 8
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfTxSendEth(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [29 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.zsFrag, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [3 x i32], align 4
  %28 = alloca [3 x i32], align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.zsMicVar*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %35, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @zmw_get_wlan_dev(i32* %38)
  %40 = call i32 (...) @zmw_declare_for_critical_section()
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 65280
  store i32 %42, i32* %33, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @ZM_LV_2, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @zm_msg1_tx(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @zfTxGetIpTosAndFrag(i32* %48, i32* %49, i32* %29, i32* %32)
  %51 = load i32, i32* %33, align 4
  %52 = and i32 %51, 256
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %5
  %55 = load i32, i32* %29, align 4
  %56 = or i32 %55, 16
  store i32 %56, i32* %29, align 4
  br label %57

57:                                               ; preds = %54, %5
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @zmw_tx_buf_readh(i32* %58, i32* %59, i32 0)
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @zmw_tx_buf_readh(i32* %62, i32* %63, i32 2)
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 1
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @zmw_tx_buf_readh(i32* %66, i32* %67, i32 4)
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 2
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @zmw_tx_buf_readh(i32* %70, i32* %71, i32 6)
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @zmw_tx_buf_readh(i32* %74, i32* %75, i32 8)
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 1
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @zmw_tx_buf_readh(i32* %78, i32* %79, i32 10)
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 2
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ZM_MODE_AP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %57
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %31, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %98 = call i32 @zfApFindSta(i32* %96, i32* %97)
  store i32 %98, i32* %25, align 4
  %99 = load i32, i32* %25, align 4
  %100 = icmp ne i32 %99, 65535
  br i1 %100, label %101, label %122

101:                                              ; preds = %87
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i32, i32* %25, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %121 [
    i32 133, label %111
    i32 131, label %111
  ]

111:                                              ; preds = %101, %101
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %25, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %31, align 4
  br label %121

121:                                              ; preds = %101, %111
  br label %122

122:                                              ; preds = %121, %87
  br label %142

123:                                              ; preds = %57
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %141 [
    i32 128, label %128
    i32 130, label %128
    i32 129, label %128
    i32 133, label %133
    i32 131, label %133
  ]

128:                                              ; preds = %123, %123, %123
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %31, align 4
  br label %141

133:                                              ; preds = %123, %123
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 5, i32* %31, align 4
  br label %140

139:                                              ; preds = %133
  store i32 4, i32* %31, align 4
  br label %140

140:                                              ; preds = %139, %138
  br label %141

141:                                              ; preds = %123, %140, %128
  br label %142

142:                                              ; preds = %141, %122
  %143 = load i32*, i32** %6, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %146 = call i32 @zfTxGenWlanSnap(i32* %143, i32* %144, i32* %145, i32* %18)
  store i32 %146, i32* %12, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 131
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  store i32 8, i32* %35, align 4
  br label %153

153:                                              ; preds = %152, %142
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %35, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* %19, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @zfwBufGetSize(i32* %159, i32* %160)
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %20, align 4
  %164 = sub nsw i32 %163, %162
  store i32 %164, i32* %20, align 4
  store i32 0, i32* %16, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ZM_MODE_AP, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %153
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %173 = call i32 @zfApGetStaQosType(i32* %171, i32* %172, i32* %30)
  %174 = load i32, i32* %30, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i32 0, i32* %29, align 4
  br label %177

177:                                              ; preds = %176, %170
  br label %194

178:                                              ; preds = %153
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %178
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  store i32 0, i32* %29, align 4
  br label %191

191:                                              ; preds = %190, %184
  br label %193

192:                                              ; preds = %178
  store i32 0, i32* %29, align 4
  br label %193

193:                                              ; preds = %192, %191
  br label %194

194:                                              ; preds = %193, %177
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @zmw_enter_critical_section(i32* %195)
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i64*, i64** @zcUpToAc, align 8
  %201 = load i32, i32* %29, align 4
  %202 = and i32 %201, 7
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %200, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32, i32* %199, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  %209 = shl i32 %207, 4
  %210 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 %209, i32* %212, align 4
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 @zmw_leave_critical_section(i32* %213)
  %215 = load i32*, i32** %7, align 8
  %216 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %217 = load i32**, i32*** %216, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 0
  store i32* %215, i32** %218, align 8
  %219 = load i32, i32* %9, align 4
  %220 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 %219, i32* %222, align 4
  %223 = load i32, i32* %10, align 4
  %224 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  store i32 %223, i32* %226, align 4
  store i32 1, i32* %21, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds [29 x i32], [29 x i32]* %13, i64 0, i64 0
  %233 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* %8, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %247 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  %248 = load i32, i32* %29, align 4
  %249 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %250 = load i32, i32* %18, align 4
  %251 = call i32 @zfTxGenWlanHeader(i32* %227, i32* %231, i32* %232, i32 %236, i32 %240, i32 %243, i32 %244, i32 %245, i32* %246, i32* %247, i32 %248, i32* %16, i32* %249, i32 %250, i32* null)
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %282

254:                                              ; preds = %194
  %255 = load i32*, i32** %6, align 8
  %256 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %257 = load i32**, i32*** %256, align 8
  %258 = getelementptr inbounds i32*, i32** %257, i64 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds [29 x i32], [29 x i32]* %13, i64 0, i64 0
  %261 = load i32, i32* %18, align 4
  %262 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  %264 = load i32, i32* %29, align 4
  %265 = load i32, i32* %14, align 4
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %267 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %12, align 4
  %270 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = load i64*, i64** @zcUpToAc, align 8
  %275 = load i32, i32* %29, align 4
  %276 = and i32 %275, 7
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i64, i64* %274, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* %31, align 4
  %281 = call i32 @zf80211FrameSend(i32* %255, i32* %259, i32* %260, i32 %261, i32* %262, i32* %263, i32 %264, i32 %265, i32* %266, i32* %267, i32 %268, i32 %269, i32 %273, i64 %279, i32 %280)
  br label %580

282:                                              ; preds = %194
  store i32 0, i32* %37, align 4
  %283 = getelementptr inbounds [29 x i32], [29 x i32]* %13, i64 0, i64 0
  %284 = load i32, i32* %283, align 16
  %285 = load i32, i32* %20, align 4
  %286 = sub nsw i32 %284, %285
  store i32 %286, i32* %36, align 4
  %287 = load i32*, i32** %6, align 8
  %288 = load i32*, i32** %7, align 8
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %290 = load i32, i32* %18, align 4
  %291 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %292 = call i32 @zfTxGenWlanTail(i32* %287, i32* %288, i32* %289, i32 %290, i32* %291)
  store i32 %292, i32* %16, align 4
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* %36, align 4
  %295 = sub nsw i32 %293, %294
  store i32 %295, i32* %19, align 4
  %296 = load i32, i32* %20, align 4
  %297 = load i32, i32* %19, align 4
  %298 = icmp sge i32 %296, %297
  br i1 %298, label %299, label %508

299:                                              ; preds = %282
  store i32 0, i32* %23, align 4
  br label %300

300:                                              ; preds = %492, %299
  %301 = load i32, i32* %20, align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %503

303:                                              ; preds = %300
  %304 = load i32*, i32** %6, align 8
  %305 = load i32, i32* %19, align 4
  %306 = add nsw i32 %305, 32
  %307 = call i32* @zfwBufAllocate(i32* %304, i32 %306)
  %308 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %23, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  store i32* %307, i32** %312, align 8
  %313 = icmp ne i32* %307, null
  br i1 %313, label %314, label %491

314:                                              ; preds = %303
  %315 = load i32, i32* @ZM_INTERNAL_ALLOC_BUF, align 4
  %316 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %23, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 %315, i32* %320, align 4
  %321 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %23, align 4
  %326 = add nsw i32 %324, %325
  %327 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %23, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 %326, i32* %331, align 4
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %19, align 4
  %335 = mul nsw i32 %333, %334
  %336 = add nsw i32 %332, %335
  store i32 %336, i32* %26, align 4
  %337 = load i32, i32* %23, align 4
  %338 = icmp sge i32 %337, 1
  br i1 %338, label %339, label %346

339:                                              ; preds = %314
  %340 = load i32, i32* %26, align 4
  %341 = load i32, i32* %37, align 4
  %342 = load i32, i32* %23, align 4
  %343 = sub nsw i32 %342, 1
  %344 = mul nsw i32 %341, %343
  %345 = add nsw i32 %340, %344
  store i32 %345, i32* %26, align 4
  br label %346

346:                                              ; preds = %339, %314
  %347 = load i32, i32* %20, align 4
  %348 = load i32, i32* %19, align 4
  %349 = load i32, i32* %37, align 4
  %350 = add nsw i32 %348, %349
  %351 = icmp sgt i32 %347, %350
  br i1 %351, label %352, label %444

352:                                              ; preds = %346
  %353 = load i32, i32* %10, align 4
  %354 = or i32 %353, 4
  %355 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %23, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  store i32 %354, i32* %359, align 4
  %360 = load i32, i32* %23, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %413

362:                                              ; preds = %352
  store i32 0, i32* %24, align 4
  br label %363

363:                                              ; preds = %382, %362
  %364 = load i32, i32* %24, align 4
  %365 = load i32, i32* %18, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %385

367:                                              ; preds = %363
  %368 = load i32*, i32** %6, align 8
  %369 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %370 = load i32**, i32*** %369, align 8
  %371 = load i32, i32* %23, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32*, i32** %370, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %24, align 4
  %376 = load i32, i32* %24, align 4
  %377 = ashr i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @zmw_tx_buf_writeh(i32* %368, i32* %374, i32 %375, i32 %380)
  br label %382

382:                                              ; preds = %367
  %383 = load i32, i32* %24, align 4
  %384 = add nsw i32 %383, 2
  store i32 %384, i32* %24, align 4
  br label %363

385:                                              ; preds = %363
  %386 = load i32*, i32** %6, align 8
  %387 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %388 = load i32**, i32*** %387, align 8
  %389 = load i32, i32* %23, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32*, i32** %388, i64 %390
  %392 = load i32*, i32** %391, align 8
  %393 = load i32*, i32** %7, align 8
  %394 = load i32, i32* %18, align 4
  %395 = load i32, i32* %26, align 4
  %396 = load i32, i32* %19, align 4
  %397 = call i32 @zfTxBufferCopy(i32* %386, i32* %392, i32* %393, i32 %394, i32 %395, i32 %396)
  %398 = load i32*, i32** %6, align 8
  %399 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %400 = load i32**, i32*** %399, align 8
  %401 = load i32, i32* %23, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32*, i32** %400, i64 %402
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %18, align 4
  %406 = load i32, i32* %19, align 4
  %407 = add nsw i32 %405, %406
  %408 = call i32 @zfwBufSetSize(i32* %398, i32* %404, i32 %407)
  %409 = load i32, i32* %18, align 4
  store i32 %409, i32* %37, align 4
  %410 = load i32, i32* %19, align 4
  %411 = load i32, i32* %20, align 4
  %412 = sub nsw i32 %411, %410
  store i32 %412, i32* %20, align 4
  br label %443

413:                                              ; preds = %352
  %414 = load i32*, i32** %6, align 8
  %415 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %416 = load i32**, i32*** %415, align 8
  %417 = load i32, i32* %23, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32*, i32** %416, i64 %418
  %420 = load i32*, i32** %419, align 8
  %421 = load i32*, i32** %7, align 8
  %422 = load i32, i32* %26, align 4
  %423 = load i32, i32* %19, align 4
  %424 = load i32, i32* %37, align 4
  %425 = add nsw i32 %423, %424
  %426 = call i32 @zfTxBufferCopy(i32* %414, i32* %420, i32* %421, i32 0, i32 %422, i32 %425)
  %427 = load i32*, i32** %6, align 8
  %428 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %429 = load i32**, i32*** %428, align 8
  %430 = load i32, i32* %23, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32*, i32** %429, i64 %431
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %19, align 4
  %435 = load i32, i32* %37, align 4
  %436 = add nsw i32 %434, %435
  %437 = call i32 @zfwBufSetSize(i32* %427, i32* %433, i32 %436)
  %438 = load i32, i32* %19, align 4
  %439 = load i32, i32* %37, align 4
  %440 = add nsw i32 %438, %439
  %441 = load i32, i32* %20, align 4
  %442 = sub nsw i32 %441, %440
  store i32 %442, i32* %20, align 4
  br label %443

443:                                              ; preds = %413, %385
  br label %488

444:                                              ; preds = %346
  %445 = load i32*, i32** %6, align 8
  %446 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %447 = load i32**, i32*** %446, align 8
  %448 = load i32, i32* %23, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32*, i32** %447, i64 %449
  %451 = load i32*, i32** %450, align 8
  %452 = load i32*, i32** %7, align 8
  %453 = load i32, i32* %26, align 4
  %454 = load i32, i32* %20, align 4
  %455 = call i32 @zfTxBufferCopy(i32* %445, i32* %451, i32* %452, i32 0, i32 %453, i32 %454)
  %456 = load i32, i32* %16, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %470

458:                                              ; preds = %444
  %459 = load i32*, i32** %6, align 8
  %460 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %461 = load i32**, i32*** %460, align 8
  %462 = load i32, i32* %23, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32*, i32** %461, i64 %463
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %467 = load i32, i32* %20, align 4
  %468 = load i32, i32* %16, align 4
  %469 = call i32 @zfCopyToRxBuffer(i32* %459, i32* %465, i32* %466, i32 %467, i32 %468)
  br label %470

470:                                              ; preds = %458, %444
  %471 = load i32*, i32** %6, align 8
  %472 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %473 = load i32**, i32*** %472, align 8
  %474 = load i32, i32* %23, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32*, i32** %473, i64 %475
  %477 = load i32*, i32** %476, align 8
  %478 = load i32, i32* %20, align 4
  %479 = load i32, i32* %16, align 4
  %480 = add nsw i32 %478, %479
  %481 = call i32 @zfwBufSetSize(i32* %471, i32* %477, i32 %480)
  store i32 0, i32* %20, align 4
  %482 = load i32, i32* %10, align 4
  %483 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 2
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %23, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  store i32 %482, i32* %487, align 4
  br label %488

488:                                              ; preds = %470, %443
  %489 = load i32, i32* %23, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %23, align 4
  br label %492

491:                                              ; preds = %303
  br label %503

492:                                              ; preds = %488
  %493 = load i32*, i32** %6, align 8
  %494 = load i32*, i32** %7, align 8
  %495 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %496 = load i32**, i32*** %495, align 8
  %497 = load i32, i32* %23, align 4
  %498 = sub nsw i32 %497, 1
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32*, i32** %496, i64 %499
  %501 = load i32*, i32** %500, align 8
  %502 = call i32 @zfwCopyBufContext(i32* %493, i32* %494, i32* %501)
  br label %300

503:                                              ; preds = %491, %300
  %504 = load i32, i32* %23, align 4
  store i32 %504, i32* %21, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %505 = load i32*, i32** %6, align 8
  %506 = load i32*, i32** %7, align 8
  %507 = call i32 @zfwBufFree(i32* %505, i32* %506, i32 0)
  br label %508

508:                                              ; preds = %503, %282
  store i32 0, i32* %23, align 4
  br label %509

509:                                              ; preds = %576, %508
  %510 = load i32, i32* %23, align 4
  %511 = load i32, i32* %21, align 4
  %512 = icmp slt i32 %510, %511
  br i1 %512, label %513, label %579

513:                                              ; preds = %509
  %514 = load i32*, i32** %6, align 8
  %515 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %516 = load i32**, i32*** %515, align 8
  %517 = load i32, i32* %23, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32*, i32** %516, i64 %518
  %520 = load i32*, i32** %519, align 8
  %521 = getelementptr inbounds [29 x i32], [29 x i32]* %13, i64 0, i64 0
  %522 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 0
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %23, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 2
  %529 = load i32*, i32** %528, align 8
  %530 = load i32, i32* %23, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %529, i64 %531
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* %18, align 4
  %535 = load i32, i32* %16, align 4
  %536 = add nsw i32 %534, %535
  %537 = load i32, i32* %12, align 4
  %538 = load i32, i32* %8, align 4
  %539 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %540 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  %541 = load i32, i32* %29, align 4
  %542 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %543 = load i32, i32* %18, align 4
  %544 = call i32 @zfTxGenWlanHeader(i32* %514, i32* %520, i32* %521, i32 %527, i32 %533, i32 %536, i32 %537, i32 %538, i32* %539, i32* %540, i32 %541, i32* %16, i32* %542, i32 %543, i32* null)
  store i32 %544, i32* %14, align 4
  %545 = load i32*, i32** %6, align 8
  %546 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 3
  %547 = load i32**, i32*** %546, align 8
  %548 = load i32, i32* %23, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32*, i32** %547, i64 %549
  %551 = load i32*, i32** %550, align 8
  %552 = getelementptr inbounds [29 x i32], [29 x i32]* %13, i64 0, i64 0
  %553 = load i32, i32* %18, align 4
  %554 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %555 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  %556 = load i32, i32* %29, align 4
  %557 = load i32, i32* %14, align 4
  %558 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %559 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %560 = load i32, i32* %16, align 4
  %561 = load i32, i32* %12, align 4
  %562 = getelementptr inbounds %struct.zsFrag, %struct.zsFrag* %22, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %23, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32, i32* %563, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = load i64*, i64** @zcUpToAc, align 8
  %569 = load i32, i32* %29, align 4
  %570 = and i32 %569, 7
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i64, i64* %568, i64 %571
  %573 = load i64, i64* %572, align 8
  %574 = load i32, i32* %31, align 4
  %575 = call i32 @zf80211FrameSend(i32* %545, i32* %551, i32* %552, i32 %553, i32* %554, i32* %555, i32 %556, i32 %557, i32* %558, i32* %559, i32 %560, i32 %561, i32 %567, i64 %573, i32 %574)
  br label %576

576:                                              ; preds = %513
  %577 = load i32, i32* %23, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %23, align 4
  br label %509

579:                                              ; preds = %509
  br label %580

580:                                              ; preds = %579, %254
  %581 = load i32, i32* @ZM_SUCCESS, align 4
  ret i32 %581
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_msg1_tx(i32, i8*, i32) #1

declare dso_local i32 @zfTxGetIpTosAndFrag(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @zmw_tx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

declare dso_local i32 @zfTxGenWlanSnap(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfApGetStaQosType(i32*, i32*, i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfTxGenWlanHeader(i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @zf80211FrameSend(i32*, i32*, i32*, i32, i32*, i32*, i32, i32, i32*, i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @zfTxGenWlanTail(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32* @zfwBufAllocate(i32*, i32) #1

declare dso_local i32 @zmw_tx_buf_writeh(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfTxBufferCopy(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i32) #1

declare dso_local i32 @zfCopyToRxBuffer(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfwCopyBufContext(i32*, i32*, i32*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
