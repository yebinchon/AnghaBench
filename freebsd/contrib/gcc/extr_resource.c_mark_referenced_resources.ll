; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_resource.c_mark_referenced_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_resource.c_mark_referenced_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resources = type { i32, i32, i32, i32, i32 }

@hard_regno_nregs = common dso_local global i32** null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@ZERO_EXTRACT = common dso_local global i32 0, align 4
@STRICT_LOW_PART = common dso_local global i32 0, align 4
@SEQUENCE = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@global_regs = common dso_local global i32* null, align 8
@REG_SETJMP = common dso_local global i32 0, align 4
@USE = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_referenced_resources(i32 %0, %struct.resources* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resources*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.resources* %1, %struct.resources** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @GET_CODE(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %327 [
    i32 142, label %25
    i32 140, label %25
    i32 141, label %25
    i32 139, label %25
    i32 134, label %25
    i32 130, label %25
    i32 136, label %25
    i32 131, label %26
    i32 133, label %70
    i32 135, label %104
    i32 144, label %124
    i32 128, label %127
    i32 148, label %127
    i32 129, label %130
    i32 147, label %133
    i32 146, label %154
    i32 132, label %162
    i32 143, label %197
    i32 145, label %198
    i32 138, label %322
    i32 137, label %322
  ]

25:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  br label %369

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @SUBREG_REG(i32 %27)
  %29 = call i32 @REG_P(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @SUBREG_REG(i32 %32)
  %34 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %33, %struct.resources* %34, i32 0)
  br label %69

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @subreg_regno(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32**, i32*** @hard_regno_nregs, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @GET_MODE(i32 %44)
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %38, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %51 = icmp ule i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @gcc_assert(i32 %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %65, %35
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.resources*, %struct.resources** %5, align 8
  %61 = getelementptr inbounds %struct.resources, %struct.resources* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @SET_HARD_REG_BIT(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %55

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %31
  br label %369

70:                                               ; preds = %3
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @REGNO(i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32**, i32*** @hard_regno_nregs, align 8
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @GET_MODE(i32 %79)
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %73, %82
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %86 = icmp ule i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @gcc_assert(i32 %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %100, %70
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.resources*, %struct.resources** %5, align 8
  %96 = getelementptr inbounds %struct.resources, %struct.resources* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @SET_HARD_REG_BIT(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %90

103:                                              ; preds = %90
  br label %369

104:                                              ; preds = %3
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @MEM_READONLY_P(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.resources*, %struct.resources** %5, align 8
  %110 = getelementptr inbounds %struct.resources, %struct.resources* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  br label %114

111:                                              ; preds = %104
  %112 = load %struct.resources*, %struct.resources** %5, align 8
  %113 = getelementptr inbounds %struct.resources, %struct.resources* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @MEM_VOLATILE_P(i32 %115)
  %117 = load %struct.resources*, %struct.resources** %5, align 8
  %118 = getelementptr inbounds %struct.resources, %struct.resources* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @XEXP(i32 %121, i32 0)
  %123 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %122, %struct.resources* %123, i32 0)
  br label %369

124:                                              ; preds = %3
  %125 = load %struct.resources*, %struct.resources** %5, align 8
  %126 = getelementptr inbounds %struct.resources, %struct.resources* %125, i32 0, i32 3
  store i32 1, i32* %126, align 4
  br label %369

127:                                              ; preds = %3, %3
  %128 = load %struct.resources*, %struct.resources** %5, align 8
  %129 = getelementptr inbounds %struct.resources, %struct.resources* %128, i32 0, i32 2
  store i32 1, i32* %129, align 4
  br label %369

130:                                              ; preds = %3
  %131 = load %struct.resources*, %struct.resources** %5, align 8
  %132 = getelementptr inbounds %struct.resources, %struct.resources* %131, i32 0, i32 2
  store i32 1, i32* %132, align 4
  br label %328

133:                                              ; preds = %3
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @MEM_VOLATILE_P(i32 %134)
  %136 = load %struct.resources*, %struct.resources** %5, align 8
  %137 = getelementptr inbounds %struct.resources, %struct.resources* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  store i32 0, i32* %8, align 4
  br label %140

140:                                              ; preds = %150, %133
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i32 %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @ASM_OPERANDS_INPUT(i32 %146, i32 %147)
  %149 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %148, %struct.resources* %149, i32 0)
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %140

153:                                              ; preds = %140
  br label %369

154:                                              ; preds = %3
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @XEXP(i32 %155, i32 0)
  %157 = call i32 @XEXP(i32 %156, i32 0)
  %158 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %157, %struct.resources* %158, i32 0)
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @XEXP(i32 %159, i32 1)
  %161 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %160, %struct.resources* %161, i32 0)
  br label %369

162:                                              ; preds = %3
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @SET_SRC(i32 %163)
  %165 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %164, %struct.resources* %165, i32 0)
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @SET_DEST(i32 %166)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @GET_CODE(i32 %168)
  %170 = load i32, i32* @ZERO_EXTRACT, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %177, label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @GET_CODE(i32 %173)
  %175 = load i32, i32* @STRICT_LOW_PART, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172, %162
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %178, %struct.resources* %179, i32 0)
  br label %188

180:                                              ; preds = %172
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @GET_CODE(i32 %181)
  %183 = icmp eq i32 %182, 131
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @SUBREG_REG(i32 %185)
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %184, %180
  br label %188

188:                                              ; preds = %187, %177
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @MEM_P(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @XEXP(i32 %193, i32 0)
  %195 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %194, %struct.resources* %195, i32 0)
  br label %196

196:                                              ; preds = %192, %188
  br label %369

197:                                              ; preds = %3
  br label %369

198:                                              ; preds = %3
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %321

201:                                              ; preds = %198
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @PREV_INSN(i32 %202)
  store i32 %203, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @NEXT_INSN(i32 %204)
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %201
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @NEXT_INSN(i32 %209)
  %211 = call i32 @PATTERN(i32 %210)
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = call i32 @XVECLEN(i32 %212, i32 0)
  store i32 %213, i32* %18, align 4
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @GET_CODE(i32 %214)
  %216 = load i32, i32* @SEQUENCE, align 4
  %217 = icmp eq i32 %215, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @gcc_assert(i32 %218)
  br label %220

220:                                              ; preds = %208, %201
  %221 = load %struct.resources*, %struct.resources** %5, align 8
  %222 = getelementptr inbounds %struct.resources, %struct.resources* %221, i32 0, i32 1
  store i32 1, i32* %222, align 4
  %223 = load %struct.resources*, %struct.resources** %5, align 8
  %224 = getelementptr inbounds %struct.resources, %struct.resources* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %227 = call i32 @SET_HARD_REG_BIT(i32 %225, i32 %226)
  %228 = load i32, i32* @frame_pointer_needed, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %220
  %231 = load %struct.resources*, %struct.resources** %5, align 8
  %232 = getelementptr inbounds %struct.resources, %struct.resources* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %235 = call i32 @SET_HARD_REG_BIT(i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %230, %220
  store i32 0, i32* %19, align 4
  br label %237

237:                                              ; preds = %255, %236
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %240 = icmp ult i32 %238, %239
  br i1 %240, label %241, label %258

241:                                              ; preds = %237
  %242 = load i32*, i32** @global_regs, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %241
  %249 = load %struct.resources*, %struct.resources** %5, align 8
  %250 = getelementptr inbounds %struct.resources, %struct.resources* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %19, align 4
  %253 = call i32 @SET_HARD_REG_BIT(i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %248, %241
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %19, align 4
  br label %237

258:                                              ; preds = %237
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @REG_SETJMP, align 4
  %261 = call i32 @find_reg_note(i32 %259, i32 %260, i32* null)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load %struct.resources*, %struct.resources** %5, align 8
  %265 = getelementptr inbounds %struct.resources, %struct.resources* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @SET_HARD_REG_SET(i32 %266)
  br label %268

268:                                              ; preds = %263, %258
  %269 = load i32, i32* %4, align 4
  %270 = call i32 @CALL_INSN_FUNCTION_USAGE(i32 %269)
  store i32 %270, i32* %20, align 4
  br label %271

271:                                              ; preds = %317, %268
  %272 = load i32, i32* %20, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %320

274:                                              ; preds = %271
  %275 = load i32, i32* %20, align 4
  %276 = call i32 @XEXP(i32 %275, i32 0)
  %277 = call i32 @GET_CODE(i32 %276)
  %278 = load i32, i32* @USE, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %316

280:                                              ; preds = %274
  store i32 1, i32* %19, align 4
  br label %281

281:                                              ; preds = %303, %280
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* %18, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %306

285:                                              ; preds = %281
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %19, align 4
  %288 = call i32 @XVECEXP(i32 %286, i32 0, i32 %287)
  %289 = call i32 @PATTERN(i32 %288)
  store i32 %289, i32* %21, align 4
  %290 = load i32, i32* %21, align 4
  %291 = call i32 @GET_CODE(i32 %290)
  %292 = icmp eq i32 %291, 132
  br i1 %292, label %293, label %302

293:                                              ; preds = %285
  %294 = load i32, i32* %21, align 4
  %295 = call i32 @SET_DEST(i32 %294)
  %296 = load i32, i32* %20, align 4
  %297 = call i32 @XEXP(i32 %296, i32 0)
  %298 = call i32 @XEXP(i32 %297, i32 0)
  %299 = call i32 @rtx_equal_p(i32 %295, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  br label %306

302:                                              ; preds = %293, %285
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %19, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %19, align 4
  br label %281

306:                                              ; preds = %301, %281
  %307 = load i32, i32* %19, align 4
  %308 = load i32, i32* %18, align 4
  %309 = icmp sge i32 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %306
  %311 = load i32, i32* %20, align 4
  %312 = call i32 @XEXP(i32 %311, i32 0)
  %313 = call i32 @XEXP(i32 %312, i32 0)
  %314 = load %struct.resources*, %struct.resources** %5, align 8
  call void @mark_referenced_resources(i32 %313, %struct.resources* %314, i32 0)
  br label %315

315:                                              ; preds = %310, %306
  br label %316

316:                                              ; preds = %315, %274
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %20, align 4
  %319 = call i32 @XEXP(i32 %318, i32 1)
  store i32 %319, i32* %20, align 4
  br label %271

320:                                              ; preds = %271
  br label %321

321:                                              ; preds = %320, %198
  br label %322

322:                                              ; preds = %3, %3, %321
  %323 = load i32, i32* %4, align 4
  %324 = call i32 @PATTERN(i32 %323)
  %325 = load %struct.resources*, %struct.resources** %5, align 8
  %326 = load i32, i32* %6, align 4
  call void @mark_referenced_resources(i32 %324, %struct.resources* %325, i32 %326)
  br label %369

327:                                              ; preds = %3
  br label %328

328:                                              ; preds = %327, %130
  %329 = load i32, i32* %7, align 4
  %330 = call i8* @GET_RTX_FORMAT(i32 %329)
  store i8* %330, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %331

331:                                              ; preds = %366, %328
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* %7, align 4
  %334 = call i32 @GET_RTX_LENGTH(i32 %333)
  %335 = icmp slt i32 %332, %334
  br i1 %335, label %336, label %369

336:                                              ; preds = %331
  %337 = load i8*, i8** %11, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %11, align 8
  %339 = load i8, i8* %337, align 1
  %340 = sext i8 %339 to i32
  switch i32 %340, label %365 [
    i32 101, label %341
    i32 69, label %347
  ]

341:                                              ; preds = %336
  %342 = load i32, i32* %4, align 4
  %343 = load i32, i32* %8, align 4
  %344 = call i32 @XEXP(i32 %342, i32 %343)
  %345 = load %struct.resources*, %struct.resources** %5, align 8
  %346 = load i32, i32* %6, align 4
  call void @mark_referenced_resources(i32 %344, %struct.resources* %345, i32 %346)
  br label %365

347:                                              ; preds = %336
  store i32 0, i32* %9, align 4
  br label %348

348:                                              ; preds = %361, %347
  %349 = load i32, i32* %9, align 4
  %350 = load i32, i32* %4, align 4
  %351 = load i32, i32* %8, align 4
  %352 = call i32 @XVECLEN(i32 %350, i32 %351)
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %364

354:                                              ; preds = %348
  %355 = load i32, i32* %4, align 4
  %356 = load i32, i32* %8, align 4
  %357 = load i32, i32* %9, align 4
  %358 = call i32 @XVECEXP(i32 %355, i32 %356, i32 %357)
  %359 = load %struct.resources*, %struct.resources** %5, align 8
  %360 = load i32, i32* %6, align 4
  call void @mark_referenced_resources(i32 %358, %struct.resources* %359, i32 %360)
  br label %361

361:                                              ; preds = %354
  %362 = load i32, i32* %9, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %9, align 4
  br label %348

364:                                              ; preds = %348
  br label %365

365:                                              ; preds = %336, %364, %341
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %8, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %8, align 4
  br label %331

369:                                              ; preds = %25, %69, %103, %114, %124, %127, %153, %154, %196, %197, %322, %331
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @subreg_regno(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @MEM_READONLY_P(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_LENGTH(i32) #1

declare dso_local i32 @ASM_OPERANDS_INPUT(i32, i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @PREV_INSN(i32) #1

declare dso_local i32 @NEXT_INSN(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @find_reg_note(i32, i32, i32*) #1

declare dso_local i32 @SET_HARD_REG_SET(i32) #1

declare dso_local i32 @CALL_INSN_FUNCTION_USAGE(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
