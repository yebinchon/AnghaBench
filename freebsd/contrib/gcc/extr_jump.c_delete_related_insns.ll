; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_delete_related_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_delete_related_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_VEC = common dso_local global i64 0, align 8
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8
@REG_LABEL = common dso_local global i64 0, align 8
@NOTE = common dso_local global i32 0, align 4
@NOTE_INSN_FUNCTION_END = common dso_local global i64 0, align 8
@CODE_LABEL = common dso_local global i32 0, align 4
@BARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @delete_related_insns(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @LABEL_P(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @NEXT_INSN(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @PREV_INSN(i64 %19)
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %30, %1
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @INSN_DELETED_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @NEXT_INSN(i64 %31)
  store i64 %32, i64* %6, align 8
  br label %21

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @INSN_DELETED_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %2, align 8
  br label %302

39:                                               ; preds = %33
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @delete_insn(i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @BARRIER_P(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @delete_insn(i64 %49)
  br label %51

51:                                               ; preds = %48, %44, %39
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @JUMP_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @JUMP_LABEL(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @JUMP_LABEL(i64 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @LABEL_NUSES(i64 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @delete_related_insns(i64 %66)
  br label %68

68:                                               ; preds = %77, %65
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @INSN_DELETED_P(i64 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %71, %68
  %76 = phi i1 [ false, %68 ], [ %74, %71 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @NEXT_INSN(i64 %78)
  store i64 %79, i64* %6, align 8
  br label %68

80:                                               ; preds = %75
  %81 = load i64, i64* %6, align 8
  store i64 %81, i64* %2, align 8
  br label %302

82:                                               ; preds = %59
  %83 = load i64, i64* %3, align 8
  %84 = call i64 @tablejump_p(i64 %83, i32* null, i64* %9)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @delete_related_insns(i64 %87)
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %55, %51
  %92 = load i64, i64* %3, align 8
  %93 = call i64 @JUMP_P(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %156

95:                                               ; preds = %91
  %96 = load i64, i64* %3, align 8
  %97 = call i64 @PATTERN(i64 %96)
  %98 = call i64 @GET_CODE(i64 %97)
  %99 = load i64, i64* @ADDR_VEC, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i64, i64* %3, align 8
  %103 = call i64 @PATTERN(i64 %102)
  %104 = call i64 @GET_CODE(i64 %103)
  %105 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %156

107:                                              ; preds = %101, %95
  %108 = load i64, i64* %3, align 8
  %109 = call i64 @PATTERN(i64 %108)
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @GET_CODE(i64 %110)
  %112 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @XVECLEN(i64 %115, i32 %116)
  store i32 %117, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %138, %107
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load i64, i64* %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i64 @XVECEXP(i64 %123, i32 %124, i32 %125)
  %127 = call i64 @XEXP(i64 %126, i32 0)
  %128 = call i64 @LABEL_NUSES(i64 %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %122
  %131 = load i64, i64* %10, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @XVECEXP(i64 %131, i32 %132, i32 %133)
  %135 = call i64 @XEXP(i64 %134, i32 0)
  %136 = call i64 @delete_related_insns(i64 %135)
  br label %137

137:                                              ; preds = %130, %122
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %11, align 4
  br label %118

141:                                              ; preds = %118
  br label %142

142:                                              ; preds = %151, %141
  %143 = load i64, i64* %6, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i64, i64* %6, align 8
  %147 = call i64 @INSN_DELETED_P(i64 %146)
  %148 = icmp ne i64 %147, 0
  br label %149

149:                                              ; preds = %145, %142
  %150 = phi i1 [ false, %142 ], [ %148, %145 ]
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = load i64, i64* %6, align 8
  %153 = call i64 @NEXT_INSN(i64 %152)
  store i64 %153, i64* %6, align 8
  br label %142

154:                                              ; preds = %149
  %155 = load i64, i64* %6, align 8
  store i64 %155, i64* %2, align 8
  br label %302

156:                                              ; preds = %101, %91
  %157 = load i64, i64* %3, align 8
  %158 = call i64 @NONJUMP_INSN_P(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i64, i64* %3, align 8
  %162 = call i64 @CALL_P(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %195

164:                                              ; preds = %160, %156
  %165 = load i64, i64* %3, align 8
  %166 = call i64 @REG_NOTES(i64 %165)
  store i64 %166, i64* %5, align 8
  br label %167

167:                                              ; preds = %191, %164
  %168 = load i64, i64* %5, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %194

170:                                              ; preds = %167
  %171 = load i64, i64* %5, align 8
  %172 = call i64 @REG_NOTE_KIND(i64 %171)
  %173 = load i64, i64* @REG_LABEL, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = load i64, i64* %5, align 8
  %177 = call i64 @XEXP(i64 %176, i32 0)
  %178 = call i32 @LABEL_P(i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load i64, i64* %5, align 8
  %182 = call i64 @XEXP(i64 %181, i32 0)
  %183 = call i64 @LABEL_NUSES(i64 %182)
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i64, i64* %5, align 8
  %187 = call i64 @XEXP(i64 %186, i32 0)
  %188 = call i64 @delete_related_insns(i64 %187)
  br label %189

189:                                              ; preds = %185, %180
  br label %190

190:                                              ; preds = %189, %175, %170
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %5, align 8
  %193 = call i64 @XEXP(i64 %192, i32 1)
  store i64 %193, i64* %5, align 8
  br label %167

194:                                              ; preds = %167
  br label %195

195:                                              ; preds = %194, %160
  br label %196

196:                                              ; preds = %211, %195
  %197 = load i64, i64* %7, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = load i64, i64* %7, align 8
  %201 = call i64 @INSN_DELETED_P(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load i64, i64* %7, align 8
  %205 = call i64 @NOTE_P(i64 %204)
  %206 = icmp ne i64 %205, 0
  br label %207

207:                                              ; preds = %203, %199
  %208 = phi i1 [ true, %199 ], [ %206, %203 ]
  br label %209

209:                                              ; preds = %207, %196
  %210 = phi i1 [ false, %196 ], [ %208, %207 ]
  br i1 %210, label %211, label %214

211:                                              ; preds = %209
  %212 = load i64, i64* %7, align 8
  %213 = call i64 @PREV_INSN(i64 %212)
  store i64 %213, i64* %7, align 8
  br label %196

214:                                              ; preds = %209
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %244

217:                                              ; preds = %214
  %218 = load i64, i64* %3, align 8
  %219 = call i64 @NEXT_INSN(i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %244

221:                                              ; preds = %217
  %222 = load i64, i64* %3, align 8
  %223 = call i64 @NEXT_INSN(i64 %222)
  %224 = call i64 @JUMP_P(i64 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %244

226:                                              ; preds = %221
  %227 = load i64, i64* %3, align 8
  %228 = call i64 @NEXT_INSN(i64 %227)
  %229 = call i64 @PATTERN(i64 %228)
  %230 = call i64 @GET_CODE(i64 %229)
  %231 = load i64, i64* @ADDR_VEC, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %240, label %233

233:                                              ; preds = %226
  %234 = load i64, i64* %3, align 8
  %235 = call i64 @NEXT_INSN(i64 %234)
  %236 = call i64 @PATTERN(i64 %235)
  %237 = call i64 @GET_CODE(i64 %236)
  %238 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %233, %226
  %241 = load i64, i64* %3, align 8
  %242 = call i64 @NEXT_INSN(i64 %241)
  %243 = call i64 @delete_related_insns(i64 %242)
  store i64 %243, i64* %6, align 8
  br label %244

244:                                              ; preds = %240, %233, %221, %217, %214
  %245 = load i32, i32* %4, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %300

247:                                              ; preds = %244
  %248 = load i64, i64* %7, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %300

250:                                              ; preds = %247
  %251 = load i64, i64* %7, align 8
  %252 = call i64 @BARRIER_P(i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %300

254:                                              ; preds = %250
  br label %255

255:                                              ; preds = %298, %254
  %256 = load i64, i64* %6, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %299

258:                                              ; preds = %255
  %259 = load i64, i64* %6, align 8
  %260 = call i64 @GET_CODE(i64 %259)
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* @NOTE, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %258
  %266 = load i64, i64* %6, align 8
  %267 = call i64 @NOTE_LINE_NUMBER(i64 %266)
  %268 = load i64, i64* @NOTE_INSN_FUNCTION_END, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load i64, i64* %6, align 8
  %272 = call i64 @NEXT_INSN(i64 %271)
  store i64 %272, i64* %6, align 8
  br label %298

273:                                              ; preds = %265, %258
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* @CODE_LABEL, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %273
  %278 = load i64, i64* %6, align 8
  %279 = call i64 @INSN_DELETED_P(i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load i64, i64* %6, align 8
  %283 = call i64 @NEXT_INSN(i64 %282)
  store i64 %283, i64* %6, align 8
  br label %297

284:                                              ; preds = %277, %273
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* @BARRIER, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = load i64, i64* %6, align 8
  %290 = call i64 @INSN_P(i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288, %284
  %293 = load i64, i64* %6, align 8
  %294 = call i64 @delete_related_insns(i64 %293)
  store i64 %294, i64* %6, align 8
  br label %296

295:                                              ; preds = %288
  br label %299

296:                                              ; preds = %292
  br label %297

297:                                              ; preds = %296, %281
  br label %298

298:                                              ; preds = %297, %270
  br label %255

299:                                              ; preds = %295, %255
  br label %300

300:                                              ; preds = %299, %250, %247, %244
  %301 = load i64, i64* %6, align 8
  store i64 %301, i64* %2, align 8
  br label %302

302:                                              ; preds = %300, %154, %80, %37
  %303 = load i64, i64* %2, align 8
  ret i64 %303
}

declare dso_local i32 @LABEL_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @INSN_DELETED_P(i64) #1

declare dso_local i32 @delete_insn(i64) #1

declare dso_local i64 @BARRIER_P(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @JUMP_LABEL(i64) #1

declare dso_local i64 @LABEL_NUSES(i64) #1

declare dso_local i64 @tablejump_p(i64, i32*, i64*) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i64 @INSN_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
