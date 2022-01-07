; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_load_toc_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_load_toc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@RS6000_PIC_OFFSET_TABLE_REGNUM = common dso_local global i32 0, align 4
@TARGET_ELF = common dso_local global i64 0, align 8
@TARGET_SECURE_PLT = common dso_local global i64 0, align 8
@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_AIX = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"LCF\00", align 1
@rs6000_pic_labelno = common dso_local global i32 0, align 4
@toc_label_name = common dso_local global i32 0, align 4
@LINK_REGISTER_REGNUM = common dso_local global i32 0, align 4
@ABI_V4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"LCL\00", align 1
@TARGET_AIX = common dso_local global i32 0, align 4
@TARGET_MINIMAL_TOC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"LCTOC\00", align 1
@TARGET_32BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_emit_load_toc_table(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [30 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [30 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [30 x i8], align 16
  %19 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %20 = load i32, i32* @Pmode, align 4
  %21 = load i32, i32* @RS6000_PIC_OFFSET_TABLE_REGNUM, align 4
  %22 = call i32 @gen_rtx_REG(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i64, i64* @TARGET_ELF, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %115

25:                                               ; preds = %1
  %26 = load i64, i64* @TARGET_SECURE_PLT, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %115

28:                                               ; preds = %25
  %29 = load i64, i64* @DEFAULT_ABI, align 8
  %30 = load i64, i64* @ABI_AIX, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %115

32:                                               ; preds = %28
  %33 = load i32, i32* @flag_pic, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %115

35:                                               ; preds = %32
  %36 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %37 = load i32, i32* @rs6000_pic_labelno, align 4
  %38 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @Pmode, align 4
  %40 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %41 = call i32 @ggc_strdup(i8* %40)
  %42 = call i32 @gen_rtx_SYMBOL_REF(i32 %39, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @flag_pic, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32, i32* @Pmode, align 4
  %47 = load i32, i32* @toc_label_name, align 4
  %48 = call i32 @gen_rtx_SYMBOL_REF(i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %51

49:                                               ; preds = %35
  %50 = call i32 (...) @rs6000_got_sym()
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* %8, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @Pmode, align 4
  %57 = call i32 @gen_reg_rtx(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @Pmode, align 4
  %59 = call i32 @gen_reg_rtx(i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %2, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @Pmode, align 4
  %65 = load i32, i32* @LINK_REGISTER_REGNUM, align 4
  %66 = call i32 @gen_rtx_REG(i32 %64, i32 %65)
  br label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @Pmode, align 4
  %69 = call i32 @gen_reg_rtx(i32 %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i32 [ %66, %63 ], [ %69, %67 ]
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @gen_load_toc_v4_PIC_1(i32 %72, i32 %73)
  %75 = call i32 @emit_insn(i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @rs6000_maybe_dead(i32 %79)
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @emit_move_insn(i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @rs6000_maybe_dead(i32 %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @gen_load_toc_v4_PIC_3b(i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = call i32 @emit_insn(i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %2, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @rs6000_maybe_dead(i32 %100)
  br label %102

102:                                              ; preds = %99, %90
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @gen_load_toc_v4_PIC_3c(i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = call i32 @emit_insn(i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %2, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @rs6000_maybe_dead(i32 %112)
  br label %114

114:                                              ; preds = %111, %102
  br label %314

115:                                              ; preds = %32, %28, %25, %1
  %116 = load i64, i64* @TARGET_ELF, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %115
  %119 = load i64, i64* @DEFAULT_ABI, align 8
  %120 = load i64, i64* @ABI_V4, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %155

122:                                              ; preds = %118
  %123 = load i32, i32* @flag_pic, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %155

125:                                              ; preds = %122
  %126 = load i32, i32* %2, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* @Pmode, align 4
  %130 = load i32, i32* @LINK_REGISTER_REGNUM, align 4
  %131 = call i32 @gen_rtx_REG(i32 %129, i32 %130)
  br label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @Pmode, align 4
  %134 = call i32 @gen_reg_rtx(i32 %133)
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi i32 [ %131, %128 ], [ %134, %132 ]
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @gen_load_toc_v4_pic_si(i32 %137)
  %139 = call i32 @emit_insn(i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %2, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @rs6000_maybe_dead(i32 %143)
  br label %145

145:                                              ; preds = %142, %135
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @emit_move_insn(i32 %146, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %2, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @rs6000_maybe_dead(i32 %152)
  br label %154

154:                                              ; preds = %151, %145
  br label %313

155:                                              ; preds = %122, %118, %115
  %156 = load i64, i64* @TARGET_ELF, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %248

158:                                              ; preds = %155
  %159 = load i64, i64* @DEFAULT_ABI, align 8
  %160 = load i64, i64* @ABI_AIX, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %248

162:                                              ; preds = %158
  %163 = load i32, i32* @flag_pic, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %248

165:                                              ; preds = %162
  %166 = load i32, i32* %2, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, i32* @Pmode, align 4
  %170 = load i32, i32* @LINK_REGISTER_REGNUM, align 4
  %171 = call i32 @gen_rtx_REG(i32 %169, i32 %170)
  br label %175

172:                                              ; preds = %165
  %173 = load i32, i32* @Pmode, align 4
  %174 = call i32 @gen_reg_rtx(i32 %173)
  br label %175

175:                                              ; preds = %172, %168
  %176 = phi i32 [ %171, %168 ], [ %174, %172 ]
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %2, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* @Pmode, align 4
  %181 = call i32 @gen_rtx_REG(i32 %180, i32 0)
  br label %185

182:                                              ; preds = %175
  %183 = load i32, i32* @Pmode, align 4
  %184 = call i32 @gen_reg_rtx(i32 %183)
  br label %185

185:                                              ; preds = %182, %179
  %186 = phi i32 [ %181, %179 ], [ %184, %182 ]
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %2, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %220

189:                                              ; preds = %185
  %190 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %191 = load i32, i32* @rs6000_pic_labelno, align 4
  %192 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @Pmode, align 4
  %194 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %195 = call i32 @ggc_strdup(i8* %194)
  %196 = call i32 @gen_rtx_SYMBOL_REF(i32 %193, i32 %195)
  store i32 %196, i32* %15, align 4
  %197 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %198 = load i32, i32* @rs6000_pic_labelno, align 4
  %199 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @Pmode, align 4
  %201 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %202 = call i32 @ggc_strdup(i8* %201)
  %203 = call i32 @gen_rtx_SYMBOL_REF(i32 %200, i32 %202)
  store i32 %203, i32* %16, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @gen_load_toc_v4_PIC_1(i32 %204, i32 %205)
  %207 = call i32 @emit_insn(i32 %206)
  %208 = call i32 @rs6000_maybe_dead(i32 %207)
  %209 = load i32, i32* %3, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @emit_move_insn(i32 %209, i32 %210)
  %212 = call i32 @rs6000_maybe_dead(i32 %211)
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %3, align 4
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @gen_load_toc_v4_PIC_2(i32 %213, i32 %214, i32 %215, i32 %216)
  %218 = call i32 @emit_insn(i32 %217)
  %219 = call i32 @rs6000_maybe_dead(i32 %218)
  br label %236

220:                                              ; preds = %185
  %221 = load i32, i32* @Pmode, align 4
  %222 = load i32, i32* @toc_label_name, align 4
  %223 = call i32 @gen_rtx_SYMBOL_REF(i32 %221, i32 %222)
  store i32 %223, i32* %17, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @gen_load_toc_v4_PIC_1b(i32 %224, i32 %225)
  %227 = call i32 @emit_insn(i32 %226)
  %228 = load i32, i32* %3, align 4
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @emit_move_insn(i32 %228, i32 %229)
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* @Pmode, align 4
  %233 = load i32, i32* %3, align 4
  %234 = call i32 @gen_rtx_MEM(i32 %232, i32 %233)
  %235 = call i32 @emit_move_insn(i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %220, %189
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %3, align 4
  %240 = call i32 @gen_addsi3(i32 %237, i32 %238, i32 %239)
  %241 = call i32 @emit_insn(i32 %240)
  store i32 %241, i32* %4, align 4
  %242 = load i32, i32* %2, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %236
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @rs6000_maybe_dead(i32 %245)
  br label %247

247:                                              ; preds = %244, %236
  br label %312

248:                                              ; preds = %162, %158, %155
  %249 = load i64, i64* @TARGET_ELF, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %288

251:                                              ; preds = %248
  %252 = load i32, i32* @TARGET_AIX, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %288, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* @flag_pic, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %288

257:                                              ; preds = %254
  %258 = load i64, i64* @TARGET_MINIMAL_TOC, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %288

260:                                              ; preds = %257
  %261 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 0
  %262 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %263 = load i32, i32* @Pmode, align 4
  %264 = getelementptr inbounds [30 x i8], [30 x i8]* %18, i64 0, i64 0
  %265 = call i32 @ggc_strdup(i8* %264)
  %266 = call i32 @gen_rtx_SYMBOL_REF(i32 %263, i32 %265)
  store i32 %266, i32* %19, align 4
  %267 = load i32, i32* %3, align 4
  %268 = load i32, i32* %19, align 4
  %269 = call i32 @gen_elf_high(i32 %267, i32 %268)
  %270 = call i32 @emit_insn(i32 %269)
  store i32 %270, i32* %4, align 4
  %271 = load i32, i32* %2, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %260
  %274 = load i32, i32* %4, align 4
  %275 = call i32 @rs6000_maybe_dead(i32 %274)
  br label %276

276:                                              ; preds = %273, %260
  %277 = load i32, i32* %3, align 4
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* %19, align 4
  %280 = call i32 @gen_elf_low(i32 %277, i32 %278, i32 %279)
  %281 = call i32 @emit_insn(i32 %280)
  store i32 %281, i32* %4, align 4
  %282 = load i32, i32* %2, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %276
  %285 = load i32, i32* %4, align 4
  %286 = call i32 @rs6000_maybe_dead(i32 %285)
  br label %287

287:                                              ; preds = %284, %276
  br label %311

288:                                              ; preds = %257, %254, %251, %248
  %289 = load i64, i64* @DEFAULT_ABI, align 8
  %290 = load i64, i64* @ABI_AIX, align 8
  %291 = icmp eq i64 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @gcc_assert(i32 %292)
  %294 = load i64, i64* @TARGET_32BIT, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %288
  %297 = load i32, i32* %3, align 4
  %298 = call i32 @gen_load_toc_aix_si(i32 %297)
  %299 = call i32 @emit_insn(i32 %298)
  store i32 %299, i32* %4, align 4
  br label %304

300:                                              ; preds = %288
  %301 = load i32, i32* %3, align 4
  %302 = call i32 @gen_load_toc_aix_di(i32 %301)
  %303 = call i32 @emit_insn(i32 %302)
  store i32 %303, i32* %4, align 4
  br label %304

304:                                              ; preds = %300, %296
  %305 = load i32, i32* %2, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32, i32* %4, align 4
  %309 = call i32 @rs6000_maybe_dead(i32 %308)
  br label %310

310:                                              ; preds = %307, %304
  br label %311

311:                                              ; preds = %310, %287
  br label %312

312:                                              ; preds = %311, %247
  br label %313

313:                                              ; preds = %312, %154
  br label %314

314:                                              ; preds = %313, %114
  ret void
}

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i32 @gen_rtx_SYMBOL_REF(i32, i32) #1

declare dso_local i32 @ggc_strdup(i8*) #1

declare dso_local i32 @rs6000_got_sym(...) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_load_toc_v4_PIC_1(i32, i32) #1

declare dso_local i32 @rs6000_maybe_dead(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_load_toc_v4_PIC_3b(i32, i32, i32, i32) #1

declare dso_local i32 @gen_load_toc_v4_PIC_3c(i32, i32, i32, i32) #1

declare dso_local i32 @gen_load_toc_v4_pic_si(i32) #1

declare dso_local i32 @gen_load_toc_v4_PIC_2(i32, i32, i32, i32) #1

declare dso_local i32 @gen_load_toc_v4_PIC_1b(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @gen_elf_high(i32, i32) #1

declare dso_local i32 @gen_elf_low(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gen_load_toc_aix_si(i32) #1

declare dso_local i32 @gen_load_toc_aix_di(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
