; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfPushVtxq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfPushVtxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i32, i64, i64, i64, i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_HAL_STATE_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"HAL is not ready for Tx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"return because 802.11h DFS Disable Tx\00", align 1
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_MODE_PSEUDO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfPushVtxq(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZM_HAL_STATE_INIT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  br label %264

25:                                               ; preds = %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %264

33:                                               ; preds = %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %264

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZM_MODE_AP, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %264

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @zmw_enter_critical_section(i32* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %67

64:                                               ; preds = %56
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @zmw_leave_critical_section(i32* %68)
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %264

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %263
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %96, %74
  %76 = load i32*, i32** %2, align 8
  %77 = call i64 @zfHpGetFreeTxdCount(i32* %76)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i32*, i32** %2, align 8
  %81 = call i32* @zfGetVmmq(i32* %80)
  store i32* %81, i32** %3, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  %84 = load i32*, i32** %2, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @ZM_INTERNAL_ALLOC_BUF, align 4
  %87 = call i32 @zfHpSend(i32* %84, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* %85, i32 0, i32 %86, i32 0, i32 255)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* @ZM_SUCCESS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32*, i32** %2, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @zfwBufFree(i32* %91, i32* %92, i32 0)
  br label %94

94:                                               ; preds = %90, %83
  br label %96

95:                                               ; preds = %79
  br label %97

96:                                               ; preds = %94
  br label %75

97:                                               ; preds = %95, %75
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TRUE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i32*, i32** %2, align 8
  %112 = call i64 @zfStaIsConnected(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110, %97
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i32 0, i32* %116, align 8
  br label %264

117:                                              ; preds = %110, %103
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %143, %117
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %119, 4
  br i1 %120, label %121, label %146

121:                                              ; preds = %118
  %122 = load i32*, i32** %2, align 8
  %123 = call i64 @zfHpGetFreeTxdCount(i32* %122)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %6, align 4
  %125 = icmp sge i32 %124, 3
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load i32*, i32** %2, align 8
  %128 = call i32* @zfGetVtxq(i32* %127, i32 3)
  store i32* %128, i32** %3, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  store i32 1, i32* %5, align 4
  %131 = load i32*, i32** %2, align 8
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %134 = call i32 @zfTxSendEth(i32* %131, i32* %132, i32 0, i32 %133, i32 0)
  %135 = load i32*, i32** %2, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ZM_PERFORMANCE_TX_MPDU(i32* %135, i32 %138)
  br label %140

140:                                              ; preds = %130, %126
  br label %142

141:                                              ; preds = %121
  br label %146

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %118

146:                                              ; preds = %141, %118
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %197, %146
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %148, 3
  br i1 %149, label %150, label %200

150:                                              ; preds = %147
  %151 = load i32*, i32** %2, align 8
  %152 = call i64 @zfHpGetFreeTxdCount(i32* %151)
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %6, align 4
  %154 = load i32*, i32** %2, align 8
  %155 = call i32 @zfHpGetMaxTxdCount(i32* %154)
  %156 = mul nsw i32 %155, 1
  %157 = sdiv i32 %156, 4
  %158 = icmp sge i32 %153, %157
  br i1 %158, label %159, label %195

159:                                              ; preds = %150
  %160 = load i32*, i32** %2, align 8
  %161 = call i32* @zfGetVtxq(i32* %160, i32 2)
  store i32* %161, i32** %3, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  store i32 1, i32* %5, align 4
  %164 = load i32*, i32** %2, align 8
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %167 = call i32 @zfTxSendEth(i32* %164, i32* %165, i32 0, i32 %166, i32 0)
  %168 = load i32*, i32** %2, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ZM_PERFORMANCE_TX_MPDU(i32* %168, i32 %171)
  br label %173

173:                                              ; preds = %163, %159
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %194

179:                                              ; preds = %173
  %180 = load i32*, i32** %2, align 8
  %181 = call i32* @zfGetVtxq(i32* %180, i32 0)
  store i32* %181, i32** %3, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %193

183:                                              ; preds = %179
  store i32 1, i32* %5, align 4
  %184 = load i32*, i32** %2, align 8
  %185 = load i32*, i32** %3, align 8
  %186 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %187 = call i32 @zfTxSendEth(i32* %184, i32* %185, i32 0, i32 %186, i32 0)
  %188 = load i32*, i32** %2, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @ZM_PERFORMANCE_TX_MPDU(i32* %188, i32 %191)
  br label %193

193:                                              ; preds = %183, %179
  br label %194

194:                                              ; preds = %193, %173
  br label %196

195:                                              ; preds = %150
  br label %200

196:                                              ; preds = %194
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %147

200:                                              ; preds = %195, %147
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %230, %200
  %202 = load i32, i32* %4, align 4
  %203 = icmp slt i32 %202, 2
  br i1 %203, label %204, label %233

204:                                              ; preds = %201
  %205 = load i32*, i32** %2, align 8
  %206 = call i64 @zfHpGetFreeTxdCount(i32* %205)
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %6, align 4
  %208 = load i32*, i32** %2, align 8
  %209 = call i32 @zfHpGetMaxTxdCount(i32* %208)
  %210 = mul nsw i32 %209, 2
  %211 = sdiv i32 %210, 4
  %212 = icmp sge i32 %207, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %204
  %214 = load i32*, i32** %2, align 8
  %215 = call i32* @zfGetVtxq(i32* %214, i32 0)
  store i32* %215, i32** %3, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  store i32 1, i32* %5, align 4
  %218 = load i32*, i32** %2, align 8
  %219 = load i32*, i32** %3, align 8
  %220 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %221 = call i32 @zfTxSendEth(i32* %218, i32* %219, i32 0, i32 %220, i32 0)
  %222 = load i32*, i32** %2, align 8
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ZM_PERFORMANCE_TX_MPDU(i32* %222, i32 %225)
  br label %227

227:                                              ; preds = %217, %213
  br label %229

228:                                              ; preds = %204
  br label %233

229:                                              ; preds = %227
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %4, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %4, align 4
  br label %201

233:                                              ; preds = %228, %201
  %234 = load i32*, i32** %2, align 8
  %235 = call i64 @zfHpGetFreeTxdCount(i32* %234)
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %6, align 4
  %237 = load i32*, i32** %2, align 8
  %238 = call i32 @zfHpGetMaxTxdCount(i32* %237)
  %239 = mul nsw i32 %238, 3
  %240 = sdiv i32 %239, 4
  %241 = icmp sge i32 %236, %240
  br i1 %241, label %242, label %257

242:                                              ; preds = %233
  %243 = load i32*, i32** %2, align 8
  %244 = call i32* @zfGetVtxq(i32* %243, i32 1)
  store i32* %244, i32** %3, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %256

246:                                              ; preds = %242
  store i32 1, i32* %5, align 4
  %247 = load i32*, i32** %2, align 8
  %248 = load i32*, i32** %3, align 8
  %249 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %250 = call i32 @zfTxSendEth(i32* %247, i32* %248, i32 0, i32 %249, i32 0)
  %251 = load i32*, i32** %2, align 8
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ZM_PERFORMANCE_TX_MPDU(i32* %251, i32 %254)
  br label %256

256:                                              ; preds = %246, %242
  br label %257

257:                                              ; preds = %256, %233
  %258 = load i32, i32* %5, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  store i32 0, i32* %262, align 8
  br label %264

263:                                              ; preds = %257
  br label %74

264:                                              ; preds = %260, %114, %72, %52, %39, %31, %24
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i64 @zfHpGetFreeTxdCount(i32*) #1

declare dso_local i32* @zfGetVmmq(i32*) #1

declare dso_local i32 @zfHpSend(i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

declare dso_local i64 @zfStaIsConnected(i32*) #1

declare dso_local i32* @zfGetVtxq(i32*, i32) #1

declare dso_local i32 @zfTxSendEth(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ZM_PERFORMANCE_TX_MPDU(i32*, i32) #1

declare dso_local i32 @zfHpGetMaxTxdCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
