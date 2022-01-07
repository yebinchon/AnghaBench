; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimize_pic_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimize_pic_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@ix86_cmodel = common dso_local global i64 0, align 8
@CM_SMALL_PIC = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@UNSPEC_GOTOFF = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i64 0, align 8
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@SYMBOL_REF = common dso_local global i64 0, align 8
@UNSPEC_GOTPCREL = common dso_local global i32 0, align 4
@UNSPEC_GOT = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@UNSPEC = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@TARGET_MACHO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @legitimize_pic_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @legitimize_pic_address(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @TARGET_64BIT, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @legitimate_pic_address_disp_p(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %7, align 8
  br label %432

22:                                               ; preds = %16, %2
  %23 = load i64, i64* @TARGET_64BIT, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %104

25:                                               ; preds = %22
  %26 = load i64, i64* @ix86_cmodel, align 8
  %27 = load i64, i64* @CM_SMALL_PIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %104

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @Pmode, align 4
  %32 = call i64 @local_symbolic_operand(i64 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %104

34:                                               ; preds = %29
  %35 = load i64, i64* @reload_in_progress, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** @regs_ever_live, align 8
  %39 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @GET_CODE(i64 %42)
  %44 = load i64, i64* @CONST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @XEXP(i64 %47, i32 0)
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @GET_CODE(i64 %50)
  %52 = load i64, i64* @PLUS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i32, i32* @Pmode, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @XEXP(i64 %56, i32 0)
  %58 = call i32 @gen_rtvec(i32 1, i64 %57)
  %59 = load i32, i32* @UNSPEC_GOTOFF, align 4
  %60 = call i64 @gen_rtx_UNSPEC(i32 %55, i32 %58, i32 %59)
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* @Pmode, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @XEXP(i64 %63, i32 1)
  %65 = call i64 @gen_rtx_PLUS(i32 %61, i64 %62, i64 %64)
  store i64 %65, i64* %7, align 8
  br label %72

66:                                               ; preds = %49
  %67 = load i32, i32* @Pmode, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @gen_rtvec(i32 1, i64 %68)
  %70 = load i32, i32* @UNSPEC_GOTOFF, align 4
  %71 = call i64 @gen_rtx_UNSPEC(i32 %67, i32 %69, i32 %70)
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %66, %54
  %73 = load i32, i32* @Pmode, align 4
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @gen_rtx_CONST(i32 %73, i64 %74)
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @Pmode, align 4
  %80 = call i64 @gen_reg_rtx(i32 %79)
  store i64 %80, i64* %9, align 8
  br label %83

81:                                               ; preds = %72
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %9, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @emit_move_insn(i64 %84, i64 %85)
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load i32, i32* @Pmode, align 4
  %91 = load i64, i64* @PLUS, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @pic_offset_table_rtx, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i32, i32* @OPTAB_DIRECT, align 4
  %96 = call i64 @expand_simple_binop(i32 %90, i64 %91, i64 %92, i64 %93, i64 %94, i32 1, i32 %95)
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %7, align 8
  br label %103

98:                                               ; preds = %83
  %99 = load i32, i32* @Pmode, align 4
  %100 = load i64, i64* @pic_offset_table_rtx, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @gen_rtx_PLUS(i32 %99, i64 %100, i64 %101)
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %98, %89
  br label %431

104:                                              ; preds = %29, %25, %22
  %105 = load i64, i64* @TARGET_64BIT, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %166, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* %6, align 8
  %109 = load i32, i32* @Pmode, align 4
  %110 = call i64 @local_symbolic_operand(i64 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %166

112:                                              ; preds = %107
  %113 = load i64, i64* @reload_in_progress, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i32*, i32** @regs_ever_live, align 8
  %117 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @GET_CODE(i64 %120)
  %122 = load i64, i64* @CONST, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @XEXP(i64 %125, i32 0)
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %124, %119
  %128 = load i64, i64* %6, align 8
  %129 = call i64 @GET_CODE(i64 %128)
  %130 = load i64, i64* @PLUS, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i32, i32* @Pmode, align 4
  %134 = load i64, i64* %6, align 8
  %135 = call i64 @XEXP(i64 %134, i32 0)
  %136 = call i32 @gen_rtvec(i32 1, i64 %135)
  %137 = load i32, i32* @UNSPEC_GOTOFF, align 4
  %138 = call i64 @gen_rtx_UNSPEC(i32 %133, i32 %136, i32 %137)
  store i64 %138, i64* %7, align 8
  %139 = load i32, i32* @Pmode, align 4
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* %6, align 8
  %142 = call i64 @XEXP(i64 %141, i32 1)
  %143 = call i64 @gen_rtx_PLUS(i32 %139, i64 %140, i64 %142)
  store i64 %143, i64* %7, align 8
  br label %150

144:                                              ; preds = %127
  %145 = load i32, i32* @Pmode, align 4
  %146 = load i64, i64* %6, align 8
  %147 = call i32 @gen_rtvec(i32 1, i64 %146)
  %148 = load i32, i32* @UNSPEC_GOTOFF, align 4
  %149 = call i64 @gen_rtx_UNSPEC(i32 %145, i32 %147, i32 %148)
  store i64 %149, i64* %7, align 8
  br label %150

150:                                              ; preds = %144, %132
  %151 = load i32, i32* @Pmode, align 4
  %152 = load i64, i64* %7, align 8
  %153 = call i64 @gen_rtx_CONST(i32 %151, i64 %152)
  store i64 %153, i64* %7, align 8
  %154 = load i32, i32* @Pmode, align 4
  %155 = load i64, i64* @pic_offset_table_rtx, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i64 @gen_rtx_PLUS(i32 %154, i64 %155, i64 %156)
  store i64 %157, i64* %7, align 8
  %158 = load i64, i64* %5, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %150
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* %7, align 8
  %163 = call i32 @emit_move_insn(i64 %161, i64 %162)
  %164 = load i64, i64* %5, align 8
  store i64 %164, i64* %7, align 8
  br label %165

165:                                              ; preds = %160, %150
  br label %430

166:                                              ; preds = %107, %104
  %167 = load i64, i64* %6, align 8
  %168 = call i64 @GET_CODE(i64 %167)
  %169 = load i64, i64* @SYMBOL_REF, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %241

171:                                              ; preds = %166
  %172 = load i64, i64* %6, align 8
  %173 = call i64 @SYMBOL_REF_TLS_MODEL(i64 %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %241

175:                                              ; preds = %171
  %176 = load i64, i64* @TARGET_64BIT, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %204

178:                                              ; preds = %175
  %179 = load i32, i32* @Pmode, align 4
  %180 = load i64, i64* %6, align 8
  %181 = call i32 @gen_rtvec(i32 1, i64 %180)
  %182 = load i32, i32* @UNSPEC_GOTPCREL, align 4
  %183 = call i64 @gen_rtx_UNSPEC(i32 %179, i32 %181, i32 %182)
  store i64 %183, i64* %7, align 8
  %184 = load i32, i32* @Pmode, align 4
  %185 = load i64, i64* %7, align 8
  %186 = call i64 @gen_rtx_CONST(i32 %184, i64 %185)
  store i64 %186, i64* %7, align 8
  %187 = load i32, i32* @Pmode, align 4
  %188 = load i64, i64* %7, align 8
  %189 = call i64 @gen_const_mem(i32 %187, i64 %188)
  store i64 %189, i64* %7, align 8
  %190 = load i64, i64* %7, align 8
  %191 = call i32 (...) @ix86_GOT_alias_set()
  %192 = call i32 @set_mem_alias_set(i64 %190, i32 %191)
  %193 = load i64, i64* %5, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %178
  %196 = load i32, i32* @Pmode, align 4
  %197 = call i64 @gen_reg_rtx(i32 %196)
  store i64 %197, i64* %5, align 8
  br label %198

198:                                              ; preds = %195, %178
  %199 = load i64, i64* %5, align 8
  %200 = load i64, i64* %7, align 8
  %201 = call i32 @gen_movsi(i64 %199, i64 %200)
  %202 = call i32 @emit_insn(i32 %201)
  %203 = load i64, i64* %5, align 8
  store i64 %203, i64* %7, align 8
  br label %240

204:                                              ; preds = %175
  %205 = load i64, i64* @reload_in_progress, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load i32*, i32** @regs_ever_live, align 8
  %209 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32 1, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %204
  %212 = load i32, i32* @Pmode, align 4
  %213 = load i64, i64* %6, align 8
  %214 = call i32 @gen_rtvec(i32 1, i64 %213)
  %215 = load i32, i32* @UNSPEC_GOT, align 4
  %216 = call i64 @gen_rtx_UNSPEC(i32 %212, i32 %214, i32 %215)
  store i64 %216, i64* %7, align 8
  %217 = load i32, i32* @Pmode, align 4
  %218 = load i64, i64* %7, align 8
  %219 = call i64 @gen_rtx_CONST(i32 %217, i64 %218)
  store i64 %219, i64* %7, align 8
  %220 = load i32, i32* @Pmode, align 4
  %221 = load i64, i64* @pic_offset_table_rtx, align 8
  %222 = load i64, i64* %7, align 8
  %223 = call i64 @gen_rtx_PLUS(i32 %220, i64 %221, i64 %222)
  store i64 %223, i64* %7, align 8
  %224 = load i32, i32* @Pmode, align 4
  %225 = load i64, i64* %7, align 8
  %226 = call i64 @gen_const_mem(i32 %224, i64 %225)
  store i64 %226, i64* %7, align 8
  %227 = load i64, i64* %7, align 8
  %228 = call i32 (...) @ix86_GOT_alias_set()
  %229 = call i32 @set_mem_alias_set(i64 %227, i32 %228)
  %230 = load i64, i64* %5, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %211
  %233 = load i32, i32* @Pmode, align 4
  %234 = call i64 @gen_reg_rtx(i32 %233)
  store i64 %234, i64* %5, align 8
  br label %235

235:                                              ; preds = %232, %211
  %236 = load i64, i64* %5, align 8
  %237 = load i64, i64* %7, align 8
  %238 = call i32 @emit_move_insn(i64 %236, i64 %237)
  %239 = load i64, i64* %5, align 8
  store i64 %239, i64* %7, align 8
  br label %240

240:                                              ; preds = %235, %198
  br label %429

241:                                              ; preds = %171, %166
  %242 = load i64, i64* %6, align 8
  %243 = call i64 @GET_CODE(i64 %242)
  %244 = load i64, i64* @CONST_INT, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %264

246:                                              ; preds = %241
  %247 = load i64, i64* %6, align 8
  %248 = load i32, i32* @VOIDmode, align 4
  %249 = call i32 @x86_64_immediate_operand(i64 %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %264, label %251

251:                                              ; preds = %246
  %252 = load i64, i64* %5, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load i64, i64* %5, align 8
  %256 = load i64, i64* %6, align 8
  %257 = call i32 @emit_move_insn(i64 %255, i64 %256)
  %258 = load i64, i64* %5, align 8
  store i64 %258, i64* %7, align 8
  br label %263

259:                                              ; preds = %251
  %260 = load i32, i32* @Pmode, align 4
  %261 = load i64, i64* %6, align 8
  %262 = call i64 @force_reg(i32 %260, i64 %261)
  store i64 %262, i64* %7, align 8
  br label %263

263:                                              ; preds = %259, %254
  br label %297

264:                                              ; preds = %246, %241
  %265 = load i64, i64* %6, align 8
  %266 = call i64 @GET_CODE(i64 %265)
  %267 = load i64, i64* @CONST, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %296

269:                                              ; preds = %264
  %270 = load i64, i64* %6, align 8
  %271 = call i64 @XEXP(i64 %270, i32 0)
  store i64 %271, i64* %6, align 8
  %272 = load i64, i64* %6, align 8
  %273 = call i64 @GET_CODE(i64 %272)
  %274 = load i64, i64* @UNSPEC, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %287, label %276

276:                                              ; preds = %269
  %277 = load i64, i64* %6, align 8
  %278 = call i64 @GET_CODE(i64 %277)
  %279 = load i64, i64* @PLUS, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = load i64, i64* %6, align 8
  %283 = call i64 @XEXP(i64 %282, i32 0)
  %284 = call i64 @GET_CODE(i64 %283)
  %285 = load i64, i64* @UNSPEC, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %281, %269
  %288 = load i64, i64* %4, align 8
  store i64 %288, i64* %3, align 8
  br label %434

289:                                              ; preds = %281, %276
  %290 = load i64, i64* %6, align 8
  %291 = call i64 @GET_CODE(i64 %290)
  %292 = load i64, i64* @PLUS, align 8
  %293 = icmp eq i64 %291, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @gcc_assert(i32 %294)
  br label %296

296:                                              ; preds = %289, %264
  br label %297

297:                                              ; preds = %296, %263
  %298 = load i64, i64* %6, align 8
  %299 = call i64 @GET_CODE(i64 %298)
  %300 = load i64, i64* @PLUS, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %428

302:                                              ; preds = %297
  %303 = load i64, i64* %6, align 8
  %304 = call i64 @XEXP(i64 %303, i32 0)
  store i64 %304, i64* %10, align 8
  %305 = load i64, i64* %6, align 8
  %306 = call i64 @XEXP(i64 %305, i32 1)
  store i64 %306, i64* %11, align 8
  %307 = load i64, i64* %10, align 8
  %308 = load i32, i32* @Pmode, align 4
  %309 = call i64 @local_symbolic_operand(i64 %307, i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %377

311:                                              ; preds = %302
  %312 = load i64, i64* %11, align 8
  %313 = call i64 @GET_CODE(i64 %312)
  %314 = load i64, i64* @CONST_INT, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %377

316:                                              ; preds = %311
  %317 = load i64, i64* @TARGET_64BIT, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %351, label %319

319:                                              ; preds = %316
  %320 = load i64, i64* @reload_in_progress, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load i32*, i32** @regs_ever_live, align 8
  %324 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32 1, i32* %325, align 4
  br label %326

326:                                              ; preds = %322, %319
  %327 = load i32, i32* @Pmode, align 4
  %328 = load i64, i64* %10, align 8
  %329 = call i32 @gen_rtvec(i32 1, i64 %328)
  %330 = load i32, i32* @UNSPEC_GOTOFF, align 4
  %331 = call i64 @gen_rtx_UNSPEC(i32 %327, i32 %329, i32 %330)
  store i64 %331, i64* %7, align 8
  %332 = load i32, i32* @Pmode, align 4
  %333 = load i64, i64* %7, align 8
  %334 = load i64, i64* %11, align 8
  %335 = call i64 @gen_rtx_PLUS(i32 %332, i64 %333, i64 %334)
  store i64 %335, i64* %7, align 8
  %336 = load i32, i32* @Pmode, align 4
  %337 = load i64, i64* %7, align 8
  %338 = call i64 @gen_rtx_CONST(i32 %336, i64 %337)
  store i64 %338, i64* %7, align 8
  %339 = load i32, i32* @Pmode, align 4
  %340 = load i64, i64* @pic_offset_table_rtx, align 8
  %341 = load i64, i64* %7, align 8
  %342 = call i64 @gen_rtx_PLUS(i32 %339, i64 %340, i64 %341)
  store i64 %342, i64* %7, align 8
  %343 = load i64, i64* %5, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %326
  %346 = load i64, i64* %5, align 8
  %347 = load i64, i64* %7, align 8
  %348 = call i32 @emit_move_insn(i64 %346, i64 %347)
  %349 = load i64, i64* %5, align 8
  store i64 %349, i64* %7, align 8
  br label %350

350:                                              ; preds = %345, %326
  br label %376

351:                                              ; preds = %316
  %352 = load i64, i64* %11, align 8
  %353 = call i32 @INTVAL(i64 %352)
  %354 = icmp slt i32 %353, -16777216
  br i1 %354, label %359, label %355

355:                                              ; preds = %351
  %356 = load i64, i64* %11, align 8
  %357 = call i32 @INTVAL(i64 %356)
  %358 = icmp sge i32 %357, 16777216
  br i1 %358, label %359, label %375

359:                                              ; preds = %355, %351
  %360 = load i64, i64* %11, align 8
  %361 = load i32, i32* @Pmode, align 4
  %362 = call i32 @x86_64_immediate_operand(i64 %360, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %368, label %364

364:                                              ; preds = %359
  %365 = load i32, i32* @Pmode, align 4
  %366 = load i64, i64* %11, align 8
  %367 = call i64 @force_reg(i32 %365, i64 %366)
  store i64 %367, i64* %11, align 8
  br label %368

368:                                              ; preds = %364, %359
  %369 = load i32, i32* @Pmode, align 4
  %370 = load i32, i32* @Pmode, align 4
  %371 = load i64, i64* %10, align 8
  %372 = call i64 @force_reg(i32 %370, i64 %371)
  %373 = load i64, i64* %11, align 8
  %374 = call i64 @gen_rtx_PLUS(i32 %369, i64 %372, i64 %373)
  store i64 %374, i64* %7, align 8
  br label %375

375:                                              ; preds = %368, %355
  br label %376

376:                                              ; preds = %375, %350
  br label %427

377:                                              ; preds = %311, %302
  %378 = load i64, i64* %6, align 8
  %379 = call i64 @XEXP(i64 %378, i32 0)
  %380 = load i64, i64* %5, align 8
  %381 = call i64 @legitimize_pic_address(i64 %379, i64 %380)
  store i64 %381, i64* %8, align 8
  %382 = load i64, i64* %6, align 8
  %383 = call i64 @XEXP(i64 %382, i32 1)
  %384 = load i64, i64* %8, align 8
  %385 = load i64, i64* %5, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %377
  %388 = load i64, i64* @NULL_RTX, align 8
  br label %391

389:                                              ; preds = %377
  %390 = load i64, i64* %5, align 8
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i64 [ %388, %387 ], [ %390, %389 ]
  %393 = call i64 @legitimize_pic_address(i64 %383, i64 %392)
  store i64 %393, i64* %7, align 8
  %394 = load i64, i64* %7, align 8
  %395 = call i64 @GET_CODE(i64 %394)
  %396 = load i64, i64* @CONST_INT, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %403

398:                                              ; preds = %391
  %399 = load i64, i64* %8, align 8
  %400 = load i64, i64* %7, align 8
  %401 = call i32 @INTVAL(i64 %400)
  %402 = call i64 @plus_constant(i64 %399, i32 %401)
  store i64 %402, i64* %7, align 8
  br label %426

403:                                              ; preds = %391
  %404 = load i64, i64* %7, align 8
  %405 = call i64 @GET_CODE(i64 %404)
  %406 = load i64, i64* @PLUS, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %421

408:                                              ; preds = %403
  %409 = load i64, i64* %7, align 8
  %410 = call i64 @XEXP(i64 %409, i32 1)
  %411 = call i64 @CONSTANT_P(i64 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %408
  %414 = load i32, i32* @Pmode, align 4
  %415 = load i64, i64* %8, align 8
  %416 = load i64, i64* %7, align 8
  %417 = call i64 @XEXP(i64 %416, i32 0)
  %418 = call i64 @gen_rtx_PLUS(i32 %414, i64 %415, i64 %417)
  store i64 %418, i64* %8, align 8
  %419 = load i64, i64* %7, align 8
  %420 = call i64 @XEXP(i64 %419, i32 1)
  store i64 %420, i64* %7, align 8
  br label %421

421:                                              ; preds = %413, %408, %403
  %422 = load i32, i32* @Pmode, align 4
  %423 = load i64, i64* %8, align 8
  %424 = load i64, i64* %7, align 8
  %425 = call i64 @gen_rtx_PLUS(i32 %422, i64 %423, i64 %424)
  store i64 %425, i64* %7, align 8
  br label %426

426:                                              ; preds = %421, %398
  br label %427

427:                                              ; preds = %426, %376
  br label %428

428:                                              ; preds = %427, %297
  br label %429

429:                                              ; preds = %428, %240
  br label %430

430:                                              ; preds = %429, %165
  br label %431

431:                                              ; preds = %430, %103
  br label %432

432:                                              ; preds = %431, %20
  %433 = load i64, i64* %7, align 8
  store i64 %433, i64* %3, align 8
  br label %434

434:                                              ; preds = %432, %287
  %435 = load i64, i64* %3, align 8
  ret i64 %435
}

declare dso_local i64 @legitimate_pic_address_disp_p(i64) #1

declare dso_local i64 @local_symbolic_operand(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_CONST(i32, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @expand_simple_binop(i32, i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @SYMBOL_REF_TLS_MODEL(i64) #1

declare dso_local i64 @gen_const_mem(i32, i64) #1

declare dso_local i32 @set_mem_alias_set(i64, i32) #1

declare dso_local i32 @ix86_GOT_alias_set(...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_movsi(i64, i64) #1

declare dso_local i32 @x86_64_immediate_operand(i64, i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
