; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_LoadDAC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_LoadDAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i32, i32, i64, i64, i64, i64 }

@DACInfoFlag = common dso_local global i16 0, align 2
@SiS_MDA_DAC = common dso_local global i8* null, align 8
@SiS_CGA_DAC = common dso_local global i8* null, align 8
@SiS_EGA_DAC = common dso_local global i8* null, align 8
@SiS_VGA_DAC = common dso_local global i8* null, align 8
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@ProgrammingCRT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_LoadDAC(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i8* null, i8** %22, align 8
  %23 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %24 = load i16, i16* %5, align 2
  %25 = load i16, i16* %6, align 2
  %26 = call zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private* %23, i16 zeroext %24, i16 zeroext %25)
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @DACInfoFlag, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %27, %29
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %7, align 2
  store i16 64, i16* %9, align 2
  store i16 64, i16* %11, align 2
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i8*, i8** @SiS_MDA_DAC, align 8
  store i8* %36, i8** %22, align 8
  br label %58

37:                                               ; preds = %3
  %38 = load i16, i16* %7, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** @SiS_CGA_DAC, align 8
  store i8* %42, i8** %22, align 8
  br label %57

43:                                               ; preds = %37
  %44 = load i16, i16* %7, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i8*, i8** @SiS_EGA_DAC, align 8
  store i8* %48, i8** %22, align 8
  br label %56

49:                                               ; preds = %43
  %50 = load i16, i16* %7, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp eq i32 %51, 24
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  store i16 16, i16* %11, align 2
  store i16 256, i16* %9, align 2
  %54 = load i8*, i8** @SiS_VGA_DAC, align 8
  store i8* %54, i8** %22, align 8
  br label %55

55:                                               ; preds = %53, %49
  br label %56

56:                                               ; preds = %55, %47
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %60 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SetCRT2ToLCD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %67 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VB_NoLCD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %74 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SetCRT2ToLCDA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %81 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ProgrammingCRT2, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %79, %72, %65
  %87 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %88 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @SiS_SetRegByte(i64 %89, i16 zeroext 255)
  %91 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %92 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %20, align 8
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %21, align 8
  store i16 0, i16* %19, align 2
  br label %105

97:                                               ; preds = %79
  %98 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %99 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %20, align 8
  %101 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %102 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %21, align 8
  store i16 2, i16* %19, align 2
  br label %105

105:                                              ; preds = %97, %86
  %106 = load i64, i64* %20, align 8
  %107 = call i32 @SiS_SetRegByte(i64 %106, i16 zeroext 0)
  store i16 0, i16* %10, align 2
  br label %108

108:                                              ; preds = %162, %105
  %109 = load i16, i16* %10, align 2
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* %11, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %165

114:                                              ; preds = %108
  %115 = load i8*, i8** %22, align 8
  %116 = load i16, i16* %10, align 2
  %117 = zext i16 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i16
  store i16 %120, i16* %7, align 2
  store i16 0, i16* %12, align 2
  br label %121

121:                                              ; preds = %158, %114
  %122 = load i16, i16* %12, align 2
  %123 = zext i16 %122 to i32
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %161

125:                                              ; preds = %121
  store i16 0, i16* %8, align 2
  %126 = load i16, i16* %7, align 2
  %127 = zext i16 %126 to i32
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i16, i16* %8, align 2
  %132 = zext i16 %131 to i32
  %133 = add nsw i32 %132, 42
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %8, align 2
  br label %135

135:                                              ; preds = %130, %125
  %136 = load i16, i16* %7, align 2
  %137 = zext i16 %136 to i32
  %138 = and i32 %137, 2
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i16, i16* %8, align 2
  %142 = zext i16 %141 to i32
  %143 = add nsw i32 %142, 21
  %144 = trunc i32 %143 to i16
  store i16 %144, i16* %8, align 2
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i64, i64* %21, align 8
  %147 = load i16, i16* %8, align 2
  %148 = zext i16 %147 to i32
  %149 = load i16, i16* %19, align 2
  %150 = zext i16 %149 to i32
  %151 = shl i32 %148, %150
  %152 = trunc i32 %151 to i16
  %153 = call i32 @SiS_SetRegByte(i64 %146, i16 zeroext %152)
  %154 = load i16, i16* %7, align 2
  %155 = zext i16 %154 to i32
  %156 = ashr i32 %155, 2
  %157 = trunc i32 %156 to i16
  store i16 %157, i16* %7, align 2
  br label %158

158:                                              ; preds = %145
  %159 = load i16, i16* %12, align 2
  %160 = add i16 %159, 1
  store i16 %160, i16* %12, align 2
  br label %121

161:                                              ; preds = %121
  br label %162

162:                                              ; preds = %161
  %163 = load i16, i16* %10, align 2
  %164 = add i16 %163, 1
  store i16 %164, i16* %10, align 2
  br label %108

165:                                              ; preds = %108
  %166 = load i16, i16* %9, align 2
  %167 = zext i16 %166 to i32
  %168 = icmp eq i32 %167, 256
  br i1 %168, label %169, label %294

169:                                              ; preds = %165
  store i16 16, i16* %10, align 2
  br label %170

170:                                              ; preds = %197, %169
  %171 = load i16, i16* %10, align 2
  %172 = zext i16 %171 to i32
  %173 = icmp slt i32 %172, 32
  br i1 %173, label %174, label %200

174:                                              ; preds = %170
  %175 = load i8*, i8** %22, align 8
  %176 = load i16, i16* %10, align 2
  %177 = zext i16 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = load i16, i16* %19, align 2
  %182 = zext i16 %181 to i32
  %183 = shl i32 %180, %182
  %184 = trunc i32 %183 to i16
  store i16 %184, i16* %7, align 2
  store i16 0, i16* %12, align 2
  br label %185

185:                                              ; preds = %193, %174
  %186 = load i16, i16* %12, align 2
  %187 = zext i16 %186 to i32
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i64, i64* %21, align 8
  %191 = load i16, i16* %7, align 2
  %192 = call i32 @SiS_SetRegByte(i64 %190, i16 zeroext %191)
  br label %193

193:                                              ; preds = %189
  %194 = load i16, i16* %12, align 2
  %195 = add i16 %194, 1
  store i16 %195, i16* %12, align 2
  br label %185

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196
  %198 = load i16, i16* %10, align 2
  %199 = add i16 %198, 1
  store i16 %199, i16* %10, align 2
  br label %170

200:                                              ; preds = %170
  store i16 32, i16* %16, align 2
  store i16 0, i16* %13, align 2
  br label %201

201:                                              ; preds = %290, %200
  %202 = load i16, i16* %13, align 2
  %203 = zext i16 %202 to i32
  %204 = icmp slt i32 %203, 9
  br i1 %204, label %205, label %293

205:                                              ; preds = %201
  %206 = load i16, i16* %16, align 2
  store i16 %206, i16* %17, align 2
  %207 = load i16, i16* %16, align 2
  %208 = zext i16 %207 to i32
  %209 = add nsw i32 %208, 4
  %210 = trunc i32 %209 to i16
  store i16 %210, i16* %18, align 2
  store i16 0, i16* %14, align 2
  br label %211

211:                                              ; preds = %282, %205
  %212 = load i16, i16* %14, align 2
  %213 = zext i16 %212 to i32
  %214 = icmp slt i32 %213, 3
  br i1 %214, label %215, label %285

215:                                              ; preds = %211
  store i16 0, i16* %15, align 2
  br label %216

216:                                              ; preds = %243, %215
  %217 = load i16, i16* %15, align 2
  %218 = zext i16 %217 to i32
  %219 = icmp slt i32 %218, 5
  br i1 %219, label %220, label %246

220:                                              ; preds = %216
  %221 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %222 = load i64, i64* %21, align 8
  %223 = load i16, i16* %19, align 2
  %224 = load i16, i16* %14, align 2
  %225 = load i8*, i8** %22, align 8
  %226 = load i16, i16* %17, align 2
  %227 = zext i16 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = load i8*, i8** %22, align 8
  %231 = load i16, i16* %18, align 2
  %232 = zext i16 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = load i8*, i8** %22, align 8
  %236 = load i16, i16* %16, align 2
  %237 = zext i16 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = call i32 @SiS_WriteDAC(%struct.SiS_Private* %221, i64 %222, i16 zeroext %223, i16 zeroext %224, i8 zeroext %229, i8 zeroext %234, i8 zeroext %239)
  %241 = load i16, i16* %16, align 2
  %242 = add i16 %241, 1
  store i16 %242, i16* %16, align 2
  br label %243

243:                                              ; preds = %220
  %244 = load i16, i16* %15, align 2
  %245 = add i16 %244, 1
  store i16 %245, i16* %15, align 2
  br label %216

246:                                              ; preds = %216
  %247 = load i16, i16* %16, align 2
  %248 = zext i16 %247 to i32
  %249 = sub nsw i32 %248, 2
  %250 = trunc i32 %249 to i16
  store i16 %250, i16* %16, align 2
  store i16 0, i16* %15, align 2
  br label %251

251:                                              ; preds = %278, %246
  %252 = load i16, i16* %15, align 2
  %253 = zext i16 %252 to i32
  %254 = icmp slt i32 %253, 3
  br i1 %254, label %255, label %281

255:                                              ; preds = %251
  %256 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %257 = load i64, i64* %21, align 8
  %258 = load i16, i16* %19, align 2
  %259 = load i16, i16* %14, align 2
  %260 = load i8*, i8** %22, align 8
  %261 = load i16, i16* %17, align 2
  %262 = zext i16 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = load i8*, i8** %22, align 8
  %266 = load i16, i16* %16, align 2
  %267 = zext i16 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = load i8*, i8** %22, align 8
  %271 = load i16, i16* %18, align 2
  %272 = zext i16 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = call i32 @SiS_WriteDAC(%struct.SiS_Private* %256, i64 %257, i16 zeroext %258, i16 zeroext %259, i8 zeroext %264, i8 zeroext %269, i8 zeroext %274)
  %276 = load i16, i16* %16, align 2
  %277 = add i16 %276, -1
  store i16 %277, i16* %16, align 2
  br label %278

278:                                              ; preds = %255
  %279 = load i16, i16* %15, align 2
  %280 = add i16 %279, 1
  store i16 %280, i16* %15, align 2
  br label %251

281:                                              ; preds = %251
  br label %282

282:                                              ; preds = %281
  %283 = load i16, i16* %14, align 2
  %284 = add i16 %283, 1
  store i16 %284, i16* %14, align 2
  br label %211

285:                                              ; preds = %211
  %286 = load i16, i16* %16, align 2
  %287 = zext i16 %286 to i32
  %288 = add nsw i32 %287, 5
  %289 = trunc i32 %288 to i16
  store i16 %289, i16* %16, align 2
  br label %290

290:                                              ; preds = %285
  %291 = load i16, i16* %13, align 2
  %292 = add i16 %291, 1
  store i16 %292, i16* %13, align 2
  br label %201

293:                                              ; preds = %201
  br label %294

294:                                              ; preds = %293, %165
  ret void
}

declare dso_local zeroext i16 @SiS_GetModeFlag(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetRegByte(i64, i16 zeroext) #1

declare dso_local i32 @SiS_WriteDAC(%struct.SiS_Private*, i64, i16 zeroext, i16 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
