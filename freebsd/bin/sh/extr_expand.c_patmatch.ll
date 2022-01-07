; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_patmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_patmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@localeisutf8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @patmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patmatch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  br label %21

21:                                               ; preds = %279, %2
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  %24 = load i8, i8* %22, align 1
  store i8 %24, i8* %11, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %248 [
    i32 0, label %26
    i32 128, label %33
    i32 63, label %45
    i32 42, label %65
    i32 91, label %84
  ]

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %264

32:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %280

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %264

44:                                               ; preds = %33
  br label %279

45:                                               ; preds = %21
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %280

51:                                               ; preds = %45
  %52 = load i32, i32* @localeisutf8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = call zeroext i8 @get_wc(i8** %7)
  store i8 %55, i8* %12, align 1
  %56 = load i8, i8* %12, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %264

60:                                               ; preds = %54
  br label %64

61:                                               ; preds = %51
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %61, %60
  br label %279

65:                                               ; preds = %21
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %11, align 1
  br label %68

68:                                               ; preds = %72, %65
  %69 = load i8, i8* %11, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 42
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %11, align 1
  br label %68

76:                                               ; preds = %68
  %77 = load i8, i8* %11, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %280

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %7, align 8
  store i8* %83, i8** %10, align 8
  br label %279

84:                                               ; preds = %21
  %85 = load i8*, i8** %6, align 8
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %7, align 8
  store i8* %86, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 33
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 94
  br i1 %95, label %96, label %101

96:                                               ; preds = %91, %84
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  br label %101

101:                                              ; preds = %96, %91
  store i32 0, i32* %17, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %280

107:                                              ; preds = %101
  %108 = load i32, i32* @localeisutf8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = call zeroext i8 @get_wc(i8** %7)
  store i8 %111, i8* %18, align 1
  %112 = load i8, i8* %18, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %264

116:                                              ; preds = %110
  br label %121

117:                                              ; preds = %107
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  %120 = load i8, i8* %118, align 1
  store i8 %120, i8* %18, align 1
  br label %121

121:                                              ; preds = %117, %116
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  %124 = load i8, i8* %122, align 1
  store i8 %124, i8* %11, align 1
  br label %125

125:                                              ; preds = %235, %121
  %126 = load i8, i8* %11, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i8*, i8** %14, align 8
  store i8* %130, i8** %6, align 8
  %131 = load i8*, i8** %15, align 8
  store i8* %131, i8** %7, align 8
  store i8 91, i8* %11, align 1
  br label %247

132:                                              ; preds = %125
  %133 = load i8, i8* %11, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 91
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load i8*, i8** %6, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 58
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %18, align 1
  %144 = call i32 @match_charclass(i8* %142, i8 zeroext %143, i8** %8)
  %145 = load i32, i32* %17, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %17, align 4
  %147 = load i8*, i8** %8, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i8*, i8** %8, align 8
  store i8* %150, i8** %6, align 8
  br label %235

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %136, %132
  %153 = load i8, i8* %11, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 128
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %6, align 8
  %159 = load i8, i8* %157, align 1
  store i8 %159, i8* %11, align 1
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* @localeisutf8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i8, i8* %11, align 1
  %165 = sext i8 %164 to i32
  %166 = and i32 %165, 128
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 -1
  store i8* %170, i8** %6, align 8
  %171 = call zeroext i8 @get_wc(i8** %6)
  store i8 %171, i8* %12, align 1
  %172 = load i8, i8* %12, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %280

176:                                              ; preds = %168
  br label %179

177:                                              ; preds = %163, %160
  %178 = load i8, i8* %11, align 1
  store i8 %178, i8* %12, align 1
  br label %179

179:                                              ; preds = %177, %176
  %180 = load i8*, i8** %6, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 45
  br i1 %183, label %184, label %226

184:                                              ; preds = %179
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 93
  br i1 %189, label %190, label %226

190:                                              ; preds = %184
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %6, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 128
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load i8*, i8** %6, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %6, align 8
  br label %200

200:                                              ; preds = %197, %190
  %201 = load i32, i32* @localeisutf8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = call zeroext i8 @get_wc(i8** %6)
  store i8 %204, i8* %13, align 1
  %205 = load i8, i8* %13, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 0, i32* %3, align 4
  br label %280

209:                                              ; preds = %203
  br label %214

210:                                              ; preds = %200
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %6, align 8
  %213 = load i8, i8* %211, align 1
  store i8 %213, i8* %13, align 1
  br label %214

214:                                              ; preds = %210, %209
  %215 = load i8, i8* %18, align 1
  %216 = load i8, i8* %12, align 1
  %217 = call i32 @collate_range_cmp(i8 zeroext %215, i8 zeroext %216)
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load i8, i8* %18, align 1
  %221 = load i8, i8* %13, align 1
  %222 = call i32 @collate_range_cmp(i8 zeroext %220, i8 zeroext %221)
  %223 = icmp sle i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  store i32 1, i32* %17, align 4
  br label %225

225:                                              ; preds = %224, %219, %214
  br label %234

226:                                              ; preds = %184, %179
  %227 = load i8, i8* %18, align 1
  %228 = zext i8 %227 to i32
  %229 = load i8, i8* %12, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  store i32 1, i32* %17, align 4
  br label %233

233:                                              ; preds = %232, %226
  br label %234

234:                                              ; preds = %233, %225
  br label %235

235:                                              ; preds = %234, %149
  %236 = load i8*, i8** %6, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %6, align 8
  %238 = load i8, i8* %236, align 1
  store i8 %238, i8* %11, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 93
  br i1 %240, label %125, label %241

241:                                              ; preds = %235
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* %16, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  br label %264

246:                                              ; preds = %241
  br label %279

247:                                              ; preds = %129
  br label %248

248:                                              ; preds = %21, %247
  %249 = load i8*, i8** %7, align 8
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i32 0, i32* %3, align 4
  br label %280

254:                                              ; preds = %248
  %255 = load i8*, i8** %7, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %7, align 8
  %257 = load i8, i8* %255, align 1
  %258 = sext i8 %257 to i32
  %259 = load i8, i8* %11, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  br label %279

263:                                              ; preds = %254
  br label %264

264:                                              ; preds = %263, %245, %115, %59, %43, %31
  %265 = load i8*, i8** %9, align 8
  %266 = icmp eq i8* %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 0, i32* %3, align 4
  br label %280

268:                                              ; preds = %264
  %269 = load i8*, i8** %10, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  store i32 0, i32* %3, align 4
  br label %280

274:                                              ; preds = %268
  %275 = load i8*, i8** %10, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %10, align 8
  %277 = load i8*, i8** %9, align 8
  store i8* %277, i8** %6, align 8
  %278 = load i8*, i8** %10, align 8
  store i8* %278, i8** %7, align 8
  br label %279

279:                                              ; preds = %274, %262, %246, %81, %64, %44
  br label %21

280:                                              ; preds = %273, %267, %253, %208, %175, %106, %80, %50, %32
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local zeroext i8 @get_wc(i8**) #1

declare dso_local i32 @match_charclass(i8*, i8 zeroext, i8**) #1

declare dso_local i32 @collate_range_cmp(i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
