; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimize_tls_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_legitimize_tls_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@TARGET_GNU2_TLS = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i32 0, align 4
@REG_EQUIV = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@UNSPEC_DTPOFF = common dso_local global i32 0, align 4
@UNSPEC_GOTNTPOFF = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i32* null, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i32* null, align 8
@TARGET_ANY_GNU_TLS = common dso_local global i32 0, align 4
@UNSPEC_GOTTPOFF = common dso_local global i32 0, align 4
@UNSPEC_INDNTPOFF = common dso_local global i32 0, align 4
@TARGET_TLS_DIRECT_SEG_REFS = common dso_local global i32 0, align 4
@UNSPEC_NTPOFF = common dso_local global i32 0, align 4
@UNSPEC_TPOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @legitimize_tls_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @legitimize_tls_address(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %319 [
    i32 131, label %21
    i32 129, label %83
    i32 130, label %175
    i32 128, label %270
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @Pmode, align 4
  %23 = call i32* @gen_reg_rtx(i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32* @get_thread_pointer(i32 1)
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32* [ %27, %26 ], [ null, %28 ]
  store i32* %30, i32** %12, align 8
  %31 = load i32, i32* @TARGET_64BIT, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @Pmode, align 4
  %38 = call i32* @gen_rtx_REG(i32 %37, i32 0)
  store i32* %38, i32** %14, align 8
  %39 = call i32 (...) @start_sequence()
  %40 = load i32*, i32** %14, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @gen_tls_global_dynamic_64(i32* %40, i32* %41)
  %43 = call i32 @emit_call_insn(i32 %42)
  %44 = call i32* (...) @get_insns()
  store i32* %44, i32** %15, align 8
  %45 = call i32 (...) @end_sequence()
  %46 = load i32*, i32** %15, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @emit_libcall_block(i32* %46, i32* %47, i32* %48, i32* %49)
  br label %68

51:                                               ; preds = %33, %29
  %52 = load i32, i32* @TARGET_64BIT, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @gen_tls_global_dynamic_64(i32* %58, i32* %59)
  %61 = call i32 @emit_insn(i32 %60)
  br label %67

62:                                               ; preds = %54, %51
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @gen_tls_global_dynamic_32(i32* %63, i32* %64)
  %66 = call i32 @emit_insn(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32, i32* @Pmode, align 4
  %73 = load i32, i32* @Pmode, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32* @gen_rtx_PLUS(i32 %73, i32* %74, i32* %75)
  %77 = call i32* @force_reg(i32 %72, i32* %76)
  store i32* %77, i32** %8, align 8
  %78 = call i32 (...) @get_last_insn()
  %79 = load i32, i32* @REG_EQUIV, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @set_unique_reg_note(i32 %78, i32 %79, i32* %80)
  br label %82

82:                                               ; preds = %71, %68
  br label %321

83:                                               ; preds = %3
  %84 = load i32, i32* @Pmode, align 4
  %85 = call i32* @gen_reg_rtx(i32 %84)
  store i32* %85, i32** %9, align 8
  %86 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32* @get_thread_pointer(i32 1)
  br label %91

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32* [ %89, %88 ], [ null, %90 ]
  store i32* %92, i32** %12, align 8
  %93 = load i32, i32* @TARGET_64BIT, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @Pmode, align 4
  %100 = call i32* @gen_rtx_REG(i32 %99, i32 0)
  store i32* %100, i32** %16, align 8
  %101 = call i32 (...) @start_sequence()
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @gen_tls_local_dynamic_base_64(i32* %102)
  %104 = call i32 @emit_call_insn(i32 %103)
  %105 = call i32* (...) @get_insns()
  store i32* %105, i32** %17, align 8
  %106 = call i32 (...) @end_sequence()
  %107 = load i32, i32* @VOIDmode, align 4
  %108 = load i32, i32* @const0_rtx, align 4
  %109 = call i32* @gen_rtx_EXPR_LIST(i32 %107, i32 %108, i32* null)
  store i32* %109, i32** %18, align 8
  %110 = load i32, i32* @VOIDmode, align 4
  %111 = call i32 (...) @ix86_tls_get_addr()
  %112 = load i32*, i32** %18, align 8
  %113 = call i32* @gen_rtx_EXPR_LIST(i32 %110, i32 %111, i32* %112)
  store i32* %113, i32** %18, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %16, align 8
  %117 = load i32*, i32** %18, align 8
  %118 = call i32 @emit_libcall_block(i32* %114, i32* %115, i32* %116, i32* %117)
  br label %134

119:                                              ; preds = %95, %91
  %120 = load i32, i32* @TARGET_64BIT, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @gen_tls_local_dynamic_base_64(i32* %126)
  %128 = call i32 @emit_insn(i32 %127)
  br label %133

129:                                              ; preds = %122, %119
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @gen_tls_local_dynamic_base_32(i32* %130)
  %132 = call i32 @emit_insn(i32 %131)
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %98
  %135 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = call i32* (...) @ix86_tls_module_base()
  store i32* %138, i32** %19, align 8
  %139 = call i32 (...) @get_last_insn()
  %140 = load i32, i32* @REG_EQUIV, align 4
  %141 = load i32, i32* @Pmode, align 4
  %142 = load i32*, i32** %19, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = call i32* @gen_rtx_MINUS(i32 %141, i32* %142, i32* %143)
  %145 = call i32 @set_unique_reg_note(i32 %139, i32 %140, i32* %144)
  br label %146

146:                                              ; preds = %137, %134
  %147 = load i32, i32* @Pmode, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @gen_rtvec(i32 1, i32* %148)
  %150 = load i32, i32* @UNSPEC_DTPOFF, align 4
  %151 = call i32* @gen_rtx_UNSPEC(i32 %147, i32 %149, i32 %150)
  store i32* %151, i32** %10, align 8
  %152 = load i32, i32* @Pmode, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = call i32* @gen_rtx_CONST(i32 %152, i32* %153)
  store i32* %154, i32** %10, align 8
  %155 = load i32, i32* @Pmode, align 4
  %156 = load i32, i32* @Pmode, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = call i32* @gen_rtx_PLUS(i32 %156, i32* %157, i32* %158)
  %160 = call i32* @force_reg(i32 %155, i32* %159)
  store i32* %160, i32** %8, align 8
  %161 = load i32, i32* @TARGET_GNU2_TLS, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %146
  %164 = load i32, i32* @Pmode, align 4
  %165 = load i32, i32* @Pmode, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = call i32* @gen_rtx_PLUS(i32 %165, i32* %166, i32* %167)
  %169 = call i32* @force_reg(i32 %164, i32* %168)
  store i32* %169, i32** %8, align 8
  %170 = call i32 (...) @get_last_insn()
  %171 = load i32, i32* @REG_EQUIV, align 4
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @set_unique_reg_note(i32 %170, i32 %171, i32* %172)
  br label %174

174:                                              ; preds = %163, %146
  br label %321

175:                                              ; preds = %3
  %176 = load i32, i32* @TARGET_64BIT, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  store i32* null, i32** %11, align 8
  %179 = load i32, i32* @UNSPEC_GOTNTPOFF, align 4
  store i32 %179, i32* %13, align 4
  br label %214

180:                                              ; preds = %175
  %181 = load i32, i32* @flag_pic, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %180
  %184 = load i32, i32* @reload_in_progress, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i32*, i32** @regs_ever_live, align 8
  %188 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %186, %183
  %191 = load i32*, i32** @pic_offset_table_rtx, align 8
  store i32* %191, i32** %11, align 8
  %192 = load i32, i32* @TARGET_ANY_GNU_TLS, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @UNSPEC_GOTNTPOFF, align 4
  br label %198

196:                                              ; preds = %190
  %197 = load i32, i32* @UNSPEC_GOTTPOFF, align 4
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  store i32 %199, i32* %13, align 4
  br label %213

200:                                              ; preds = %180
  %201 = load i32, i32* @TARGET_ANY_GNU_TLS, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* @Pmode, align 4
  %205 = call i32* @gen_reg_rtx(i32 %204)
  store i32* %205, i32** %11, align 8
  %206 = load i32*, i32** %11, align 8
  %207 = call i32 @gen_set_got(i32* %206)
  %208 = call i32 @emit_insn(i32 %207)
  %209 = load i32, i32* @UNSPEC_GOTTPOFF, align 4
  store i32 %209, i32* %13, align 4
  br label %212

210:                                              ; preds = %200
  store i32* null, i32** %11, align 8
  %211 = load i32, i32* @UNSPEC_INDNTPOFF, align 4
  store i32 %211, i32* %13, align 4
  br label %212

212:                                              ; preds = %210, %203
  br label %213

213:                                              ; preds = %212, %198
  br label %214

214:                                              ; preds = %213, %178
  %215 = load i32, i32* @Pmode, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 @gen_rtvec(i32 1, i32* %216)
  %218 = load i32, i32* %13, align 4
  %219 = call i32* @gen_rtx_UNSPEC(i32 %215, i32 %217, i32 %218)
  store i32* %219, i32** %10, align 8
  %220 = load i32, i32* @Pmode, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = call i32* @gen_rtx_CONST(i32 %220, i32* %221)
  store i32* %222, i32** %10, align 8
  %223 = load i32*, i32** %11, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %214
  %226 = load i32, i32* @Pmode, align 4
  %227 = load i32*, i32** %11, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = call i32* @gen_rtx_PLUS(i32 %226, i32* %227, i32* %228)
  store i32* %229, i32** %10, align 8
  br label %230

230:                                              ; preds = %225, %214
  %231 = load i32, i32* @Pmode, align 4
  %232 = load i32*, i32** %10, align 8
  %233 = call i32* @gen_const_mem(i32 %231, i32* %232)
  store i32* %233, i32** %10, align 8
  %234 = load i32*, i32** %10, align 8
  %235 = call i32 (...) @ix86_GOT_alias_set()
  %236 = call i32 @set_mem_alias_set(i32* %234, i32 %235)
  %237 = load i32, i32* @TARGET_64BIT, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %230
  %240 = load i32, i32* @TARGET_ANY_GNU_TLS, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %260

242:                                              ; preds = %239, %230
  %243 = load i32, i32* %7, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* @TARGET_TLS_DIRECT_SEG_REFS, align 4
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  br label %249

249:                                              ; preds = %245, %242
  %250 = phi i1 [ true, %242 ], [ %248, %245 ]
  %251 = zext i1 %250 to i32
  %252 = call i32* @get_thread_pointer(i32 %251)
  store i32* %252, i32** %9, align 8
  %253 = load i32, i32* @Pmode, align 4
  %254 = load i32*, i32** %10, align 8
  %255 = call i32* @force_reg(i32 %253, i32* %254)
  store i32* %255, i32** %10, align 8
  %256 = load i32, i32* @Pmode, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = load i32*, i32** %10, align 8
  %259 = call i32* @gen_rtx_PLUS(i32 %256, i32* %257, i32* %258)
  store i32* %259, i32** %4, align 8
  br label %323

260:                                              ; preds = %239
  %261 = call i32* @get_thread_pointer(i32 1)
  store i32* %261, i32** %9, align 8
  %262 = load i32, i32* @Pmode, align 4
  %263 = call i32* @gen_reg_rtx(i32 %262)
  store i32* %263, i32** %8, align 8
  %264 = load i32*, i32** %8, align 8
  %265 = load i32*, i32** %9, align 8
  %266 = load i32*, i32** %10, align 8
  %267 = call i32 @gen_subsi3(i32* %264, i32* %265, i32* %266)
  %268 = call i32 @emit_insn(i32 %267)
  br label %269

269:                                              ; preds = %260
  br label %321

270:                                              ; preds = %3
  %271 = load i32, i32* @Pmode, align 4
  %272 = load i32*, i32** %5, align 8
  %273 = call i32 @gen_rtvec(i32 1, i32* %272)
  %274 = load i32, i32* @TARGET_64BIT, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %270
  %277 = load i32, i32* @TARGET_ANY_GNU_TLS, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %276, %270
  %280 = load i32, i32* @UNSPEC_NTPOFF, align 4
  br label %283

281:                                              ; preds = %276
  %282 = load i32, i32* @UNSPEC_TPOFF, align 4
  br label %283

283:                                              ; preds = %281, %279
  %284 = phi i32 [ %280, %279 ], [ %282, %281 ]
  %285 = call i32* @gen_rtx_UNSPEC(i32 %271, i32 %273, i32 %284)
  store i32* %285, i32** %10, align 8
  %286 = load i32, i32* @Pmode, align 4
  %287 = load i32*, i32** %10, align 8
  %288 = call i32* @gen_rtx_CONST(i32 %286, i32* %287)
  store i32* %288, i32** %10, align 8
  %289 = load i32, i32* @TARGET_64BIT, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %283
  %292 = load i32, i32* @TARGET_ANY_GNU_TLS, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %309

294:                                              ; preds = %291, %283
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* @TARGET_TLS_DIRECT_SEG_REFS, align 4
  %299 = icmp ne i32 %298, 0
  %300 = xor i1 %299, true
  br label %301

301:                                              ; preds = %297, %294
  %302 = phi i1 [ true, %294 ], [ %300, %297 ]
  %303 = zext i1 %302 to i32
  %304 = call i32* @get_thread_pointer(i32 %303)
  store i32* %304, i32** %9, align 8
  %305 = load i32, i32* @Pmode, align 4
  %306 = load i32*, i32** %9, align 8
  %307 = load i32*, i32** %10, align 8
  %308 = call i32* @gen_rtx_PLUS(i32 %305, i32* %306, i32* %307)
  store i32* %308, i32** %4, align 8
  br label %323

309:                                              ; preds = %291
  %310 = call i32* @get_thread_pointer(i32 1)
  store i32* %310, i32** %9, align 8
  %311 = load i32, i32* @Pmode, align 4
  %312 = call i32* @gen_reg_rtx(i32 %311)
  store i32* %312, i32** %8, align 8
  %313 = load i32*, i32** %8, align 8
  %314 = load i32*, i32** %9, align 8
  %315 = load i32*, i32** %10, align 8
  %316 = call i32 @gen_subsi3(i32* %313, i32* %314, i32* %315)
  %317 = call i32 @emit_insn(i32 %316)
  br label %318

318:                                              ; preds = %309
  br label %321

319:                                              ; preds = %3
  %320 = call i32 (...) @gcc_unreachable()
  br label %321

321:                                              ; preds = %319, %318, %269, %174, %82
  %322 = load i32*, i32** %8, align 8
  store i32* %322, i32** %4, align 8
  br label %323

323:                                              ; preds = %321, %301, %249
  %324 = load i32*, i32** %4, align 8
  ret i32* %324
}

declare dso_local i32* @gen_reg_rtx(i32) #1

declare dso_local i32* @get_thread_pointer(i32) #1

declare dso_local i32* @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_call_insn(i32) #1

declare dso_local i32 @gen_tls_global_dynamic_64(i32*, i32*) #1

declare dso_local i32* @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_libcall_block(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_tls_global_dynamic_32(i32*, i32*) #1

declare dso_local i32* @force_reg(i32, i32*) #1

declare dso_local i32* @gen_rtx_PLUS(i32, i32*, i32*) #1

declare dso_local i32 @set_unique_reg_note(i32, i32, i32*) #1

declare dso_local i32 @get_last_insn(...) #1

declare dso_local i32 @gen_tls_local_dynamic_base_64(i32*) #1

declare dso_local i32* @gen_rtx_EXPR_LIST(i32, i32, i32*) #1

declare dso_local i32 @ix86_tls_get_addr(...) #1

declare dso_local i32 @gen_tls_local_dynamic_base_32(i32*) #1

declare dso_local i32* @ix86_tls_module_base(...) #1

declare dso_local i32* @gen_rtx_MINUS(i32, i32*, i32*) #1

declare dso_local i32* @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32*) #1

declare dso_local i32* @gen_rtx_CONST(i32, i32*) #1

declare dso_local i32 @gen_set_got(i32*) #1

declare dso_local i32* @gen_const_mem(i32, i32*) #1

declare dso_local i32 @set_mem_alias_set(i32*, i32) #1

declare dso_local i32 @ix86_GOT_alias_set(...) #1

declare dso_local i32 @gen_subsi3(i32*, i32*, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
