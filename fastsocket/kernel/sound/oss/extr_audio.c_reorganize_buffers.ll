; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_audio.c_reorganize_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_audio.c_reorganize_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }
%struct.dma_buffparms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i32, i64, i64 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@NEUTRAL8 = common dso_local global i32 0, align 4
@NEUTRAL16 = common dso_local global i32 0, align 4
@DSP_DEFAULT_SPEED = common dso_local global i32 0, align 4
@MAX_SUB_BUFFERS = common dso_local global i32 0, align 4
@DMA_ALLOC_DONE = common dso_local global i32 0, align 4
@DMA_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reorganize_buffers(i32 %0, %struct.dma_buffparms* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_buffparms*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_operations*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dma_buffparms* %1, %struct.dma_buffparms** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %14, i64 %16
  %18 = load %struct.audio_operations*, %struct.audio_operations** %17, align 8
  store %struct.audio_operations* %18, %struct.audio_operations** %7, align 8
  %19 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %20 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %23(i32 %24, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %27 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %30(i32 %31, i32 0)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %34 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 %37(i32 %38, i32 0)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %42, label %46

42:                                               ; preds = %3
  %43 = load i32, i32* @NEUTRAL8, align 4
  %44 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %45 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %3
  %47 = load i32, i32* @NEUTRAL16, align 4
  %48 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %49 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %51, 1
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp ult i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = icmp ult i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %53, %50
  %60 = load i32, i32* @DSP_DEFAULT_SPEED, align 4
  store i32 %60, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 8, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = mul i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = udiv i32 %67, 8
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %71 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %73 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %72, i32 0, i32 12
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %61
  br label %319

77:                                               ; preds = %61
  %78 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %79 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %78, i32 0, i32 12
  store i64 0, i64* %79, align 8
  %80 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %81 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %147

84:                                               ; preds = %77
  %85 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %86 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %92, %84
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %13, align 4
  %94 = udiv i32 %93, 2
  store i32 %94, i32* %13, align 4
  br label %88

95:                                               ; preds = %88
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %98 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %13, align 4
  %103 = udiv i32 %102, 2
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %106 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %104
  %110 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %111 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %110, i32 0, i32 3
  store i32 4, i32* %111, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %114 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = udiv i32 %112, %115
  %117 = icmp ugt i32 %116, 4096
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %120 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 2
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %109
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %126 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = udiv i32 %124, %127
  %129 = icmp ult i32 %128, 4096
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %132 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %131, i32 0, i32 3
  store i32 1, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %123
  br label %134

134:                                              ; preds = %133, %104
  %135 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %136 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %13, align 4
  %139 = udiv i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ult i32 %140, 16
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  store i32 16, i32* %13, align 4
  br label %143

143:                                              ; preds = %142, %134
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %146 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %167

147:                                              ; preds = %77
  %148 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %149 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %152 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = udiv i32 %153, 2
  %155 = icmp ugt i32 %150, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %158 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = udiv i32 %159, 2
  %161 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %162 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %147
  %164 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %165 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %13, align 4
  br label %167

167:                                              ; preds = %163, %143
  %168 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %168, i64 %170
  %172 = load %struct.audio_operations*, %struct.audio_operations** %171, align 8
  %173 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %167
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %178, i64 %180
  %182 = load %struct.audio_operations*, %struct.audio_operations** %181, align 8
  %183 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = shl i32 1, %184
  %186 = icmp ult i32 %177, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %176
  %188 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %188, i64 %190
  %192 = load %struct.audio_operations*, %struct.audio_operations** %191, align 8
  %193 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 1, %194
  store i32 %195, i32* %13, align 4
  br label %196

196:                                              ; preds = %187, %176
  br label %197

197:                                              ; preds = %196, %167
  %198 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %198, i64 %200
  %202 = load %struct.audio_operations*, %struct.audio_operations** %201, align 8
  %203 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %227

206:                                              ; preds = %197
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %208, i64 %210
  %212 = load %struct.audio_operations*, %struct.audio_operations** %211, align 8
  %213 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 1, %214
  %216 = icmp ugt i32 %207, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %206
  %218 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %218, i64 %220
  %222 = load %struct.audio_operations*, %struct.audio_operations** %221, align 8
  %223 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 1, %224
  store i32 %225, i32* %13, align 4
  br label %226

226:                                              ; preds = %217, %206
  br label %227

227:                                              ; preds = %226, %197
  %228 = load i32, i32* %13, align 4
  %229 = and i32 %228, -8
  store i32 %229, i32* %13, align 4
  %230 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %231 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = udiv i32 %232, %233
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* @MAX_SUB_BUFFERS, align 4
  %237 = icmp ugt i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %227
  %239 = load i32, i32* @MAX_SUB_BUFFERS, align 4
  store i32 %239, i32* %9, align 4
  br label %240

240:                                              ; preds = %238, %227
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %243 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = icmp ugt i32 %241, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %240
  %247 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %248 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  store i32 %249, i32* %9, align 4
  br label %250

250:                                              ; preds = %246, %240
  %251 = load i32, i32* %9, align 4
  %252 = icmp ult i32 %251, 2
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  store i32 2, i32* %9, align 4
  %254 = load i32, i32* %13, align 4
  %255 = udiv i32 %254, 2
  store i32 %255, i32* %13, align 4
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i32, i32* %9, align 4
  %258 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %259 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %258, i32 0, i32 5
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* %13, align 4
  %262 = mul i32 %260, %261
  %263 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %264 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %263, i32 0, i32 6
  store i32 %262, i32* %264, align 8
  %265 = load i32, i32* %13, align 4
  %266 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %267 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  %268 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %269 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = mul i32 %270, 60
  %272 = mul i32 %271, 60
  %273 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %274 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = add i32 %272, %275
  %277 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %278 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %277, i32 0, i32 7
  store i32 %276, i32* %278, align 4
  %279 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %280 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %279, i32 0, i32 11
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %256
  %284 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %285 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %284, i32 0, i32 11
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %288 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %287, i32 0, i32 10
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %291 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @memset(i64 %286, i32 %289, i32 %292)
  br label %294

294:                                              ; preds = %283, %256
  store i32 0, i32* %8, align 4
  br label %295

295:                                              ; preds = %308, %294
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %298 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = icmp ult i32 %296, %299
  br i1 %300, label %301, label %311

301:                                              ; preds = %295
  %302 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %303 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %302, i32 0, i32 9
  %304 = load i64*, i64** %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  store i64 0, i64* %307, align 8
  br label %308

308:                                              ; preds = %301
  %309 = load i32, i32* %8, align 4
  %310 = add i32 %309, 1
  store i32 %310, i32* %8, align 4
  br label %295

311:                                              ; preds = %295
  %312 = load i32, i32* @DMA_ALLOC_DONE, align 4
  %313 = load i32, i32* @DMA_EMPTY, align 4
  %314 = or i32 %312, %313
  %315 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %316 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %315, i32 0, i32 8
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %311, %76
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
