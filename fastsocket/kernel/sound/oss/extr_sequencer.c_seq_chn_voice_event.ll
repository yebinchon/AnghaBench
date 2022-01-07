; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_chn_voice_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_seq_chn_voice_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, i32, i32)*, i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32)*, %struct.TYPE_3__*, i32 (i64, i32, i32)*, i64 }
%struct.TYPE_3__ = type { i32 }

@max_synthdev = common dso_local global i32 0, align 4
@synth_devs = common dso_local global %struct.TYPE_4__** null, align 8
@synth_open_mask = common dso_local global i32 0, align 4
@seq_mode = common dso_local global i64 0, align 8
@SEQ_2 = common dso_local global i64 0, align 8
@num_synths = common dso_local global i32 0, align 4
@chn = common dso_local global i32 0, align 4
@cmd = common dso_local global i32 0, align 4
@dev = common dso_local global i64 0, align 8
@note = common dso_local global i32 0, align 4
@parm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @seq_chn_voice_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_chn_voice_event(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load i32, i32* @max_synthdev, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10, %1
  br label %308

20:                                               ; preds = %10
  %21 = load i32, i32* @synth_open_mask, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 1, %25
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %308

30:                                               ; preds = %20
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %308

40:                                               ; preds = %30
  %41 = load i64, i64* @seq_mode, align 8
  %42 = load i64, i64* @SEQ_2, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %44
  %56 = load i8*, i8** %2, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = load i8*, i8** %2, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = call i32 @find_voice(i64 %59, i32 %63, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %55, %44
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i8*, i8** %2, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 5
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8 -127, i8* %83, align 1
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  store i8 64, i8* %85, align 1
  br label %86

86:                                               ; preds = %81, %75, %69
  br label %87

87:                                               ; preds = %86, %40
  %88 = load i8*, i8** %2, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  switch i32 %91, label %307 [
    i32 128, label %92
    i32 129, label %247
    i32 130, label %279
  ]

92:                                               ; preds = %87
  %93 = load i8*, i8** %2, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp sgt i32 %96, 127
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i8*, i8** %2, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 255
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %308

105:                                              ; preds = %98, %92
  %106 = load i32, i32* %3, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %137

108:                                              ; preds = %105
  %109 = load i64, i64* @seq_mode, align 8
  %110 = load i64, i64* @SEQ_2, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %108
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %114 = load i8*, i8** %2, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %112
  %124 = load i8*, i8** %2, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i64
  %128 = load i8*, i8** %2, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 3
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8*, i8** %2, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 4
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = call i32 @alloc_voice(i64 %127, i32 %131, i32 %135)
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %123, %112, %108, %105
  %138 = load i32, i32* %3, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i8*, i8** %2, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 3
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i64, i64* @seq_mode, align 8
  %147 = load i64, i64* @SEQ_2, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %223

149:                                              ; preds = %145
  %150 = load i8*, i8** %2, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = load i32, i32* @num_synths, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %223

156:                                              ; preds = %149
  %157 = load i8*, i8** %2, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 3
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp eq i32 %160, 9
  br i1 %161, label %162, label %203

162:                                              ; preds = %156
  %163 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %164 = load i8*, i8** %2, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %163, i64 %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 5
  %171 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %170, align 8
  %172 = load i8*, i8** %2, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i64
  %176 = load i32, i32* %3, align 4
  %177 = load i8*, i8** %2, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 4
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 128, %180
  %182 = call i32 %171(i64 %175, i32 %176, i32 %181)
  %183 = load i8*, i8** %2, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 4
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 128, %186
  %188 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %189 = load i8*, i8** %2, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 1
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %188, i64 %192
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = load i8*, i8** %2, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 3
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i32 %187, i32* %202, align 4
  br label %203

203:                                              ; preds = %162, %156
  %204 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %205 = load i8*, i8** %2, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %204, i64 %208
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 3
  %212 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %211, align 8
  %213 = load i8*, i8** %2, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i64
  %217 = load i32, i32* %3, align 4
  %218 = load i8*, i8** %2, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 3
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = call i32 %212(i64 %216, i32 %217, i32 %221)
  br label %223

223:                                              ; preds = %203, %149, %145
  %224 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %225 = load i8*, i8** %2, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 1
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %224, i64 %228
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %231, align 8
  %233 = load i8*, i8** %2, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i64
  %237 = load i32, i32* %3, align 4
  %238 = load i8*, i8** %2, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 4
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = load i8*, i8** %2, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 5
  %244 = load i8, i8* %243, align 1
  %245 = zext i8 %244 to i32
  %246 = call i32 %232(i64 %236, i32 %237, i32 %241, i32 %245)
  br label %308

247:                                              ; preds = %87
  %248 = load i32, i32* %3, align 4
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i8*, i8** %2, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 3
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %250, %247
  %256 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %257 = load i8*, i8** %2, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %256, i64 %260
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  %264 = load i32 (i64, i32, i32, i32)*, i32 (i64, i32, i32, i32)** %263, align 8
  %265 = load i8*, i8** %2, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i64
  %269 = load i32, i32* %3, align 4
  %270 = load i8*, i8** %2, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 4
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = load i8*, i8** %2, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 5
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = call i32 %264(i64 %268, i32 %269, i32 %273, i32 %277)
  br label %308

279:                                              ; preds = %87
  %280 = load i32, i32* %3, align 4
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = load i8*, i8** %2, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 3
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  store i32 %286, i32* %3, align 4
  br label %287

287:                                              ; preds = %282, %279
  %288 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @synth_devs, align 8
  %289 = load i8*, i8** %2, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %288, i64 %292
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %295, align 8
  %297 = load i8*, i8** %2, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 1
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i64
  %301 = load i32, i32* %3, align 4
  %302 = load i8*, i8** %2, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 5
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = call i32 %296(i64 %300, i32 %301, i32 %305)
  br label %308

307:                                              ; preds = %87
  br label %308

308:                                              ; preds = %19, %29, %39, %104, %307, %287, %255, %223
  ret void
}

declare dso_local i32 @find_voice(i64, i32, i32) #1

declare dso_local i32 @alloc_voice(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
