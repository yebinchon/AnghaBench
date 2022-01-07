; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_prepare_for_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_prepare_for_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@audio_devs = common dso_local global %struct.TYPE_10__** null, align 8
@MD_1845 = common dso_local global i64 0, align 8
@MD_1845_SSCAPE = common dso_local global i64 0, align 8
@MD_4232 = common dso_local global i64 0, align 8
@MD_IWAVE = common dso_local global i64 0, align 8
@MD_1848 = common dso_local global i64 0, align 8
@timer_installed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ad1848_prepare_for_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1848_prepare_for_input(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %11, align 1
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @audio_devs, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %16, i64 %18
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %13, align 8
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @audio_devs, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %24, i64 %26
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %14, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %304

37:                                               ; preds = %3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 5
  %49 = or i32 %44, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %9, align 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %37
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, 16
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %9, align 1
  br label %60

60:                                               ; preds = %55, %37
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %62 = call i32 @ad_enter_MCE(%struct.TYPE_9__* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MD_1845, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MD_1845_SSCAPE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %68, %60
  %75 = load i8, i8* %9, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 240
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %9, align 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 255
  %85 = trunc i32 %84 to i8
  %86 = call i32 @ad_write(%struct.TYPE_9__* %79, i32 22, i8 zeroext %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 255
  %92 = trunc i32 %91 to i8
  %93 = call i32 @ad_write(%struct.TYPE_9__* %87, i32 23, i8 zeroext %92)
  br label %94

94:                                               ; preds = %74, %68
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MD_4232, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %102 = call i32 @ad_read(%struct.TYPE_9__* %101, i32 16)
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %11, align 1
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %105 = load i8, i8* %11, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, 48
  %108 = trunc i32 %107 to i8
  %109 = call i32 @ad_write(%struct.TYPE_9__* %104, i32 16, i8 zeroext %108)
  br label %110

110:                                              ; preds = %100, %94
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MD_IWAVE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %118 = call i32 @ad_write(%struct.TYPE_9__* %117, i32 17, i8 zeroext -62)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MD_1848, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %222

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %127 = call i32 @ad_read(%struct.TYPE_9__* %126, i32 28)
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %10, align 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %130 = load i8, i8* %9, align 1
  %131 = call i32 @ad_write(%struct.TYPE_9__* %129, i32 28, i8 zeroext %130)
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %143, %125
  %133 = load i32, i32* %8, align 4
  %134 = icmp slt i32 %133, 100
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @inb(i32 %138)
  %140 = icmp ne i32 %139, 128
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i1 [ false, %132 ], [ %140, %135 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %132

146:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %158, %146
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %148, 10000
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @inb(i32 %153)
  %155 = icmp eq i32 %154, 128
  br label %156

156:                                              ; preds = %150, %147
  %157 = phi i1 [ false, %147 ], [ %155, %150 ]
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %147

161:                                              ; preds = %156
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @MD_1848, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %221

167:                                              ; preds = %161
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @MD_1845, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %221

173:                                              ; preds = %167
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MD_1845_SSCAPE, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %221

179:                                              ; preds = %173
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %184 = call i32 @ad_read(%struct.TYPE_9__* %183, i32 8)
  %185 = and i32 %184, 240
  %186 = or i32 %182, %185
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %15, align 1
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %189 = load i8, i8* %15, align 1
  %190 = call i32 @ad_write(%struct.TYPE_9__* %188, i32 8, i8 zeroext %189)
  store i32 0, i32* %8, align 4
  br label %191

191:                                              ; preds = %202, %179
  %192 = load i32, i32* %8, align 4
  %193 = icmp slt i32 %192, 100
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @inb(i32 %197)
  %199 = icmp ne i32 %198, 128
  br label %200

200:                                              ; preds = %194, %191
  %201 = phi i1 [ false, %191 ], [ %199, %194 ]
  br i1 %201, label %202, label %205

202:                                              ; preds = %200
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %191

205:                                              ; preds = %200
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %217, %205
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 10000
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @inb(i32 %212)
  %214 = icmp eq i32 %213, 128
  br label %215

215:                                              ; preds = %209, %206
  %216 = phi i1 [ false, %206 ], [ %214, %209 ]
  br i1 %216, label %217, label %220

217:                                              ; preds = %215
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %206

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %220, %173, %167, %161
  br label %259

222:                                              ; preds = %119
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %224 = call i32 @ad_read(%struct.TYPE_9__* %223, i32 8)
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %10, align 1
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %227 = load i8, i8* %9, align 1
  %228 = call i32 @ad_write(%struct.TYPE_9__* %226, i32 8, i8 zeroext %227)
  store i32 0, i32* %8, align 4
  br label %229

229:                                              ; preds = %240, %222
  %230 = load i32, i32* %8, align 4
  %231 = icmp slt i32 %230, 100
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @inb(i32 %235)
  %237 = icmp ne i32 %236, 128
  br label %238

238:                                              ; preds = %232, %229
  %239 = phi i1 [ false, %229 ], [ %237, %232 ]
  br i1 %239, label %240, label %243

240:                                              ; preds = %238
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %229

243:                                              ; preds = %238
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %255, %243
  %245 = load i32, i32* %8, align 4
  %246 = icmp slt i32 %245, 10000
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @inb(i32 %250)
  %252 = icmp eq i32 %251, 128
  br label %253

253:                                              ; preds = %247, %244
  %254 = phi i1 [ false, %244 ], [ %252, %247 ]
  br i1 %254, label %255, label %258

255:                                              ; preds = %253
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %8, align 4
  br label %244

258:                                              ; preds = %253
  br label %259

259:                                              ; preds = %258, %221
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @MD_4232, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %259
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %267 = load i8, i8* %11, align 1
  %268 = zext i8 %267 to i32
  %269 = and i32 %268, -49
  %270 = trunc i32 %269 to i8
  %271 = call i32 @ad_write(%struct.TYPE_9__* %266, i32 16, i8 zeroext %270)
  br label %272

272:                                              ; preds = %265, %259
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %274 = call i32 @ad_leave_MCE(%struct.TYPE_9__* %273)
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 3
  %277 = load i64, i64* %12, align 8
  %278 = call i32 @spin_unlock_irqrestore(i32* %276, i64 %277)
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 2
  store i64 0, i64* %280, align 8
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* @timer_installed, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %301

284:                                              ; preds = %272
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %301

289:                                              ; preds = %284
  %290 = load i8, i8* %9, align 1
  %291 = zext i8 %290 to i32
  %292 = and i32 %291, 1
  %293 = load i8, i8* %10, align 1
  %294 = zext i8 %293 to i32
  %295 = and i32 %294, 1
  %296 = icmp ne i32 %292, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %289
  %298 = load i32, i32* %5, align 4
  %299 = call i32 @ad1848_tmr_reprogram(i32 %298)
  br label %300

300:                                              ; preds = %297, %289
  br label %301

301:                                              ; preds = %300, %284, %272
  %302 = load i32, i32* %5, align 4
  %303 = call i32 @ad1848_halt_input(i32 %302)
  store i32 0, i32* %4, align 4
  br label %304

304:                                              ; preds = %301, %36
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ad_enter_MCE(%struct.TYPE_9__*) #1

declare dso_local i32 @ad_write(%struct.TYPE_9__*, i32, i8 zeroext) #1

declare dso_local i32 @ad_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ad_leave_MCE(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ad1848_tmr_reprogram(i32) #1

declare dso_local i32 @ad1848_halt_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
