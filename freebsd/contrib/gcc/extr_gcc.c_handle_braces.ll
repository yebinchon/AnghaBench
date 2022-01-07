; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_handle_braces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_handle_braces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"braced spec '%s' is invalid at '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @handle_braces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_braces(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %21

21:                                               ; preds = %288, %1
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %296

25:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  br label %27

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 33
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i8*, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 9
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ true, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  br label %53

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %3, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %3, align 8
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i8*, i8** %3, align 8
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %116, %77
  %80 = load i8*, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @ISIDNUM(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %79
  %85 = load i8*, i8** %3, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %114, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %3, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 43
  br i1 %93, label %114, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %3, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 61
  br i1 %98, label %114, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %3, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 44
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %3, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 46
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load i8*, i8** %3, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 64
  br label %114

114:                                              ; preds = %109, %104, %99, %94, %89, %84, %79
  %115 = phi i1 [ true, %104 ], [ true, %99 ], [ true, %94 ], [ true, %89 ], [ true, %84 ], [ true, %79 ], [ %113, %109 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %3, align 8
  br label %79

119:                                              ; preds = %114
  %120 = load i8*, i8** %3, align 8
  store i8* %120, i8** %5, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 42
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i8*, i8** %3, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %3, align 8
  store i32 1, i32* %10, align 4
  br label %128

128:                                              ; preds = %125, %119
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %142, %129
  %131 = load i8*, i8** %3, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i8*, i8** %3, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 9
  br label %140

140:                                              ; preds = %135, %130
  %141 = phi i1 [ true, %130 ], [ %139, %135 ]
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = load i8*, i8** %3, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %3, align 8
  br label %130

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %3, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  switch i32 %149, label %286 [
    i32 38, label %150
    i32 125, label %150
    i32 124, label %179
    i32 58, label %179
  ]

150:                                              ; preds = %146, %146
  store i32 1, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load i8*, i8** %4, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = icmp eq i8* %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162, %159, %156, %153, %150
  br label %296

167:                                              ; preds = %162
  %168 = load i8*, i8** %4, align 8
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @mark_matching_switches(i8* %168, i8* %169, i32 %170)
  %172 = load i8*, i8** %3, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 125
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = call i32 (...) @process_marked_switches()
  br label %178

178:                                              ; preds = %176, %167
  br label %287

179:                                              ; preds = %146, %146
  store i32 1, i32* %15, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %296

183:                                              ; preds = %179
  %184 = load i8*, i8** %4, align 8
  %185 = load i8*, i8** %5, align 8
  %186 = icmp eq i8* %184, %185
  br i1 %186, label %187, label %213

187:                                              ; preds = %183
  %188 = load i32, i32* %18, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %187
  %191 = load i32, i32* %16, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %190
  %194 = load i8*, i8** %3, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 124
  br i1 %197, label %207, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204, %201, %198, %193, %190, %187
  br label %296

208:                                              ; preds = %204
  store i32 1, i32* %13, align 4
  %209 = load i32, i32* %19, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  store i32 %212, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %251

213:                                              ; preds = %183
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %296

220:                                              ; preds = %216, %213
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  store i32 0, i32* %17, align 4
  br label %224

224:                                              ; preds = %223, %220
  %225 = load i32, i32* %16, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %250, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %19, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %250, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i8*, i8** %4, align 8
  %235 = load i8*, i8** %5, align 8
  %236 = call i32 @input_suffix_matches(i8* %234, i8* %235)
  store i32 %236, i32* %12, align 4
  br label %242

237:                                              ; preds = %230
  %238 = load i8*, i8** %4, align 8
  %239 = load i8*, i8** %5, align 8
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @switch_matches(i8* %238, i8* %239, i32 %240)
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %237, %233
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  store i32 1, i32* %16, align 4
  %247 = load i8*, i8** %4, align 8
  store i8* %247, i8** %6, align 8
  %248 = load i8*, i8** %5, align 8
  store i8* %248, i8** %7, align 8
  br label %249

249:                                              ; preds = %246, %242
  br label %250

250:                                              ; preds = %249, %227, %224
  br label %251

251:                                              ; preds = %250, %208
  %252 = load i8*, i8** %3, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 58
  br i1 %255, label %256, label %285

256:                                              ; preds = %251
  %257 = load i8*, i8** %3, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8*, i8** %6, align 8
  %260 = load i8*, i8** %7, align 8
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %256
  %265 = load i32, i32* %19, align 4
  %266 = icmp ne i32 %265, 0
  %267 = xor i1 %266, true
  br label %268

268:                                              ; preds = %264, %256
  %269 = phi i1 [ false, %256 ], [ %267, %264 ]
  %270 = zext i1 %269 to i32
  %271 = call i8* @process_brace_body(i8* %258, i8* %259, i8* %260, i32 %261, i32 %270)
  store i8* %271, i8** %3, align 8
  %272 = load i8*, i8** %3, align 8
  %273 = icmp eq i8* %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  store i8* null, i8** %2, align 8
  br label %301

275:                                              ; preds = %268
  %276 = load i8*, i8** %3, align 8
  %277 = load i8, i8* %276, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp eq i32 %278, 59
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  store i32 1, i32* %18, align 4
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* %19, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %19, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  br label %284

284:                                              ; preds = %280, %275
  br label %285

285:                                              ; preds = %284, %251
  br label %287

286:                                              ; preds = %146
  br label %296

287:                                              ; preds = %285, %178
  br label %288

288:                                              ; preds = %287
  %289 = load i8*, i8** %3, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %3, align 8
  %291 = load i8, i8* %289, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp ne i32 %292, 125
  br i1 %293, label %21, label %294

294:                                              ; preds = %288
  %295 = load i8*, i8** %3, align 8
  store i8* %295, i8** %2, align 8
  br label %301

296:                                              ; preds = %286, %219, %207, %182, %166, %24
  %297 = load i8*, i8** %8, align 8
  %298 = load i8*, i8** %3, align 8
  %299 = load i8, i8* %298, align 1
  %300 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %297, i8 signext %299)
  br label %301

301:                                              ; preds = %296, %294, %274
  %302 = load i8*, i8** %2, align 8
  ret i8* %302
}

declare dso_local i64 @ISIDNUM(i8 signext) #1

declare dso_local i32 @mark_matching_switches(i8*, i8*, i32) #1

declare dso_local i32 @process_marked_switches(...) #1

declare dso_local i32 @input_suffix_matches(i8*, i8*) #1

declare dso_local i32 @switch_matches(i8*, i8*, i32) #1

declare dso_local i8* @process_brace_body(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @fatal(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
