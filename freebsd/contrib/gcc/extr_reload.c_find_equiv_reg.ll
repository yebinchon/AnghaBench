; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_find_equiv_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_find_equiv_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@flag_float_store = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i64 0, align 8
@PARAM_MAX_RELOAD_SEARCH_INSNS = common dso_local global i32 0, align 4
@reload_first_uid = common dso_local global i64 0, align 8
@REG_EQUIV = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@reg_class_contents = common dso_local global i32* null, align 8
@REG_UNUSED = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@n_reloads = common dso_local global i32 0, align 4
@rld = common dso_local global %struct.TYPE_2__* null, align 8
@call_used_regs = common dso_local global i64* null, align 8
@COND_EXEC = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@reg_equiv_memory_loc = common dso_local global i64* null, align 8
@PARALLEL = common dso_local global i64 0, align 8
@REG_INC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_equiv_reg(i64 %0, i64 %1, i32 %2, i32 %3, i16* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i16* %4, i16** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %16, align 8
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %30, align 4
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %7
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %22, align 4
  br label %133

56:                                               ; preds = %7
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @REG_P(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @REGNO(i64 %61)
  store i32 %62, i32* %22, align 4
  br label %132

63:                                               ; preds = %56
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @MEM_P(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @XEXP(i64 %68, i32 0)
  %70 = call i64 @GET_CODE(i64 %69)
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %31, align 4
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @MEM_VOLATILE_P(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i64 0, i64* %8, align 8
  br label %1164

76:                                               ; preds = %67
  %77 = load i64, i64* @flag_float_store, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @GET_MODE(i64 %80)
  %82 = call i64 @SCALAR_FLOAT_MODE_P(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i64 0, i64* %8, align 8
  br label %1164

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %31, align 4
  switch i32 %86, label %88 [
    i32 132, label %87
    i32 129, label %87
    i32 133, label %87
    i32 130, label %87
    i32 131, label %87
    i32 128, label %87
  ]

87:                                               ; preds = %85, %85, %85, %85, %85, %85
  store i64 0, i64* %8, align 8
  br label %1164

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88
  store i32 1, i32* %24, align 4
  br label %131

90:                                               ; preds = %63
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @CONSTANT_P(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, i32* %25, align 4
  br label %130

95:                                               ; preds = %90
  %96 = load i64, i64* %9, align 8
  %97 = call i64 @GET_CODE(i64 %96)
  %98 = load i64, i64* @PLUS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @XEXP(i64 %101, i32 0)
  %103 = load i64, i64* @stack_pointer_rtx, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i64, i64* %9, align 8
  %107 = call i64 @XEXP(i64 %106, i32 1)
  %108 = call i64 @CONSTANT_P(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* %27, align 4
  store i32 1, i32* %25, align 4
  br label %129

111:                                              ; preds = %105, %100, %95
  %112 = load i64, i64* %9, align 8
  %113 = call i64 @GET_CODE(i64 %112)
  %114 = load i64, i64* @PLUS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @XEXP(i64 %117, i32 0)
  %119 = load i64, i64* @frame_pointer_rtx, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i64, i64* %9, align 8
  %123 = call i64 @XEXP(i64 %122, i32 1)
  %124 = call i64 @CONSTANT_P(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 1, i32* %25, align 4
  br label %128

127:                                              ; preds = %121, %116, %111
  store i64 0, i64* %8, align 8
  br label %1164

128:                                              ; preds = %126
  br label %129

129:                                              ; preds = %128, %110
  br label %130

130:                                              ; preds = %129, %94
  br label %131

131:                                              ; preds = %130, %89
  br label %132

132:                                              ; preds = %131, %60
  br label %133

133:                                              ; preds = %132, %54
  store i32 0, i32* %30, align 4
  br label %134

134:                                              ; preds = %133, %373, %379, %413, %420
  %135 = load i64, i64* %16, align 8
  %136 = call i64 @PREV_INSN(i64 %135)
  store i64 %136, i64* %16, align 8
  %137 = load i32, i32* %30, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %30, align 4
  %139 = load i64, i64* %16, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %134
  %142 = load i64, i64* %16, align 8
  %143 = call i64 @LABEL_P(i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %30, align 4
  %147 = load i32, i32* @PARAM_MAX_RELOAD_SEARCH_INSNS, align 4
  %148 = call i32 @PARAM_VALUE(i32 %147)
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145, %141, %134
  store i64 0, i64* %8, align 8
  br label %1164

151:                                              ; preds = %145
  %152 = load i64, i64* %16, align 8
  %153 = call i64 @NONJUMP_INSN_P(i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %420

155:                                              ; preds = %151
  %156 = load i16*, i16** %13, align 8
  %157 = icmp ne i16* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i16*, i16** %13, align 8
  %160 = icmp ne i16* %159, inttoptr (i64 1 to i16*)
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i64, i64* %16, align 8
  %163 = call i64 @INSN_UID(i64 %162)
  %164 = load i64, i64* @reload_first_uid, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %420

166:                                              ; preds = %161, %158, %155
  %167 = load i64, i64* %16, align 8
  %168 = call i64 @single_set(i64 %167)
  store i64 %168, i64* %21, align 8
  %169 = load i64, i64* %21, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %419

171:                                              ; preds = %166
  %172 = load i32, i32* %22, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load i64, i64* %21, align 8
  %176 = call i64 @SET_SRC(i64 %175)
  %177 = call i32 @true_regnum(i64 %176)
  %178 = load i32, i32* %22, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %174
  %181 = load i64, i64* %21, align 8
  %182 = call i64 @SET_DEST(i64 %181)
  store i64 %182, i64* %18, align 8
  %183 = call i32 @true_regnum(i64 %182)
  store i32 %183, i32* %23, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %366, label %185

185:                                              ; preds = %180, %174, %171
  %186 = load i32, i32* %22, align 4
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load i64, i64* %21, align 8
  %190 = call i64 @SET_DEST(i64 %189)
  %191 = call i32 @true_regnum(i64 %190)
  %192 = load i32, i32* %22, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load i64, i64* %21, align 8
  %196 = call i64 @SET_SRC(i64 %195)
  store i64 %196, i64* %18, align 8
  %197 = call i32 @true_regnum(i64 %196)
  store i32 %197, i32* %23, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %366, label %199

199:                                              ; preds = %194, %188, %185
  %200 = load i32, i32* %25, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %199
  %203 = load i64, i64* %21, align 8
  %204 = call i64 @SET_SRC(i64 %203)
  %205 = load i64, i64* %9, align 8
  %206 = call i64 @rtx_equal_p(i64 %204, i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %219

208:                                              ; preds = %202
  %209 = load i64, i64* %21, align 8
  %210 = call i64 @SET_DEST(i64 %209)
  %211 = load i64, i64* %9, align 8
  %212 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %210, i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %208
  %215 = load i64, i64* %21, align 8
  %216 = call i64 @SET_DEST(i64 %215)
  store i64 %216, i64* %18, align 8
  %217 = call i32 @true_regnum(i64 %216)
  store i32 %217, i32* %23, align 4
  %218 = icmp sge i32 %217, 0
  br i1 %218, label %366, label %219

219:                                              ; preds = %214, %208, %202, %199
  %220 = load i32, i32* %24, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %219
  %223 = load i64, i64* %21, align 8
  %224 = call i64 @SET_DEST(i64 %223)
  store i64 %224, i64* %18, align 8
  %225 = call i32 @true_regnum(i64 %224)
  store i32 %225, i32* %23, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i64, i64* %9, align 8
  %229 = load i64, i64* %21, align 8
  %230 = call i64 @SET_SRC(i64 %229)
  %231 = call i64 @rtx_renumbered_equal_p(i64 %228, i64 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %366, label %233

233:                                              ; preds = %227, %222, %219
  %234 = load i32, i32* %24, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %233
  %237 = load i64, i64* %21, align 8
  %238 = call i64 @SET_SRC(i64 %237)
  store i64 %238, i64* %18, align 8
  %239 = call i32 @true_regnum(i64 %238)
  store i32 %239, i32* %23, align 4
  %240 = icmp sge i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load i64, i64* %9, align 8
  %243 = load i64, i64* %21, align 8
  %244 = call i64 @SET_DEST(i64 %243)
  %245 = call i64 @rtx_renumbered_equal_p(i64 %242, i64 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %366, label %247

247:                                              ; preds = %241, %236, %233
  %248 = load i32, i32* %25, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %314

250:                                              ; preds = %247
  %251 = load i64, i64* %16, align 8
  %252 = call i64 @REG_NOTES(i64 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %314

254:                                              ; preds = %250
  %255 = load i64, i64* %16, align 8
  %256 = load i32, i32* @REG_EQUIV, align 4
  %257 = load i64, i64* @NULL_RTX, align 8
  %258 = call i64 @find_reg_note(i64 %255, i32 %256, i64 %257)
  store i64 %258, i64* %32, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %314

260:                                              ; preds = %254
  %261 = load i64, i64* %32, align 8
  %262 = call i64 @XEXP(i64 %261, i32 0)
  %263 = load i64, i64* %9, align 8
  %264 = call i64 @rtx_equal_p(i64 %262, i64 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %260
  %267 = load i64, i64* %21, align 8
  %268 = call i64 @SET_DEST(i64 %267)
  store i64 %268, i64* %18, align 8
  %269 = call i32 @true_regnum(i64 %268)
  store i32 %269, i32* %23, align 4
  %270 = icmp sge i32 %269, 0
  br i1 %270, label %366, label %271

271:                                              ; preds = %266, %260
  %272 = load i64, i64* %21, align 8
  %273 = call i64 @SET_DEST(i64 %272)
  %274 = call i64 @REG_P(i64 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %314

276:                                              ; preds = %271
  %277 = load i64, i64* %32, align 8
  %278 = call i64 @XEXP(i64 %277, i32 0)
  %279 = call i64 @GET_CODE(i64 %278)
  %280 = load i64, i64* @CONST_DOUBLE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %314

282:                                              ; preds = %276
  %283 = load i64, i64* %32, align 8
  %284 = call i64 @XEXP(i64 %283, i32 0)
  %285 = call i64 @GET_MODE(i64 %284)
  %286 = call i64 @SCALAR_FLOAT_MODE_P(i64 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %314

288:                                              ; preds = %282
  %289 = load i64, i64* %9, align 8
  %290 = call i64 @GET_CODE(i64 %289)
  %291 = load i64, i64* @CONST_INT, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %314

293:                                              ; preds = %288
  %294 = load i64, i64* %32, align 8
  %295 = call i64 @XEXP(i64 %294, i32 0)
  %296 = load i32, i32* @VOIDmode, align 4
  %297 = call i64 @operand_subword(i64 %295, i32 0, i32 0, i32 %296)
  store i64 %297, i64* %17, align 8
  %298 = icmp ne i64 0, %297
  br i1 %298, label %299, label %314

299:                                              ; preds = %293
  %300 = load i64, i64* %9, align 8
  %301 = load i64, i64* %17, align 8
  %302 = call i64 @rtx_equal_p(i64 %300, i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %314

304:                                              ; preds = %299
  %305 = load i64, i64* %21, align 8
  %306 = call i64 @SET_DEST(i64 %305)
  %307 = load i32, i32* @VOIDmode, align 4
  %308 = call i64 @operand_subword(i64 %306, i32 0, i32 0, i32 %307)
  store i64 %308, i64* %18, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %304
  %311 = load i64, i64* %18, align 8
  %312 = call i32 @true_regnum(i64 %311)
  store i32 %312, i32* %23, align 4
  %313 = icmp sge i32 %312, 0
  br i1 %313, label %366, label %314

314:                                              ; preds = %310, %304, %299, %293, %288, %282, %276, %271, %254, %250, %247
  %315 = load i32, i32* %25, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %419

317:                                              ; preds = %314
  %318 = load i64, i64* %16, align 8
  %319 = load i32, i32* @REG_EQUIV, align 4
  %320 = load i64, i64* @NULL_RTX, align 8
  %321 = call i64 @find_reg_note(i64 %318, i32 %319, i64 %320)
  store i64 %321, i64* %32, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %419

323:                                              ; preds = %317
  %324 = load i64, i64* %21, align 8
  %325 = call i64 @SET_DEST(i64 %324)
  %326 = call i64 @REG_P(i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %419

328:                                              ; preds = %323
  %329 = load i64, i64* %32, align 8
  %330 = call i64 @XEXP(i64 %329, i32 0)
  %331 = call i64 @GET_CODE(i64 %330)
  %332 = load i64, i64* @CONST_DOUBLE, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %419

334:                                              ; preds = %328
  %335 = load i64, i64* %32, align 8
  %336 = call i64 @XEXP(i64 %335, i32 0)
  %337 = call i64 @GET_MODE(i64 %336)
  %338 = call i64 @SCALAR_FLOAT_MODE_P(i64 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %419

340:                                              ; preds = %334
  %341 = load i64, i64* %9, align 8
  %342 = call i64 @GET_CODE(i64 %341)
  %343 = load i64, i64* @CONST_INT, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %419

345:                                              ; preds = %340
  %346 = load i64, i64* %32, align 8
  %347 = call i64 @XEXP(i64 %346, i32 0)
  %348 = load i32, i32* @VOIDmode, align 4
  %349 = call i64 @operand_subword(i64 %347, i32 1, i32 0, i32 %348)
  store i64 %349, i64* %17, align 8
  %350 = icmp ne i64 0, %349
  br i1 %350, label %351, label %419

351:                                              ; preds = %345
  %352 = load i64, i64* %9, align 8
  %353 = load i64, i64* %17, align 8
  %354 = call i64 @rtx_equal_p(i64 %352, i64 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %419

356:                                              ; preds = %351
  %357 = load i64, i64* %21, align 8
  %358 = call i64 @SET_DEST(i64 %357)
  %359 = load i32, i32* @VOIDmode, align 4
  %360 = call i64 @operand_subword(i64 %358, i32 1, i32 0, i32 %359)
  store i64 %360, i64* %18, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %419

362:                                              ; preds = %356
  %363 = load i64, i64* %18, align 8
  %364 = call i32 @true_regnum(i64 %363)
  store i32 %364, i32* %23, align 4
  %365 = icmp sge i32 %364, 0
  br i1 %365, label %366, label %419

366:                                              ; preds = %362, %310, %266, %241, %227, %214, %194, %180
  %367 = load i32, i32* %12, align 4
  %368 = icmp sge i32 %367, 0
  br i1 %368, label %369, label %375

369:                                              ; preds = %366
  %370 = load i32, i32* %23, align 4
  %371 = load i32, i32* %12, align 4
  %372 = icmp ne i32 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  br label %134

374:                                              ; preds = %369
  br label %416

375:                                              ; preds = %366
  %376 = load i32, i32* %23, align 4
  %377 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %378 = icmp uge i32 %376, %377
  br i1 %378, label %379, label %380

379:                                              ; preds = %375
  br label %134

380:                                              ; preds = %375
  %381 = load i32**, i32*** @hard_regno_nregs, align 8
  %382 = load i32, i32* %23, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32*, i32** %381, i64 %383
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %15, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = sub nsw i32 %389, 1
  store i32 %390, i32* %33, align 4
  br label %391

391:                                              ; preds = %407, %380
  %392 = load i32, i32* %33, align 4
  %393 = icmp sge i32 %392, 0
  br i1 %393, label %394, label %410

394:                                              ; preds = %391
  %395 = load i32*, i32** @reg_class_contents, align 8
  %396 = load i32, i32* %11, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %23, align 4
  %401 = load i32, i32* %33, align 4
  %402 = add nsw i32 %400, %401
  %403 = call i32 @TEST_HARD_REG_BIT(i32 %399, i32 %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %406, label %405

405:                                              ; preds = %394
  br label %410

406:                                              ; preds = %394
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %33, align 4
  %409 = add nsw i32 %408, -1
  store i32 %409, i32* %33, align 4
  br label %391

410:                                              ; preds = %405, %391
  %411 = load i32, i32* %33, align 4
  %412 = icmp sge i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  br label %134

414:                                              ; preds = %410
  br label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415, %374
  %417 = load i64, i64* %18, align 8
  store i64 %417, i64* %19, align 8
  %418 = load i64, i64* %16, align 8
  store i64 %418, i64* %20, align 8
  br label %421

419:                                              ; preds = %362, %356, %351, %345, %340, %334, %328, %323, %317, %314, %166
  br label %420

420:                                              ; preds = %419, %161, %151
  br label %134

421:                                              ; preds = %416
  %422 = load i64, i64* %20, align 8
  %423 = call i64 @REG_NOTES(i64 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %432

425:                                              ; preds = %421
  %426 = load i64, i64* %20, align 8
  %427 = load i32, i32* @REG_UNUSED, align 4
  %428 = load i64, i64* %19, align 8
  %429 = call i64 @find_reg_note(i64 %426, i32 %427, i64 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %425
  store i64 0, i64* %8, align 8
  br label %1164

432:                                              ; preds = %425, %421
  %433 = load i32, i32* %23, align 4
  %434 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %448, label %436

436:                                              ; preds = %432
  %437 = load i32, i32* %22, align 4
  %438 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %439 = icmp eq i32 %437, %438
  br i1 %439, label %448, label %440

440:                                              ; preds = %436
  %441 = load i32, i32* %24, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %440
  %444 = load i64, i64* @stack_pointer_rtx, align 8
  %445 = load i64, i64* %9, align 8
  %446 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %444, i64 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %443, %436, %432
  store i32 1, i32* %27, align 4
  br label %449

449:                                              ; preds = %448, %443, %440
  %450 = load i64, i64* %19, align 8
  %451 = call i64 @GET_MODE(i64 %450)
  %452 = load i32, i32* %15, align 4
  %453 = zext i32 %452 to i64
  %454 = icmp ne i64 %451, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %449
  store i64 0, i64* %8, align 8
  br label %1164

456:                                              ; preds = %449
  %457 = load i32, i32* %24, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %482

459:                                              ; preds = %456
  %460 = load i64, i64* %19, align 8
  %461 = load i64, i64* %20, align 8
  %462 = call i64 @single_set(i64 %461)
  %463 = call i64 @SET_DEST(i64 %462)
  %464 = icmp eq i64 %460, %463
  br i1 %464, label %465, label %482

465:                                              ; preds = %459
  %466 = load i32, i32* %23, align 4
  %467 = load i32, i32* %23, align 4
  %468 = load i32**, i32*** @hard_regno_nregs, align 8
  %469 = load i32, i32* %23, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32*, i32** %468, i64 %470
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %15, align 4
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %467, %476
  %478 = load i64, i64* %9, align 8
  %479 = call i64 @refers_to_regno_for_reload_p(i32 %466, i32 %477, i64 %478, i64* null)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %465
  store i64 0, i64* %8, align 8
  br label %1164

482:                                              ; preds = %465, %459, %456
  %483 = load i32, i32* %22, align 4
  %484 = icmp sge i32 %483, 0
  br i1 %484, label %485, label %499

485:                                              ; preds = %482
  %486 = load i32, i32* %22, align 4
  %487 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %488 = icmp ult i32 %486, %487
  br i1 %488, label %489, label %499

489:                                              ; preds = %485
  %490 = load i32**, i32*** @hard_regno_nregs, align 8
  %491 = load i32, i32* %22, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32*, i32** %490, i64 %492
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %15, align 4
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  %498 = load i32, i32* %497, align 4
  store i32 %498, i32* %28, align 4
  br label %500

499:                                              ; preds = %485, %482
  store i32 1, i32* %28, align 4
  br label %500

500:                                              ; preds = %499, %489
  %501 = load i32**, i32*** @hard_regno_nregs, align 8
  %502 = load i32, i32* %23, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32*, i32** %501, i64 %503
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %15, align 4
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  store i32 %509, i32* %29, align 4
  %510 = load i32, i32* %24, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %528, label %512

512:                                              ; preds = %500
  %513 = load i32, i32* %25, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %528, label %515

515:                                              ; preds = %512
  %516 = load i32, i32* %22, align 4
  %517 = load i32, i32* %28, align 4
  %518 = add nsw i32 %516, %517
  %519 = load i32, i32* %23, align 4
  %520 = icmp sgt i32 %518, %519
  br i1 %520, label %521, label %528

521:                                              ; preds = %515
  %522 = load i32, i32* %22, align 4
  %523 = load i32, i32* %23, align 4
  %524 = load i32, i32* %29, align 4
  %525 = add nsw i32 %523, %524
  %526 = icmp slt i32 %522, %525
  br i1 %526, label %527, label %528

527:                                              ; preds = %521
  store i64 0, i64* %8, align 8
  br label %1164

528:                                              ; preds = %521, %515, %512, %500
  %529 = load i16*, i16** %13, align 8
  %530 = icmp ne i16* %529, null
  br i1 %530, label %531, label %555

531:                                              ; preds = %528
  %532 = load i16*, i16** %13, align 8
  %533 = icmp ne i16* %532, inttoptr (i64 1 to i16*)
  br i1 %533, label %534, label %555

534:                                              ; preds = %531
  store i32 0, i32* %34, align 4
  br label %535

535:                                              ; preds = %551, %534
  %536 = load i32, i32* %34, align 4
  %537 = load i32, i32* %29, align 4
  %538 = icmp slt i32 %536, %537
  br i1 %538, label %539, label %554

539:                                              ; preds = %535
  %540 = load i16*, i16** %13, align 8
  %541 = load i32, i32* %23, align 4
  %542 = load i32, i32* %34, align 4
  %543 = add nsw i32 %541, %542
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i16, i16* %540, i64 %544
  %546 = load i16, i16* %545, align 2
  %547 = sext i16 %546 to i32
  %548 = icmp sge i32 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %539
  store i64 0, i64* %8, align 8
  br label %1164

550:                                              ; preds = %539
  br label %551

551:                                              ; preds = %550
  %552 = load i32, i32* %34, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %34, align 4
  br label %535

554:                                              ; preds = %535
  br label %555

555:                                              ; preds = %554, %531, %528
  %556 = load i16*, i16** %13, align 8
  %557 = icmp ne i16* %556, null
  br i1 %557, label %558, label %619

558:                                              ; preds = %555
  store i32 0, i32* %35, align 4
  br label %559

559:                                              ; preds = %615, %558
  %560 = load i32, i32* %35, align 4
  %561 = load i32, i32* @n_reloads, align 4
  %562 = icmp slt i32 %560, %561
  br i1 %562, label %563, label %618

563:                                              ; preds = %559
  %564 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %565 = load i32, i32* %35, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %614

571:                                              ; preds = %563
  %572 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %573 = load i32, i32* %35, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %572, i64 %574
  %576 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %575, i32 0, i32 1
  %577 = load i64, i64* %576, align 8
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %614

579:                                              ; preds = %571
  %580 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %581 = load i32, i32* %35, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %580, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %583, i32 0, i32 0
  %585 = load i64, i64* %584, align 8
  %586 = call i32 @REGNO(i64 %585)
  store i32 %586, i32* %36, align 4
  %587 = load i32**, i32*** @hard_regno_nregs, align 8
  %588 = load i32, i32* %36, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32*, i32** %587, i64 %589
  %591 = load i32*, i32** %590, align 8
  %592 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rld, align 8
  %593 = load i32, i32* %35, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %595, i32 0, i32 0
  %597 = load i64, i64* %596, align 8
  %598 = call i64 @GET_MODE(i64 %597)
  %599 = getelementptr inbounds i32, i32* %591, i64 %598
  %600 = load i32, i32* %599, align 4
  store i32 %600, i32* %37, align 4
  %601 = load i32, i32* %36, align 4
  %602 = load i32, i32* %23, align 4
  %603 = load i32, i32* %29, align 4
  %604 = add nsw i32 %602, %603
  %605 = icmp slt i32 %601, %604
  br i1 %605, label %606, label %613

606:                                              ; preds = %579
  %607 = load i32, i32* %36, align 4
  %608 = load i32, i32* %37, align 4
  %609 = add nsw i32 %607, %608
  %610 = load i32, i32* %23, align 4
  %611 = icmp sgt i32 %609, %610
  br i1 %611, label %612, label %613

612:                                              ; preds = %606
  store i64 0, i64* %8, align 8
  br label %1164

613:                                              ; preds = %606, %579
  br label %614

614:                                              ; preds = %613, %571, %563
  br label %615

615:                                              ; preds = %614
  %616 = load i32, i32* %35, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %35, align 4
  br label %559

618:                                              ; preds = %559
  br label %619

619:                                              ; preds = %618, %555
  %620 = load i32, i32* %24, align 4
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %629

622:                                              ; preds = %619
  %623 = load i64, i64* %9, align 8
  %624 = call i64 @XEXP(i64 %623, i32 0)
  %625 = call i32 @CONSTANT_ADDRESS_P(i64 %624)
  %626 = icmp ne i32 %625, 0
  %627 = xor i1 %626, true
  %628 = zext i1 %627 to i32
  store i32 %628, i32* %26, align 4
  br label %629

629:                                              ; preds = %622, %619
  %630 = load i64, i64* %10, align 8
  store i64 %630, i64* %16, align 8
  br label %631

631:                                              ; preds = %629, %1163
  %632 = load i64, i64* %16, align 8
  %633 = call i64 @PREV_INSN(i64 %632)
  store i64 %633, i64* %16, align 8
  %634 = load i64, i64* %16, align 8
  %635 = load i64, i64* %20, align 8
  %636 = icmp eq i64 %634, %635
  br i1 %636, label %637, label %639

637:                                              ; preds = %631
  %638 = load i64, i64* %19, align 8
  store i64 %638, i64* %8, align 8
  br label %1164

639:                                              ; preds = %631
  %640 = load i64, i64* %16, align 8
  %641 = call i64 @CALL_P(i64 %640)
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %719

643:                                              ; preds = %639
  %644 = load i32, i32* %24, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %649, label %646

646:                                              ; preds = %643
  %647 = load i32, i32* %27, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %649, label %650

649:                                              ; preds = %646, %643
  store i64 0, i64* %8, align 8
  br label %1164

650:                                              ; preds = %646
  %651 = load i32, i32* %22, align 4
  %652 = icmp sge i32 %651, 0
  br i1 %652, label %653, label %684

653:                                              ; preds = %650
  %654 = load i32, i32* %22, align 4
  %655 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %656 = icmp ult i32 %654, %655
  br i1 %656, label %657, label %684

657:                                              ; preds = %653
  store i32 0, i32* %38, align 4
  br label %658

658:                                              ; preds = %680, %657
  %659 = load i32, i32* %38, align 4
  %660 = load i32, i32* %28, align 4
  %661 = icmp slt i32 %659, %660
  br i1 %661, label %662, label %683

662:                                              ; preds = %658
  %663 = load i64*, i64** @call_used_regs, align 8
  %664 = load i32, i32* %22, align 4
  %665 = load i32, i32* %38, align 4
  %666 = add nsw i32 %664, %665
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i64, i64* %663, i64 %667
  %669 = load i64, i64* %668, align 8
  %670 = icmp ne i64 %669, 0
  br i1 %670, label %678, label %671

671:                                              ; preds = %662
  %672 = load i32, i32* %22, align 4
  %673 = load i32, i32* %38, align 4
  %674 = add nsw i32 %672, %673
  %675 = load i32, i32* %15, align 4
  %676 = call i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32 %674, i32 %675)
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %679

678:                                              ; preds = %671, %662
  store i64 0, i64* %8, align 8
  br label %1164

679:                                              ; preds = %671
  br label %680

680:                                              ; preds = %679
  %681 = load i32, i32* %38, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %38, align 4
  br label %658

683:                                              ; preds = %658
  br label %684

684:                                              ; preds = %683, %653, %650
  %685 = load i32, i32* %23, align 4
  %686 = icmp sge i32 %685, 0
  br i1 %686, label %687, label %718

687:                                              ; preds = %684
  %688 = load i32, i32* %23, align 4
  %689 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %690 = icmp ult i32 %688, %689
  br i1 %690, label %691, label %718

691:                                              ; preds = %687
  store i32 0, i32* %38, align 4
  br label %692

692:                                              ; preds = %714, %691
  %693 = load i32, i32* %38, align 4
  %694 = load i32, i32* %29, align 4
  %695 = icmp slt i32 %693, %694
  br i1 %695, label %696, label %717

696:                                              ; preds = %692
  %697 = load i64*, i64** @call_used_regs, align 8
  %698 = load i32, i32* %23, align 4
  %699 = load i32, i32* %38, align 4
  %700 = add nsw i32 %698, %699
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i64, i64* %697, i64 %701
  %703 = load i64, i64* %702, align 8
  %704 = icmp ne i64 %703, 0
  br i1 %704, label %712, label %705

705:                                              ; preds = %696
  %706 = load i32, i32* %23, align 4
  %707 = load i32, i32* %38, align 4
  %708 = add nsw i32 %706, %707
  %709 = load i32, i32* %15, align 4
  %710 = call i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32 %708, i32 %709)
  %711 = icmp ne i64 %710, 0
  br i1 %711, label %712, label %713

712:                                              ; preds = %705, %696
  store i64 0, i64* %8, align 8
  br label %1164

713:                                              ; preds = %705
  br label %714

714:                                              ; preds = %713
  %715 = load i32, i32* %38, align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* %38, align 4
  br label %692

717:                                              ; preds = %692
  br label %718

718:                                              ; preds = %717, %687, %684
  br label %719

719:                                              ; preds = %718, %639
  %720 = load i64, i64* %16, align 8
  %721 = call i64 @INSN_P(i64 %720)
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %723, label %1163

723:                                              ; preds = %719
  %724 = load i64, i64* %16, align 8
  %725 = call i64 @PATTERN(i64 %724)
  store i64 %725, i64* %21, align 8
  %726 = load i64, i64* %21, align 8
  %727 = call i64 @volatile_insn_p(i64 %726)
  %728 = icmp ne i64 %727, 0
  br i1 %728, label %729, label %730

729:                                              ; preds = %723
  store i64 0, i64* %8, align 8
  br label %1164

730:                                              ; preds = %723
  %731 = load i64, i64* %21, align 8
  %732 = call i64 @GET_CODE(i64 %731)
  %733 = load i64, i64* @COND_EXEC, align 8
  %734 = icmp eq i64 %732, %733
  br i1 %734, label %735, label %738

735:                                              ; preds = %730
  %736 = load i64, i64* %21, align 8
  %737 = call i64 @COND_EXEC_CODE(i64 %736)
  store i64 %737, i64* %21, align 8
  br label %738

738:                                              ; preds = %735, %730
  %739 = load i64, i64* %21, align 8
  %740 = call i64 @GET_CODE(i64 %739)
  %741 = load i64, i64* @SET, align 8
  %742 = icmp eq i64 %740, %741
  br i1 %742, label %748, label %743

743:                                              ; preds = %738
  %744 = load i64, i64* %21, align 8
  %745 = call i64 @GET_CODE(i64 %744)
  %746 = load i64, i64* @CLOBBER, align 8
  %747 = icmp eq i64 %745, %746
  br i1 %747, label %748, label %881

748:                                              ; preds = %743, %738
  %749 = load i64, i64* %21, align 8
  %750 = call i64 @SET_DEST(i64 %749)
  store i64 %750, i64* %39, align 8
  br label %751

751:                                              ; preds = %768, %748
  %752 = load i64, i64* %39, align 8
  %753 = call i64 @GET_CODE(i64 %752)
  %754 = load i64, i64* @SUBREG, align 8
  %755 = icmp eq i64 %753, %754
  br i1 %755, label %766, label %756

756:                                              ; preds = %751
  %757 = load i64, i64* %39, align 8
  %758 = call i64 @GET_CODE(i64 %757)
  %759 = load i64, i64* @ZERO_EXTRACT, align 8
  %760 = icmp eq i64 %758, %759
  br i1 %760, label %766, label %761

761:                                              ; preds = %756
  %762 = load i64, i64* %39, align 8
  %763 = call i64 @GET_CODE(i64 %762)
  %764 = load i64, i64* @STRICT_LOW_PART, align 8
  %765 = icmp eq i64 %763, %764
  br label %766

766:                                              ; preds = %761, %756, %751
  %767 = phi i1 [ true, %756 ], [ true, %751 ], [ %765, %761 ]
  br i1 %767, label %768, label %771

768:                                              ; preds = %766
  %769 = load i64, i64* %39, align 8
  %770 = call i64 @XEXP(i64 %769, i32 0)
  store i64 %770, i64* %39, align 8
  br label %751

771:                                              ; preds = %766
  %772 = load i64, i64* %39, align 8
  %773 = call i64 @REG_P(i64 %772)
  %774 = icmp ne i64 %773, 0
  br i1 %774, label %775, label %837

775:                                              ; preds = %771
  %776 = load i64, i64* %39, align 8
  %777 = call i32 @REGNO(i64 %776)
  store i32 %777, i32* %40, align 4
  %778 = load i64, i64* %39, align 8
  %779 = call i32 @REGNO(i64 %778)
  %780 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %781 = icmp ult i32 %779, %780
  br i1 %781, label %782, label %792

782:                                              ; preds = %775
  %783 = load i32**, i32*** @hard_regno_nregs, align 8
  %784 = load i32, i32* %40, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds i32*, i32** %783, i64 %785
  %787 = load i32*, i32** %786, align 8
  %788 = load i64, i64* %39, align 8
  %789 = call i64 @GET_MODE(i64 %788)
  %790 = getelementptr inbounds i32, i32* %787, i64 %789
  %791 = load i32, i32* %790, align 4
  store i32 %791, i32* %41, align 4
  br label %793

792:                                              ; preds = %775
  store i32 1, i32* %41, align 4
  br label %793

793:                                              ; preds = %792, %782
  %794 = load i32, i32* %40, align 4
  %795 = load i32, i32* %22, align 4
  %796 = load i32, i32* %28, align 4
  %797 = add nsw i32 %795, %796
  %798 = icmp slt i32 %794, %797
  br i1 %798, label %799, label %806

799:                                              ; preds = %793
  %800 = load i32, i32* %40, align 4
  %801 = load i32, i32* %41, align 4
  %802 = add nsw i32 %800, %801
  %803 = load i32, i32* %22, align 4
  %804 = icmp sgt i32 %802, %803
  br i1 %804, label %805, label %806

805:                                              ; preds = %799
  store i64 0, i64* %8, align 8
  br label %1164

806:                                              ; preds = %799, %793
  %807 = load i32, i32* %40, align 4
  %808 = load i32, i32* %23, align 4
  %809 = load i32, i32* %29, align 4
  %810 = add nsw i32 %808, %809
  %811 = icmp slt i32 %807, %810
  br i1 %811, label %812, label %819

812:                                              ; preds = %806
  %813 = load i32, i32* %40, align 4
  %814 = load i32, i32* %41, align 4
  %815 = add nsw i32 %813, %814
  %816 = load i32, i32* %23, align 4
  %817 = icmp sgt i32 %815, %816
  br i1 %817, label %818, label %819

818:                                              ; preds = %812
  store i64 0, i64* %8, align 8
  br label %1164

819:                                              ; preds = %812, %806
  %820 = load i32, i32* %26, align 4
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %828

822:                                              ; preds = %819
  %823 = load i64, i64* %39, align 8
  %824 = load i64, i64* %9, align 8
  %825 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %823, i64 %824)
  %826 = icmp ne i64 %825, 0
  br i1 %826, label %827, label %828

827:                                              ; preds = %822
  store i64 0, i64* %8, align 8
  br label %1164

828:                                              ; preds = %822, %819
  %829 = load i32, i32* %40, align 4
  %830 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %831 = icmp eq i32 %829, %830
  br i1 %831, label %832, label %836

832:                                              ; preds = %828
  %833 = load i32, i32* %27, align 4
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %835, label %836

835:                                              ; preds = %832
  store i64 0, i64* %8, align 8
  br label %1164

836:                                              ; preds = %832, %828
  br label %880

837:                                              ; preds = %771
  %838 = load i32, i32* %24, align 4
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %840, label %851

840:                                              ; preds = %837
  %841 = load i64, i64* %39, align 8
  %842 = call i64 @MEM_P(i64 %841)
  %843 = icmp ne i64 %842, 0
  br i1 %843, label %844, label %851

844:                                              ; preds = %840
  %845 = load i64, i64* %39, align 8
  %846 = load i64, i64* %39, align 8
  %847 = call i64 @GET_MODE(i64 %846)
  %848 = call i64 @push_operand(i64 %845, i64 %847)
  %849 = icmp ne i64 %848, 0
  br i1 %849, label %851, label %850

850:                                              ; preds = %844
  store i64 0, i64* %8, align 8
  br label %1164

851:                                              ; preds = %844, %840, %837
  %852 = load i64, i64* %39, align 8
  %853 = call i64 @MEM_P(i64 %852)
  %854 = icmp ne i64 %853, 0
  br i1 %854, label %855, label %867

855:                                              ; preds = %851
  %856 = load i32, i32* %22, align 4
  %857 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %858 = icmp uge i32 %856, %857
  br i1 %858, label %859, label %867

859:                                              ; preds = %855
  %860 = load i64*, i64** @reg_equiv_memory_loc, align 8
  %861 = load i32, i32* %22, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds i64, i64* %860, i64 %862
  %864 = load i64, i64* %863, align 8
  %865 = icmp ne i64 %864, 0
  br i1 %865, label %866, label %867

866:                                              ; preds = %859
  store i64 0, i64* %8, align 8
  br label %1164

867:                                              ; preds = %859, %855, %851
  %868 = load i32, i32* %27, align 4
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %870, label %877

870:                                              ; preds = %867
  %871 = load i64, i64* %39, align 8
  %872 = load i64, i64* %39, align 8
  %873 = call i64 @GET_MODE(i64 %872)
  %874 = call i64 @push_operand(i64 %871, i64 %873)
  %875 = icmp ne i64 %874, 0
  br i1 %875, label %876, label %877

876:                                              ; preds = %870
  store i64 0, i64* %8, align 8
  br label %1164

877:                                              ; preds = %870, %867
  br label %878

878:                                              ; preds = %877
  br label %879

879:                                              ; preds = %878
  br label %880

880:                                              ; preds = %879, %836
  br label %1053

881:                                              ; preds = %743
  %882 = load i64, i64* %21, align 8
  %883 = call i64 @GET_CODE(i64 %882)
  %884 = load i64, i64* @PARALLEL, align 8
  %885 = icmp eq i64 %883, %884
  br i1 %885, label %886, label %1052

886:                                              ; preds = %881
  %887 = load i64, i64* %21, align 8
  %888 = call i32 @XVECLEN(i64 %887, i32 0)
  %889 = sub nsw i32 %888, 1
  store i32 %889, i32* %42, align 4
  br label %890

890:                                              ; preds = %1048, %886
  %891 = load i32, i32* %42, align 4
  %892 = icmp sge i32 %891, 0
  br i1 %892, label %893, label %1051

893:                                              ; preds = %890
  %894 = load i64, i64* %21, align 8
  %895 = load i32, i32* %42, align 4
  %896 = call i64 @XVECEXP(i64 %894, i32 0, i32 %895)
  store i64 %896, i64* %43, align 8
  %897 = load i64, i64* %43, align 8
  %898 = call i64 @GET_CODE(i64 %897)
  %899 = load i64, i64* @COND_EXEC, align 8
  %900 = icmp eq i64 %898, %899
  br i1 %900, label %901, label %904

901:                                              ; preds = %893
  %902 = load i64, i64* %43, align 8
  %903 = call i64 @COND_EXEC_CODE(i64 %902)
  store i64 %903, i64* %43, align 8
  br label %904

904:                                              ; preds = %901, %893
  %905 = load i64, i64* %43, align 8
  %906 = call i64 @GET_CODE(i64 %905)
  %907 = load i64, i64* @SET, align 8
  %908 = icmp eq i64 %906, %907
  br i1 %908, label %914, label %909

909:                                              ; preds = %904
  %910 = load i64, i64* %43, align 8
  %911 = call i64 @GET_CODE(i64 %910)
  %912 = load i64, i64* @CLOBBER, align 8
  %913 = icmp eq i64 %911, %912
  br i1 %913, label %914, label %1047

914:                                              ; preds = %909, %904
  %915 = load i64, i64* %43, align 8
  %916 = call i64 @SET_DEST(i64 %915)
  store i64 %916, i64* %44, align 8
  br label %917

917:                                              ; preds = %934, %914
  %918 = load i64, i64* %44, align 8
  %919 = call i64 @GET_CODE(i64 %918)
  %920 = load i64, i64* @SUBREG, align 8
  %921 = icmp eq i64 %919, %920
  br i1 %921, label %932, label %922

922:                                              ; preds = %917
  %923 = load i64, i64* %44, align 8
  %924 = call i64 @GET_CODE(i64 %923)
  %925 = load i64, i64* @ZERO_EXTRACT, align 8
  %926 = icmp eq i64 %924, %925
  br i1 %926, label %932, label %927

927:                                              ; preds = %922
  %928 = load i64, i64* %44, align 8
  %929 = call i64 @GET_CODE(i64 %928)
  %930 = load i64, i64* @STRICT_LOW_PART, align 8
  %931 = icmp eq i64 %929, %930
  br label %932

932:                                              ; preds = %927, %922, %917
  %933 = phi i1 [ true, %922 ], [ true, %917 ], [ %931, %927 ]
  br i1 %933, label %934, label %937

934:                                              ; preds = %932
  %935 = load i64, i64* %44, align 8
  %936 = call i64 @XEXP(i64 %935, i32 0)
  store i64 %936, i64* %44, align 8
  br label %917

937:                                              ; preds = %932
  %938 = load i64, i64* %44, align 8
  %939 = call i64 @REG_P(i64 %938)
  %940 = icmp ne i64 %939, 0
  br i1 %940, label %941, label %1003

941:                                              ; preds = %937
  %942 = load i64, i64* %44, align 8
  %943 = call i32 @REGNO(i64 %942)
  store i32 %943, i32* %45, align 4
  %944 = load i64, i64* %44, align 8
  %945 = call i32 @REGNO(i64 %944)
  %946 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %947 = icmp ult i32 %945, %946
  br i1 %947, label %948, label %958

948:                                              ; preds = %941
  %949 = load i32**, i32*** @hard_regno_nregs, align 8
  %950 = load i32, i32* %45, align 4
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds i32*, i32** %949, i64 %951
  %953 = load i32*, i32** %952, align 8
  %954 = load i64, i64* %44, align 8
  %955 = call i64 @GET_MODE(i64 %954)
  %956 = getelementptr inbounds i32, i32* %953, i64 %955
  %957 = load i32, i32* %956, align 4
  store i32 %957, i32* %46, align 4
  br label %959

958:                                              ; preds = %941
  store i32 1, i32* %46, align 4
  br label %959

959:                                              ; preds = %958, %948
  %960 = load i32, i32* %45, align 4
  %961 = load i32, i32* %22, align 4
  %962 = load i32, i32* %28, align 4
  %963 = add nsw i32 %961, %962
  %964 = icmp slt i32 %960, %963
  br i1 %964, label %965, label %972

965:                                              ; preds = %959
  %966 = load i32, i32* %45, align 4
  %967 = load i32, i32* %46, align 4
  %968 = add nsw i32 %966, %967
  %969 = load i32, i32* %22, align 4
  %970 = icmp sgt i32 %968, %969
  br i1 %970, label %971, label %972

971:                                              ; preds = %965
  store i64 0, i64* %8, align 8
  br label %1164

972:                                              ; preds = %965, %959
  %973 = load i32, i32* %45, align 4
  %974 = load i32, i32* %23, align 4
  %975 = load i32, i32* %29, align 4
  %976 = add nsw i32 %974, %975
  %977 = icmp slt i32 %973, %976
  br i1 %977, label %978, label %985

978:                                              ; preds = %972
  %979 = load i32, i32* %45, align 4
  %980 = load i32, i32* %46, align 4
  %981 = add nsw i32 %979, %980
  %982 = load i32, i32* %23, align 4
  %983 = icmp sgt i32 %981, %982
  br i1 %983, label %984, label %985

984:                                              ; preds = %978
  store i64 0, i64* %8, align 8
  br label %1164

985:                                              ; preds = %978, %972
  %986 = load i32, i32* %26, align 4
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %988, label %994

988:                                              ; preds = %985
  %989 = load i64, i64* %44, align 8
  %990 = load i64, i64* %9, align 8
  %991 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %989, i64 %990)
  %992 = icmp ne i64 %991, 0
  br i1 %992, label %993, label %994

993:                                              ; preds = %988
  store i64 0, i64* %8, align 8
  br label %1164

994:                                              ; preds = %988, %985
  %995 = load i32, i32* %45, align 4
  %996 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %997 = icmp eq i32 %995, %996
  br i1 %997, label %998, label %1002

998:                                              ; preds = %994
  %999 = load i32, i32* %27, align 4
  %1000 = icmp ne i32 %999, 0
  br i1 %1000, label %1001, label %1002

1001:                                             ; preds = %998
  store i64 0, i64* %8, align 8
  br label %1164

1002:                                             ; preds = %998, %994
  br label %1046

1003:                                             ; preds = %937
  %1004 = load i32, i32* %24, align 4
  %1005 = icmp ne i32 %1004, 0
  br i1 %1005, label %1006, label %1017

1006:                                             ; preds = %1003
  %1007 = load i64, i64* %44, align 8
  %1008 = call i64 @MEM_P(i64 %1007)
  %1009 = icmp ne i64 %1008, 0
  br i1 %1009, label %1010, label %1017

1010:                                             ; preds = %1006
  %1011 = load i64, i64* %44, align 8
  %1012 = load i64, i64* %44, align 8
  %1013 = call i64 @GET_MODE(i64 %1012)
  %1014 = call i64 @push_operand(i64 %1011, i64 %1013)
  %1015 = icmp ne i64 %1014, 0
  br i1 %1015, label %1017, label %1016

1016:                                             ; preds = %1010
  store i64 0, i64* %8, align 8
  br label %1164

1017:                                             ; preds = %1010, %1006, %1003
  %1018 = load i64, i64* %44, align 8
  %1019 = call i64 @MEM_P(i64 %1018)
  %1020 = icmp ne i64 %1019, 0
  br i1 %1020, label %1021, label %1033

1021:                                             ; preds = %1017
  %1022 = load i32, i32* %22, align 4
  %1023 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %1024 = icmp uge i32 %1022, %1023
  br i1 %1024, label %1025, label %1033

1025:                                             ; preds = %1021
  %1026 = load i64*, i64** @reg_equiv_memory_loc, align 8
  %1027 = load i32, i32* %22, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds i64, i64* %1026, i64 %1028
  %1030 = load i64, i64* %1029, align 8
  %1031 = icmp ne i64 %1030, 0
  br i1 %1031, label %1032, label %1033

1032:                                             ; preds = %1025
  store i64 0, i64* %8, align 8
  br label %1164

1033:                                             ; preds = %1025, %1021, %1017
  %1034 = load i32, i32* %27, align 4
  %1035 = icmp ne i32 %1034, 0
  br i1 %1035, label %1036, label %1043

1036:                                             ; preds = %1033
  %1037 = load i64, i64* %44, align 8
  %1038 = load i64, i64* %44, align 8
  %1039 = call i64 @GET_MODE(i64 %1038)
  %1040 = call i64 @push_operand(i64 %1037, i64 %1039)
  %1041 = icmp ne i64 %1040, 0
  br i1 %1041, label %1042, label %1043

1042:                                             ; preds = %1036
  store i64 0, i64* %8, align 8
  br label %1164

1043:                                             ; preds = %1036, %1033
  br label %1044

1044:                                             ; preds = %1043
  br label %1045

1045:                                             ; preds = %1044
  br label %1046

1046:                                             ; preds = %1045, %1002
  br label %1047

1047:                                             ; preds = %1046, %909
  br label %1048

1048:                                             ; preds = %1047
  %1049 = load i32, i32* %42, align 4
  %1050 = add nsw i32 %1049, -1
  store i32 %1050, i32* %42, align 4
  br label %890

1051:                                             ; preds = %890
  br label %1052

1052:                                             ; preds = %1051, %881
  br label %1053

1053:                                             ; preds = %1052, %880
  %1054 = load i64, i64* %16, align 8
  %1055 = call i64 @CALL_P(i64 %1054)
  %1056 = icmp ne i64 %1055, 0
  br i1 %1056, label %1057, label %1162

1057:                                             ; preds = %1053
  %1058 = load i64, i64* %16, align 8
  %1059 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %1058)
  %1060 = icmp ne i64 %1059, 0
  br i1 %1060, label %1061, label %1162

1061:                                             ; preds = %1057
  %1062 = load i64, i64* %16, align 8
  %1063 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %1062)
  store i64 %1063, i64* %47, align 8
  br label %1064

1064:                                             ; preds = %1158, %1061
  %1065 = load i64, i64* %47, align 8
  %1066 = call i64 @XEXP(i64 %1065, i32 1)
  %1067 = icmp ne i64 %1066, 0
  br i1 %1067, label %1068, label %1161

1068:                                             ; preds = %1064
  %1069 = load i64, i64* %47, align 8
  %1070 = call i64 @XEXP(i64 %1069, i32 0)
  store i64 %1070, i64* %21, align 8
  %1071 = load i64, i64* %21, align 8
  %1072 = call i64 @GET_CODE(i64 %1071)
  %1073 = load i64, i64* @CLOBBER, align 8
  %1074 = icmp eq i64 %1072, %1073
  br i1 %1074, label %1075, label %1157

1075:                                             ; preds = %1068
  %1076 = load i64, i64* %21, align 8
  %1077 = call i64 @SET_DEST(i64 %1076)
  store i64 %1077, i64* %48, align 8
  %1078 = load i64, i64* %48, align 8
  %1079 = call i64 @REG_P(i64 %1078)
  %1080 = icmp ne i64 %1079, 0
  br i1 %1080, label %1081, label %1130

1081:                                             ; preds = %1075
  %1082 = load i64, i64* %48, align 8
  %1083 = call i32 @REGNO(i64 %1082)
  store i32 %1083, i32* %49, align 4
  %1084 = load i32**, i32*** @hard_regno_nregs, align 8
  %1085 = load i32, i32* %49, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds i32*, i32** %1084, i64 %1086
  %1088 = load i32*, i32** %1087, align 8
  %1089 = load i64, i64* %48, align 8
  %1090 = call i64 @GET_MODE(i64 %1089)
  %1091 = getelementptr inbounds i32, i32* %1088, i64 %1090
  %1092 = load i32, i32* %1091, align 4
  store i32 %1092, i32* %50, align 4
  %1093 = load i32, i32* %49, align 4
  %1094 = load i32, i32* %22, align 4
  %1095 = load i32, i32* %28, align 4
  %1096 = add nsw i32 %1094, %1095
  %1097 = icmp slt i32 %1093, %1096
  br i1 %1097, label %1098, label %1105

1098:                                             ; preds = %1081
  %1099 = load i32, i32* %49, align 4
  %1100 = load i32, i32* %50, align 4
  %1101 = add nsw i32 %1099, %1100
  %1102 = load i32, i32* %22, align 4
  %1103 = icmp sgt i32 %1101, %1102
  br i1 %1103, label %1104, label %1105

1104:                                             ; preds = %1098
  store i64 0, i64* %8, align 8
  br label %1164

1105:                                             ; preds = %1098, %1081
  %1106 = load i32, i32* %49, align 4
  %1107 = load i32, i32* %23, align 4
  %1108 = load i32, i32* %29, align 4
  %1109 = add nsw i32 %1107, %1108
  %1110 = icmp slt i32 %1106, %1109
  br i1 %1110, label %1111, label %1118

1111:                                             ; preds = %1105
  %1112 = load i32, i32* %49, align 4
  %1113 = load i32, i32* %50, align 4
  %1114 = add nsw i32 %1112, %1113
  %1115 = load i32, i32* %23, align 4
  %1116 = icmp sgt i32 %1114, %1115
  br i1 %1116, label %1117, label %1118

1117:                                             ; preds = %1111
  store i64 0, i64* %8, align 8
  br label %1164

1118:                                             ; preds = %1111, %1105
  %1119 = load i32, i32* %26, align 4
  %1120 = icmp ne i32 %1119, 0
  br i1 %1120, label %1121, label %1127

1121:                                             ; preds = %1118
  %1122 = load i64, i64* %48, align 8
  %1123 = load i64, i64* %9, align 8
  %1124 = call i64 @reg_overlap_mentioned_for_reload_p(i64 %1122, i64 %1123)
  %1125 = icmp ne i64 %1124, 0
  br i1 %1125, label %1126, label %1127

1126:                                             ; preds = %1121
  store i64 0, i64* %8, align 8
  br label %1164

1127:                                             ; preds = %1121, %1118
  br label %1128

1128:                                             ; preds = %1127
  br label %1129

1129:                                             ; preds = %1128
  br label %1156

1130:                                             ; preds = %1075
  %1131 = load i32, i32* %24, align 4
  %1132 = icmp ne i32 %1131, 0
  br i1 %1132, label %1133, label %1144

1133:                                             ; preds = %1130
  %1134 = load i64, i64* %48, align 8
  %1135 = call i64 @MEM_P(i64 %1134)
  %1136 = icmp ne i64 %1135, 0
  br i1 %1136, label %1137, label %1144

1137:                                             ; preds = %1133
  %1138 = load i64, i64* %48, align 8
  %1139 = load i64, i64* %48, align 8
  %1140 = call i64 @GET_MODE(i64 %1139)
  %1141 = call i64 @push_operand(i64 %1138, i64 %1140)
  %1142 = icmp ne i64 %1141, 0
  br i1 %1142, label %1144, label %1143

1143:                                             ; preds = %1137
  store i64 0, i64* %8, align 8
  br label %1164

1144:                                             ; preds = %1137, %1133, %1130
  %1145 = load i32, i32* %27, align 4
  %1146 = icmp ne i32 %1145, 0
  br i1 %1146, label %1147, label %1154

1147:                                             ; preds = %1144
  %1148 = load i64, i64* %48, align 8
  %1149 = load i64, i64* %48, align 8
  %1150 = call i64 @GET_MODE(i64 %1149)
  %1151 = call i64 @push_operand(i64 %1148, i64 %1150)
  %1152 = icmp ne i64 %1151, 0
  br i1 %1152, label %1153, label %1154

1153:                                             ; preds = %1147
  store i64 0, i64* %8, align 8
  br label %1164

1154:                                             ; preds = %1147, %1144
  br label %1155

1155:                                             ; preds = %1154
  br label %1156

1156:                                             ; preds = %1155, %1129
  br label %1157

1157:                                             ; preds = %1156, %1068
  br label %1158

1158:                                             ; preds = %1157
  %1159 = load i64, i64* %47, align 8
  %1160 = call i64 @XEXP(i64 %1159, i32 1)
  store i64 %1160, i64* %47, align 8
  br label %1064

1161:                                             ; preds = %1064
  br label %1162

1162:                                             ; preds = %1161, %1057, %1053
  br label %1163

1163:                                             ; preds = %1162, %719
  br label %631

1164:                                             ; preds = %1153, %1143, %1126, %1117, %1104, %1042, %1032, %1016, %1001, %993, %984, %971, %876, %866, %850, %835, %827, %818, %805, %729, %712, %678, %649, %637, %612, %549, %527, %481, %455, %431, %150, %127, %87, %84, %75
  %1165 = load i64, i64* %8, align 8
  ret i64 %1165
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @MEM_VOLATILE_P(i64) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @INSN_UID(i64) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i32 @true_regnum(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @reg_overlap_mentioned_for_reload_p(i64, i64) #1

declare dso_local i64 @rtx_renumbered_equal_p(i64, i64) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @find_reg_note(i64, i32, i64) #1

declare dso_local i64 @operand_subword(i64, i32, i32, i32) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @refers_to_regno_for_reload_p(i32, i32, i64, i64*) #1

declare dso_local i32 @CONSTANT_ADDRESS_P(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @HARD_REGNO_CALL_PART_CLOBBERED(i32, i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @volatile_insn_p(i64) #1

declare dso_local i64 @COND_EXEC_CODE(i64) #1

declare dso_local i64 @push_operand(i64, i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @CALL_INSN_FUNCTION_USAGE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
