; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_chn_common_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_chn_common_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8, i8, i16)*, %struct.TYPE_5__, %struct.TYPE_4__*, i32 (i8, i8, i8, i16)*, i32 (i8, i8, i8)* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i8, i16*, i16 }

@max_synthdev = common dso_local global i32 0, align 4
@synth_devs = common dso_local global %struct.TYPE_6__** null, align 8
@synth_open_mask = common dso_local global i32 0, align 4
@seq_mode = common dso_local global i32 0, align 4
@SEQ_2 = common dso_local global i32 0, align 4
@num_synths = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @seq_chn_common_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_chn_common_event(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %3, align 1
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %4, align 1
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %5, align 1
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %6, align 1
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 6
  %27 = bitcast i8* %26 to i16*
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %7, align 2
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, i32* @max_synthdev, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %1
  br label %396

41:                                               ; preds = %33
  %42 = load i32, i32* @synth_open_mask, align 4
  %43 = load i8, i8* %3, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 1, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %396

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %51 = load i8, i8* %3, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %396

57:                                               ; preds = %49
  %58 = load i8, i8* %4, align 1
  %59 = zext i8 %58 to i32
  switch i32 %59, label %395 [
    i32 129, label %60
    i32 130, label %107
    i32 128, label %299
  ]

60:                                               ; preds = %57
  %61 = load i32, i32* @seq_mode, align 4
  %62 = load i32, i32* @SEQ_2, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = load i8, i8* %6, align 1
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %67 = load i8, i8* %3, align 1
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i8, i8* %5, align 1
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8 %65, i8* %76, align 8
  %77 = load i8, i8* %3, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* @num_synths, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %64
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %83 = load i8, i8* %3, align 1
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i32 (i8, i8, i8)*, i32 (i8, i8, i8)** %87, align 8
  %89 = load i8, i8* %3, align 1
  %90 = load i8, i8* %5, align 1
  %91 = load i8, i8* %6, align 1
  %92 = call i32 %88(i8 zeroext %89, i8 zeroext %90, i8 zeroext %91)
  br label %93

93:                                               ; preds = %81, %64
  br label %106

94:                                               ; preds = %60
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %96 = load i8, i8* %3, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %95, i64 %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i32 (i8, i8, i8)*, i32 (i8, i8, i8)** %100, align 8
  %102 = load i8, i8* %3, align 1
  %103 = load i8, i8* %5, align 1
  %104 = load i8, i8* %6, align 1
  %105 = call i32 %101(i8 zeroext %102, i8 zeroext %103, i8 zeroext %104)
  br label %106

106:                                              ; preds = %94, %93
  br label %396

107:                                              ; preds = %57
  %108 = load i32, i32* @seq_mode, align 4
  %109 = load i32, i32* @SEQ_2, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %285

111:                                              ; preds = %107
  %112 = load i8, i8* %5, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp sgt i32 %113, 15
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i8, i8* %6, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp sgt i32 %117, 127
  br i1 %118, label %119, label %120

119:                                              ; preds = %115, %111
  br label %396

120:                                              ; preds = %115
  %121 = load i16, i16* %7, align 2
  %122 = zext i16 %121 to i32
  %123 = and i32 %122, 127
  %124 = trunc i32 %123 to i16
  %125 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %126 = load i8, i8* %3, align 1
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %125, i64 %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i8, i8* %5, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i16*, i16** %135, align 8
  %137 = load i8, i8* %6, align 1
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds i16, i16* %136, i64 %138
  store i16 %124, i16* %139, align 2
  %140 = load i8, i8* %6, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %141, 32
  br i1 %142, label %143, label %161

143:                                              ; preds = %120
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %145 = load i8, i8* %3, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i8, i8* %5, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i16*, i16** %154, align 8
  %156 = load i8, i8* %6, align 1
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 %157, 32
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i16, i16* %155, i64 %159
  store i16 0, i16* %160, align 2
  br label %161

161:                                              ; preds = %143, %120
  %162 = load i8, i8* %3, align 1
  %163 = zext i8 %162 to i32
  %164 = load i32, i32* @num_synths, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %271

166:                                              ; preds = %161
  %167 = load i16, i16* %7, align 2
  %168 = zext i16 %167 to i32
  %169 = and i32 %168, 127
  store i32 %169, i32* %8, align 4
  %170 = load i8, i8* %6, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp slt i32 %171, 64
  br i1 %172, label %173, label %220

173:                                              ; preds = %166
  %174 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %175 = load i8, i8* %3, align 1
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %174, i64 %176
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i8, i8* %5, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i16*, i16** %184, align 8
  %186 = load i8, i8* %6, align 1
  %187 = zext i8 %186 to i32
  %188 = and i32 %187, -33
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i16, i16* %185, i64 %189
  %191 = load i16, i16* %190, align 2
  %192 = zext i16 %191 to i32
  %193 = and i32 %192, 127
  %194 = shl i32 %193, 7
  %195 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %196 = load i8, i8* %3, align 1
  %197 = zext i8 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %195, i64 %197
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i8, i8* %5, align 1
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i16*, i16** %205, align 8
  %207 = load i8, i8* %6, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %208, 32
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i16, i16* %206, i64 %210
  %212 = load i16, i16* %211, align 2
  %213 = zext i16 %212 to i32
  %214 = and i32 %213, 127
  %215 = or i32 %194, %214
  store i32 %215, i32* %8, align 4
  %216 = load i8, i8* %6, align 1
  %217 = zext i8 %216 to i32
  %218 = and i32 %217, -33
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %6, align 1
  br label %220

220:                                              ; preds = %173, %166
  %221 = load i8, i8* %5, align 1
  %222 = zext i8 %221 to i32
  %223 = shl i32 %222, 8
  store i32 %223, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %267, %220
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %227 = load i8, i8* %3, align 1
  %228 = zext i8 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %226, i64 %228
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %225, %233
  br i1 %234, label %235, label %270

235:                                              ; preds = %224
  %236 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %237 = load i8, i8* %3, align 1
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %236, i64 %238
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, 65280
  %249 = load i32, i32* %10, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %266

251:                                              ; preds = %235
  %252 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %253 = load i8, i8* %3, align 1
  %254 = zext i8 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %252, i64 %254
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 3
  %258 = load i32 (i8, i8, i8, i16)*, i32 (i8, i8, i8, i16)** %257, align 8
  %259 = load i8, i8* %3, align 1
  %260 = load i32, i32* %9, align 4
  %261 = trunc i32 %260 to i8
  %262 = load i8, i8* %6, align 1
  %263 = load i32, i32* %8, align 4
  %264 = trunc i32 %263 to i16
  %265 = call i32 %258(i8 zeroext %259, i8 zeroext %261, i8 zeroext %262, i16 zeroext %264)
  br label %266

266:                                              ; preds = %251, %235
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %9, align 4
  br label %224

270:                                              ; preds = %224
  br label %284

271:                                              ; preds = %161
  %272 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %273 = load i8, i8* %3, align 1
  %274 = zext i8 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %272, i64 %274
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  %278 = load i32 (i8, i8, i8, i16)*, i32 (i8, i8, i8, i16)** %277, align 8
  %279 = load i8, i8* %3, align 1
  %280 = load i8, i8* %5, align 1
  %281 = load i8, i8* %6, align 1
  %282 = load i16, i16* %7, align 2
  %283 = call i32 %278(i8 zeroext %279, i8 zeroext %280, i8 zeroext %281, i16 zeroext %282)
  br label %284

284:                                              ; preds = %271, %270
  br label %298

285:                                              ; preds = %107
  %286 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %287 = load i8, i8* %3, align 1
  %288 = zext i8 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %286, i64 %288
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = load i32 (i8, i8, i8, i16)*, i32 (i8, i8, i8, i16)** %291, align 8
  %293 = load i8, i8* %3, align 1
  %294 = load i8, i8* %5, align 1
  %295 = load i8, i8* %6, align 1
  %296 = load i16, i16* %7, align 2
  %297 = call i32 %292(i8 zeroext %293, i8 zeroext %294, i8 zeroext %295, i16 zeroext %296)
  br label %298

298:                                              ; preds = %285, %284
  br label %396

299:                                              ; preds = %57
  %300 = load i32, i32* @seq_mode, align 4
  %301 = load i32, i32* @SEQ_2, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %382

303:                                              ; preds = %299
  %304 = load i16, i16* %7, align 2
  %305 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %306 = load i8, i8* %3, align 1
  %307 = zext i8 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %305, i64 %307
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = load i8, i8* %5, align 1
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 2
  store i16 %304, i16* %315, align 8
  %316 = load i8, i8* %3, align 1
  %317 = zext i8 %316 to i32
  %318 = load i32, i32* @num_synths, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %369

320:                                              ; preds = %303
  %321 = load i8, i8* %5, align 1
  %322 = zext i8 %321 to i32
  %323 = shl i32 %322, 8
  store i32 %323, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %324

324:                                              ; preds = %365, %320
  %325 = load i32, i32* %11, align 4
  %326 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %327 = load i8, i8* %3, align 1
  %328 = zext i8 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %326, i64 %328
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp slt i32 %325, %333
  br i1 %334, label %335, label %368

335:                                              ; preds = %324
  %336 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %337 = load i8, i8* %3, align 1
  %338 = zext i8 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %336, i64 %338
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 65280
  %349 = load i32, i32* %12, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %364

351:                                              ; preds = %335
  %352 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %353 = load i8, i8* %3, align 1
  %354 = zext i8 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %352, i64 %354
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 0
  %358 = load i32 (i8, i8, i16)*, i32 (i8, i8, i16)** %357, align 8
  %359 = load i8, i8* %3, align 1
  %360 = load i32, i32* %11, align 4
  %361 = trunc i32 %360 to i8
  %362 = load i16, i16* %7, align 2
  %363 = call i32 %358(i8 zeroext %359, i8 zeroext %361, i16 zeroext %362)
  br label %364

364:                                              ; preds = %351, %335
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %11, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %11, align 4
  br label %324

368:                                              ; preds = %324
  br label %381

369:                                              ; preds = %303
  %370 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %371 = load i8, i8* %3, align 1
  %372 = zext i8 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %370, i64 %372
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 0
  %376 = load i32 (i8, i8, i16)*, i32 (i8, i8, i16)** %375, align 8
  %377 = load i8, i8* %3, align 1
  %378 = load i8, i8* %5, align 1
  %379 = load i16, i16* %7, align 2
  %380 = call i32 %376(i8 zeroext %377, i8 zeroext %378, i16 zeroext %379)
  br label %381

381:                                              ; preds = %369, %368
  br label %394

382:                                              ; preds = %299
  %383 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @synth_devs, align 8
  %384 = load i8, i8* %3, align 1
  %385 = zext i8 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %383, i64 %385
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 0
  %389 = load i32 (i8, i8, i16)*, i32 (i8, i8, i16)** %388, align 8
  %390 = load i8, i8* %3, align 1
  %391 = load i8, i8* %5, align 1
  %392 = load i16, i16* %7, align 2
  %393 = call i32 %389(i8 zeroext %390, i8 zeroext %391, i16 zeroext %392)
  br label %394

394:                                              ; preds = %382, %381
  br label %396

395:                                              ; preds = %57
  br label %396

396:                                              ; preds = %40, %48, %56, %395, %394, %298, %119, %106
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
