; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_legitimize_tls_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_legitimize_tls_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYMBOL_REF = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@UNSPEC_TLSGD = common dso_local global i32 0, align 4
@UNSPEC_NTPOFF = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@UNSPEC_TLSLDM = common dso_local global i32 0, align 4
@UNSPEC_TLSLDM_NTPOFF = common dso_local global i32 0, align 4
@UNSPEC_DTPOFF = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4
@regs_ever_live = common dso_local global i32* null, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@UNSPEC_GOTNTPOFF = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@TARGET_CPU_ZARCH = common dso_local global i32 0, align 4
@UNSPEC_TLS_LOAD = common dso_local global i32 0, align 4
@CONST = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @legitimize_tls_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legitimize_tls_address(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @SYMBOL_REF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %325

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @tls_symbolic_operand(i32 %16)
  switch i32 %17, label %322 [
    i32 132, label %18
    i32 130, label %65
    i32 131, label %137
    i32 129, label %293
  ]

18:                                               ; preds = %15
  %19 = call i32 (...) @start_sequence()
  %20 = load i32, i32* @Pmode, align 4
  %21 = call i32 @gen_rtx_REG(i32 %20, i32 2)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @Pmode, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %23)
  %25 = load i32, i32* @UNSPEC_TLSGD, align 4
  %26 = call i32 @gen_rtx_UNSPEC(i32 %22, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @Pmode, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @gen_rtx_CONST(i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @Pmode, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @force_const_mem(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @emit_move_insn(i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @s390_emit_tls_call_insn(i32 %36, i32 %37)
  %39 = call i32 (...) @get_insns()
  store i32 %39, i32* %10, align 4
  %40 = call i32 (...) @end_sequence()
  %41 = load i32, i32* @Pmode, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %42)
  %44 = load i32, i32* @UNSPEC_NTPOFF, align 4
  %45 = call i32 @gen_rtx_UNSPEC(i32 %41, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @Pmode, align 4
  %47 = call i32 @gen_reg_rtx(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @emit_libcall_block(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @Pmode, align 4
  %54 = call i32 (...) @s390_get_thread_pointer()
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @gen_rtx_PLUS(i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %18
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @s390_load_address(i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %18
  br label %324

65:                                               ; preds = %15
  %66 = call i32 (...) @start_sequence()
  %67 = load i32, i32* @Pmode, align 4
  %68 = call i32 @gen_rtx_REG(i32 %67, i32 2)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @Pmode, align 4
  %70 = load i32, i32* @const0_rtx, align 4
  %71 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %70)
  %72 = load i32, i32* @UNSPEC_TLSLDM, align 4
  %73 = call i32 @gen_rtx_UNSPEC(i32 %69, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @Pmode, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @gen_rtx_CONST(i32 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @Pmode, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @force_const_mem(i32 %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @emit_move_insn(i32 %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @s390_emit_tls_call_insn(i32 %83, i32 %84)
  %86 = call i32 (...) @get_insns()
  store i32 %86, i32* %10, align 4
  %87 = call i32 (...) @end_sequence()
  %88 = load i32, i32* @Pmode, align 4
  %89 = load i32, i32* @const0_rtx, align 4
  %90 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %89)
  %91 = load i32, i32* @UNSPEC_TLSLDM_NTPOFF, align 4
  %92 = call i32 @gen_rtx_UNSPEC(i32 %88, i32 %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @Pmode, align 4
  %94 = call i32 @gen_reg_rtx(i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @emit_libcall_block(i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @Pmode, align 4
  %101 = call i32 (...) @s390_get_thread_pointer()
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @gen_rtx_PLUS(i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* @Pmode, align 4
  %105 = call i32 @gen_reg_rtx(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @s390_load_address(i32 %106, i32 %107)
  %109 = load i32, i32* @Pmode, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %110)
  %112 = load i32, i32* @UNSPEC_DTPOFF, align 4
  %113 = call i32 @gen_rtx_UNSPEC(i32 %109, i32 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @Pmode, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @gen_rtx_CONST(i32 %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* @Pmode, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @force_const_mem(i32 %117, i32 %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* @Pmode, align 4
  %121 = call i32 @gen_reg_rtx(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @emit_move_insn(i32 %122, i32 %123)
  %125 = load i32, i32* @Pmode, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @gen_rtx_PLUS(i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %65
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @s390_load_address(i32 %132, i32 %133)
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %65
  br label %324

137:                                              ; preds = %15
  %138 = load i32, i32* @flag_pic, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %171

140:                                              ; preds = %137
  %141 = load i32, i32* @reload_in_progress, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @reload_completed, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143, %140
  %147 = load i32*, i32** @regs_ever_live, align 8
  %148 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* @Pmode, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %152)
  %154 = load i32, i32* @UNSPEC_GOTNTPOFF, align 4
  %155 = call i32 @gen_rtx_UNSPEC(i32 %151, i32 %153, i32 %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* @Pmode, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @gen_rtx_CONST(i32 %156, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* @Pmode, align 4
  %160 = load i32, i32* @pic_offset_table_rtx, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @gen_rtx_PLUS(i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* @Pmode, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @gen_const_mem(i32 %163, i32 %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* @Pmode, align 4
  %167 = call i32 @gen_reg_rtx(i32 %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @emit_move_insn(i32 %168, i32 %169)
  br label %280

171:                                              ; preds = %137
  %172 = load i32, i32* @TARGET_CPU_ZARCH, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %195

174:                                              ; preds = %171
  %175 = load i32, i32* @Pmode, align 4
  %176 = load i32, i32* %3, align 4
  %177 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %176)
  %178 = call i32 @gen_rtx_UNSPEC(i32 %175, i32 %177, i32 128)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* @Pmode, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @gen_rtx_CONST(i32 %179, i32 %180)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* @Pmode, align 4
  %183 = call i32 @gen_reg_rtx(i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @emit_move_insn(i32 %184, i32 %185)
  %187 = load i32, i32* @Pmode, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @gen_const_mem(i32 %187, i32 %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* @Pmode, align 4
  %191 = call i32 @gen_reg_rtx(i32 %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @emit_move_insn(i32 %192, i32 %193)
  br label %279

195:                                              ; preds = %171
  %196 = load i32, i32* @flag_pic, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %245

198:                                              ; preds = %195
  %199 = load i32, i32* @reload_in_progress, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* @reload_completed, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201, %198
  %205 = load i32*, i32** @regs_ever_live, align 8
  %206 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32 1, i32* %207, align 4
  br label %208

208:                                              ; preds = %204, %201
  %209 = load i32, i32* @Pmode, align 4
  %210 = load i32, i32* %3, align 4
  %211 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %210)
  %212 = load i32, i32* @UNSPEC_GOTNTPOFF, align 4
  %213 = call i32 @gen_rtx_UNSPEC(i32 %209, i32 %211, i32 %212)
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* @Pmode, align 4
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @gen_rtx_CONST(i32 %214, i32 %215)
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* @Pmode, align 4
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @force_const_mem(i32 %217, i32 %218)
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* @Pmode, align 4
  %221 = call i32 @gen_reg_rtx(i32 %220)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @emit_move_insn(i32 %222, i32 %223)
  %225 = load i32, i32* @Pmode, align 4
  %226 = load i32, i32* @pic_offset_table_rtx, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @gen_rtx_PLUS(i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* @Pmode, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @gen_const_mem(i32 %229, i32 %230)
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* @Pmode, align 4
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* %3, align 4
  %235 = call i32 (i32, i32, ...) @gen_rtvec(i32 2, i32 %233, i32 %234)
  %236 = load i32, i32* @UNSPEC_TLS_LOAD, align 4
  %237 = call i32 @gen_rtx_UNSPEC(i32 %232, i32 %235, i32 %236)
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* @Pmode, align 4
  %239 = call i32 @gen_reg_rtx(i32 %238)
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* @Pmode, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @gen_rtx_SET(i32 %240, i32 %241, i32 %242)
  %244 = call i32 @emit_insn(i32 %243)
  br label %278

245:                                              ; preds = %195
  %246 = load i32, i32* @Pmode, align 4
  %247 = load i32, i32* %3, align 4
  %248 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %247)
  %249 = call i32 @gen_rtx_UNSPEC(i32 %246, i32 %248, i32 128)
  store i32 %249, i32* %5, align 4
  %250 = load i32, i32* @Pmode, align 4
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @gen_rtx_CONST(i32 %250, i32 %251)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* @Pmode, align 4
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @force_const_mem(i32 %253, i32 %254)
  store i32 %255, i32* %5, align 4
  %256 = load i32, i32* @Pmode, align 4
  %257 = call i32 @gen_reg_rtx(i32 %256)
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* %5, align 4
  %260 = call i32 @emit_move_insn(i32 %258, i32 %259)
  %261 = load i32, i32* %7, align 4
  store i32 %261, i32* %5, align 4
  %262 = load i32, i32* @Pmode, align 4
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @gen_const_mem(i32 %262, i32 %263)
  store i32 %264, i32* %5, align 4
  %265 = load i32, i32* @Pmode, align 4
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* %3, align 4
  %268 = call i32 (i32, i32, ...) @gen_rtvec(i32 2, i32 %266, i32 %267)
  %269 = load i32, i32* @UNSPEC_TLS_LOAD, align 4
  %270 = call i32 @gen_rtx_UNSPEC(i32 %265, i32 %268, i32 %269)
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* @Pmode, align 4
  %272 = call i32 @gen_reg_rtx(i32 %271)
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* @Pmode, align 4
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* %5, align 4
  %276 = call i32 @gen_rtx_SET(i32 %273, i32 %274, i32 %275)
  %277 = call i32 @emit_insn(i32 %276)
  br label %278

278:                                              ; preds = %245, %208
  br label %279

279:                                              ; preds = %278, %174
  br label %280

280:                                              ; preds = %279, %150
  %281 = load i32, i32* @Pmode, align 4
  %282 = call i32 (...) @s390_get_thread_pointer()
  %283 = load i32, i32* %7, align 4
  %284 = call i32 @gen_rtx_PLUS(i32 %281, i32 %282, i32 %283)
  store i32 %284, i32* %5, align 4
  %285 = load i32, i32* %4, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %280
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* %5, align 4
  %290 = call i32 @s390_load_address(i32 %288, i32 %289)
  %291 = load i32, i32* %4, align 4
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %287, %280
  br label %324

293:                                              ; preds = %15
  %294 = load i32, i32* @Pmode, align 4
  %295 = load i32, i32* %3, align 4
  %296 = call i32 (i32, i32, ...) @gen_rtvec(i32 1, i32 %295)
  %297 = load i32, i32* @UNSPEC_NTPOFF, align 4
  %298 = call i32 @gen_rtx_UNSPEC(i32 %294, i32 %296, i32 %297)
  store i32 %298, i32* %5, align 4
  %299 = load i32, i32* @Pmode, align 4
  %300 = load i32, i32* %5, align 4
  %301 = call i32 @gen_rtx_CONST(i32 %299, i32 %300)
  store i32 %301, i32* %5, align 4
  %302 = load i32, i32* @Pmode, align 4
  %303 = load i32, i32* %5, align 4
  %304 = call i32 @force_const_mem(i32 %302, i32 %303)
  store i32 %304, i32* %5, align 4
  %305 = load i32, i32* @Pmode, align 4
  %306 = call i32 @gen_reg_rtx(i32 %305)
  store i32 %306, i32* %7, align 4
  %307 = load i32, i32* %7, align 4
  %308 = load i32, i32* %5, align 4
  %309 = call i32 @emit_move_insn(i32 %307, i32 %308)
  %310 = load i32, i32* @Pmode, align 4
  %311 = call i32 (...) @s390_get_thread_pointer()
  %312 = load i32, i32* %7, align 4
  %313 = call i32 @gen_rtx_PLUS(i32 %310, i32 %311, i32 %312)
  store i32 %313, i32* %5, align 4
  %314 = load i32, i32* %4, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %293
  %317 = load i32, i32* %4, align 4
  %318 = load i32, i32* %5, align 4
  %319 = call i32 @s390_load_address(i32 %317, i32 %318)
  %320 = load i32, i32* %4, align 4
  store i32 %320, i32* %5, align 4
  br label %321

321:                                              ; preds = %316, %293
  br label %324

322:                                              ; preds = %15
  %323 = call i32 (...) @gcc_unreachable()
  br label %324

324:                                              ; preds = %322, %321, %292, %136, %64
  br label %393

325:                                              ; preds = %2
  %326 = load i32, i32* %3, align 4
  %327 = call i64 @GET_CODE(i32 %326)
  %328 = load i64, i64* @CONST, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %347

330:                                              ; preds = %325
  %331 = load i32, i32* %3, align 4
  %332 = call i32 @XEXP(i32 %331, i32 0)
  %333 = call i64 @GET_CODE(i32 %332)
  %334 = load i64, i64* @UNSPEC, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %347

336:                                              ; preds = %330
  %337 = load i32, i32* %3, align 4
  %338 = call i32 @XEXP(i32 %337, i32 0)
  %339 = call i32 @XINT(i32 %338, i32 1)
  switch i32 %339, label %344 [
    i32 128, label %340
  ]

340:                                              ; preds = %336
  %341 = load i32, i32* @TARGET_CPU_ZARCH, align 4
  %342 = call i32 @gcc_assert(i32 %341)
  %343 = load i32, i32* %3, align 4
  store i32 %343, i32* %5, align 4
  br label %346

344:                                              ; preds = %336
  %345 = call i32 (...) @gcc_unreachable()
  br label %346

346:                                              ; preds = %344, %340
  br label %392

347:                                              ; preds = %330, %325
  %348 = load i32, i32* %3, align 4
  %349 = call i64 @GET_CODE(i32 %348)
  %350 = load i64, i64* @CONST, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %389

352:                                              ; preds = %347
  %353 = load i32, i32* %3, align 4
  %354 = call i32 @XEXP(i32 %353, i32 0)
  %355 = call i64 @GET_CODE(i32 %354)
  %356 = load i64, i64* @PLUS, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %389

358:                                              ; preds = %352
  %359 = load i32, i32* %3, align 4
  %360 = call i32 @XEXP(i32 %359, i32 0)
  %361 = call i32 @XEXP(i32 %360, i32 1)
  %362 = call i64 @GET_CODE(i32 %361)
  %363 = load i64, i64* @CONST_INT, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %389

365:                                              ; preds = %358
  %366 = load i32, i32* %3, align 4
  %367 = call i32 @XEXP(i32 %366, i32 0)
  %368 = call i32 @XEXP(i32 %367, i32 0)
  store i32 %368, i32* %5, align 4
  %369 = load i32, i32* %5, align 4
  %370 = call i64 @GET_CODE(i32 %369)
  %371 = load i64, i64* @SYMBOL_REF, align 8
  %372 = icmp ne i64 %370, %371
  br i1 %372, label %373, label %377

373:                                              ; preds = %365
  %374 = load i32, i32* @Pmode, align 4
  %375 = load i32, i32* %5, align 4
  %376 = call i32 @gen_rtx_CONST(i32 %374, i32 %375)
  store i32 %376, i32* %5, align 4
  br label %377

377:                                              ; preds = %373, %365
  %378 = load i32, i32* %5, align 4
  %379 = load i32, i32* %4, align 4
  %380 = call i32 @legitimize_tls_address(i32 %378, i32 %379)
  store i32 %380, i32* %5, align 4
  %381 = load i32, i32* %5, align 4
  %382 = load i32, i32* %3, align 4
  %383 = call i32 @XEXP(i32 %382, i32 0)
  %384 = call i32 @XEXP(i32 %383, i32 1)
  %385 = call i32 @INTVAL(i32 %384)
  %386 = call i32 @plus_constant(i32 %381, i32 %385)
  store i32 %386, i32* %5, align 4
  %387 = load i32, i32* %5, align 4
  %388 = call i32 @force_operand(i32 %387, i32 0)
  store i32 %388, i32* %5, align 4
  br label %391

389:                                              ; preds = %358, %352, %347
  %390 = call i32 (...) @gcc_unreachable()
  br label %391

391:                                              ; preds = %389, %377
  br label %392

392:                                              ; preds = %391, %346
  br label %393

393:                                              ; preds = %392, %324
  %394 = load i32, i32* %5, align 4
  ret i32 %394
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @tls_symbolic_operand(i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, ...) #1

declare dso_local i32 @gen_rtx_CONST(i32, i32) #1

declare dso_local i32 @force_const_mem(i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @s390_emit_tls_call_insn(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_libcall_block(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @s390_get_thread_pointer(...) #1

declare dso_local i32 @s390_load_address(i32, i32) #1

declare dso_local i32 @gen_const_mem(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @force_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
