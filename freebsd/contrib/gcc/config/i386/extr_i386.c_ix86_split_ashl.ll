; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_ashl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_ashl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DImode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@const1_rtx = common dso_local global i64 0, align 8
@CCZmode = common dso_local global i32 0, align 4
@FLAGS_REG = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@TARGET_PARTIAL_REG_STALL = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i64 0, align 8
@TARGET_CMOVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_split_ashl(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  %8 = alloca [2 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DImode, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 32, i32 64
  store i32 %19, i32* %10, align 4
  %20 = load i64*, i64** %4, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @CONST_INT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %106

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DImode, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 (i64*, i32, i64*, i64*)* @split_di, i32 (i64*, i32, i64*, i64*)* @split_ti
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %35 = call i32 %31(i64* %32, i32 2, i64* %33, i64* %34)
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @INTVAL(i64 %38)
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %39, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %26
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %49 = load i64, i64* %48, align 16
  %50 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @emit_move_insn(i64 %49, i64 %51)
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %54 = load i64, i64* %53, align 16
  %55 = load i64, i64* @const0_rtx, align 8
  %56 = call i32 @emit_move_insn(i64 %54, i64 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %47
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %62 = load i64, i64* %61, align 16
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ix86_expand_ashl_const(i64 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %60, %47
  br label %105

69:                                               ; preds = %26
  %70 = load i64*, i64** %4, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @rtx_equal_p(i64 %72, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %69
  %79 = load i64*, i64** %4, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %4, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @emit_move_insn(i64 %81, i64 %84)
  br label %86

86:                                               ; preds = %78, %69
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @DImode, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 (i64, i64, i64)* @gen_x86_shld_1, i32 (i64, i64, i64)* @gen_x86_64_shld
  %92 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %93 = load i64, i64* %92, align 16
  %94 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %95 = load i64, i64* %94, align 16
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @GEN_INT(i32 %96)
  %98 = call i32 %91(i64 %93, i64 %95, i64 %97)
  %99 = call i32 @emit_insn(i32 %98)
  %100 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %101 = load i64, i64* %100, align 16
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ix86_expand_ashl_const(i64 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %86, %68
  br label %410

106:                                              ; preds = %3
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @DImode, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 (i64*, i32, i64*, i64*)* @split_di, i32 (i64*, i32, i64*, i64*)* @split_ti
  %112 = load i64*, i64** %4, align 8
  %113 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %114 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %115 = call i32 %111(i64* %112, i32 1, i64* %113, i64* %114)
  %116 = load i64*, i64** %4, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @const1_rtx, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %296

121:                                              ; preds = %106
  %122 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %123 = load i64, i64* %122, align 16
  %124 = call i64 @ANY_QI_REG_P(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %180

126:                                              ; preds = %121
  %127 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %128 = load i64, i64* %127, align 16
  %129 = call i64 @ANY_QI_REG_P(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %180

131:                                              ; preds = %126
  %132 = load i32, i32* @CCZmode, align 4
  %133 = load i32, i32* @FLAGS_REG, align 4
  %134 = call i64 @gen_rtx_REG(i32 %132, i32 %133)
  store i64 %134, i64* %13, align 8
  %135 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %136 = load i64, i64* %135, align 16
  %137 = call i32 @ix86_expand_clear(i64 %136)
  %138 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %139 = load i64, i64* %138, align 16
  %140 = call i32 @ix86_expand_clear(i64 %139)
  %141 = load i64*, i64** %4, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 2
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @GEN_INT(i32 %144)
  %146 = call i32 @gen_testqi_ccz_1(i64 %143, i64 %145)
  %147 = call i32 @emit_insn(i32 %146)
  %148 = load i32, i32* @QImode, align 4
  %149 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %150 = load i64, i64* %149, align 16
  %151 = call i64 @gen_lowpart(i32 %148, i64 %150)
  store i64 %151, i64* %12, align 8
  %152 = load i32, i32* @VOIDmode, align 4
  %153 = load i64, i64* %12, align 8
  %154 = call i64 @gen_rtx_STRICT_LOW_PART(i32 %152, i64 %153)
  store i64 %154, i64* %12, align 8
  %155 = load i32, i32* @QImode, align 4
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @const0_rtx, align 8
  %158 = call i64 @gen_rtx_EQ(i32 %155, i64 %156, i64 %157)
  store i64 %158, i64* %11, align 8
  %159 = load i32, i32* @VOIDmode, align 4
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %11, align 8
  %162 = call i32 @gen_rtx_SET(i32 %159, i64 %160, i64 %161)
  %163 = call i32 @emit_insn(i32 %162)
  %164 = load i32, i32* @QImode, align 4
  %165 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %166 = load i64, i64* %165, align 16
  %167 = call i64 @gen_lowpart(i32 %164, i64 %166)
  store i64 %167, i64* %12, align 8
  %168 = load i32, i32* @VOIDmode, align 4
  %169 = load i64, i64* %12, align 8
  %170 = call i64 @gen_rtx_STRICT_LOW_PART(i32 %168, i64 %169)
  store i64 %170, i64* %12, align 8
  %171 = load i32, i32* @QImode, align 4
  %172 = load i64, i64* %13, align 8
  %173 = load i64, i64* @const0_rtx, align 8
  %174 = call i64 @gen_rtx_NE(i32 %171, i64 %172, i64 %173)
  store i64 %174, i64* %11, align 8
  %175 = load i32, i32* @VOIDmode, align 4
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i32 @gen_rtx_SET(i32 %175, i64 %176, i64 %177)
  %179 = call i32 @emit_insn(i32 %178)
  br label %267

180:                                              ; preds = %126, %121
  %181 = load i64, i64* @TARGET_PARTIAL_REG_STALL, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %180
  %184 = load i64, i64* @optimize_size, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %200, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @DImode, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32, i32* @SImode, align 4
  br label %194

192:                                              ; preds = %186
  %193 = load i32, i32* @DImode, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = load i64*, i64** %4, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 2
  %198 = load i64, i64* %197, align 8
  %199 = call i64 @gen_rtx_ZERO_EXTEND(i32 %195, i64 %198)
  store i64 %199, i64* %14, align 8
  br label %214

200:                                              ; preds = %183, %180
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @DImode, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* @SImode, align 4
  br label %208

206:                                              ; preds = %200
  %207 = load i32, i32* @DImode, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load i64*, i64** %4, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 2
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @gen_lowpart(i32 %209, i64 %212)
  store i64 %213, i64* %14, align 8
  br label %214

214:                                              ; preds = %208, %194
  %215 = load i32, i32* @VOIDmode, align 4
  %216 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %217 = load i64, i64* %216, align 16
  %218 = load i64, i64* %14, align 8
  %219 = call i32 @gen_rtx_SET(i32 %215, i64 %217, i64 %218)
  %220 = call i32 @emit_insn(i32 %219)
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @DImode, align 4
  %223 = icmp eq i32 %221, %222
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 (i64, i64, i64)* @gen_lshrsi3, i32 (i64, i64, i64)* @gen_lshrdi3
  %226 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %227 = load i64, i64* %226, align 16
  %228 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %229 = load i64, i64* %228, align 16
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @DImode, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 5, i32 6
  %235 = call i64 @GEN_INT(i32 %234)
  %236 = call i32 %225(i64 %227, i64 %229, i64 %235)
  %237 = call i32 @emit_insn(i32 %236)
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* @DImode, align 4
  %240 = icmp eq i32 %238, %239
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 (i64, i64, i64)* @gen_andsi3, i32 (i64, i64, i64)* @gen_anddi3
  %243 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %244 = load i64, i64* %243, align 16
  %245 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %246 = load i64, i64* %245, align 16
  %247 = call i64 @GEN_INT(i32 1)
  %248 = call i32 %242(i64 %244, i64 %246, i64 %247)
  %249 = call i32 @emit_insn(i32 %248)
  %250 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %251 = load i64, i64* %250, align 16
  %252 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %253 = load i64, i64* %252, align 16
  %254 = call i32 @emit_move_insn(i64 %251, i64 %253)
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @DImode, align 4
  %257 = icmp eq i32 %255, %256
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 (i64, i64, i64)* @gen_xorsi3, i32 (i64, i64, i64)* @gen_xordi3
  %260 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %261 = load i64, i64* %260, align 16
  %262 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %263 = load i64, i64* %262, align 16
  %264 = call i64 @GEN_INT(i32 1)
  %265 = call i32 %259(i64 %261, i64 %263, i64 %264)
  %266 = call i32 @emit_insn(i32 %265)
  br label %267

267:                                              ; preds = %214, %131
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @DImode, align 4
  %270 = icmp eq i32 %268, %269
  %271 = zext i1 %270 to i64
  %272 = select i1 %270, i32 (i64, i64, i64)* @gen_ashlsi3, i32 (i64, i64, i64)* @gen_ashldi3
  %273 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %274 = load i64, i64* %273, align 16
  %275 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %276 = load i64, i64* %275, align 16
  %277 = load i64*, i64** %4, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 2
  %279 = load i64, i64* %278, align 8
  %280 = call i32 %272(i64 %274, i64 %276, i64 %279)
  %281 = call i32 @emit_insn(i32 %280)
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* @DImode, align 4
  %284 = icmp eq i32 %282, %283
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i32 (i64, i64, i64)* @gen_ashlsi3, i32 (i64, i64, i64)* @gen_ashldi3
  %287 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %288 = load i64, i64* %287, align 16
  %289 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %290 = load i64, i64* %289, align 16
  %291 = load i64*, i64** %4, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 2
  %293 = load i64, i64* %292, align 8
  %294 = call i32 %286(i64 %288, i64 %290, i64 %293)
  %295 = call i32 @emit_insn(i32 %294)
  br label %410

296:                                              ; preds = %106
  %297 = load i64*, i64** %4, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 1
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @constm1_rtx, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %321

302:                                              ; preds = %296
  %303 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %304 = load i64, i64* %303, align 16
  %305 = load i64, i64* @constm1_rtx, align 8
  %306 = call i32 @emit_move_insn(i64 %304, i64 %305)
  %307 = load i64, i64* @optimize_size, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %302
  %310 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %311 = load i64, i64* %310, align 16
  %312 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %313 = load i64, i64* %312, align 16
  %314 = call i32 @emit_move_insn(i64 %311, i64 %313)
  br label %320

315:                                              ; preds = %302
  %316 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %317 = load i64, i64* %316, align 16
  %318 = load i64, i64* @constm1_rtx, align 8
  %319 = call i32 @emit_move_insn(i64 %317, i64 %318)
  br label %320

320:                                              ; preds = %315, %309
  br label %362

321:                                              ; preds = %296
  %322 = load i64*, i64** %4, align 8
  %323 = getelementptr inbounds i64, i64* %322, i64 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64*, i64** %4, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 1
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @rtx_equal_p(i64 %324, i64 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %321
  %331 = load i64*, i64** %4, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64*, i64** %4, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 1
  %336 = load i64, i64* %335, align 8
  %337 = call i32 @emit_move_insn(i64 %333, i64 %336)
  br label %338

338:                                              ; preds = %330, %321
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* @DImode, align 4
  %341 = icmp eq i32 %339, %340
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i32 (i64*, i32, i64*, i64*)* @split_di, i32 (i64*, i32, i64*, i64*)* @split_ti
  %344 = load i64*, i64** %4, align 8
  %345 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %346 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %347 = call i32 %343(i64* %344, i32 1, i64* %345, i64* %346)
  %348 = load i32, i32* %6, align 4
  %349 = load i32, i32* @DImode, align 4
  %350 = icmp eq i32 %348, %349
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i32 (i64, i64, i64)* @gen_x86_shld_1, i32 (i64, i64, i64)* @gen_x86_64_shld
  %353 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %354 = load i64, i64* %353, align 16
  %355 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %356 = load i64, i64* %355, align 16
  %357 = load i64*, i64** %4, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 2
  %359 = load i64, i64* %358, align 8
  %360 = call i32 %352(i64 %354, i64 %356, i64 %359)
  %361 = call i32 @emit_insn(i32 %360)
  br label %362

362:                                              ; preds = %338, %320
  %363 = load i32, i32* %6, align 4
  %364 = load i32, i32* @DImode, align 4
  %365 = icmp eq i32 %363, %364
  %366 = zext i1 %365 to i64
  %367 = select i1 %365, i32 (i64, i64, i64)* @gen_ashlsi3, i32 (i64, i64, i64)* @gen_ashldi3
  %368 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %369 = load i64, i64* %368, align 16
  %370 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %371 = load i64, i64* %370, align 16
  %372 = load i64*, i64** %4, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 2
  %374 = load i64, i64* %373, align 8
  %375 = call i32 %367(i64 %369, i64 %371, i64 %374)
  %376 = call i32 @emit_insn(i32 %375)
  %377 = load i64, i64* @TARGET_CMOVE, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %400

379:                                              ; preds = %362
  %380 = load i64, i64* %5, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %400

382:                                              ; preds = %379
  %383 = load i64, i64* %5, align 8
  %384 = call i32 @ix86_expand_clear(i64 %383)
  %385 = load i32, i32* %6, align 4
  %386 = load i32, i32* @DImode, align 4
  %387 = icmp eq i32 %385, %386
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i32 (i64, i64, i64, i64)* @gen_x86_shift_adj_1, i32 (i64, i64, i64, i64)* @gen_x86_64_shift_adj
  %390 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %391 = load i64, i64* %390, align 16
  %392 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %393 = load i64, i64* %392, align 16
  %394 = load i64*, i64** %4, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 2
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* %5, align 8
  %398 = call i32 %389(i64 %391, i64 %393, i64 %396, i64 %397)
  %399 = call i32 @emit_insn(i32 %398)
  br label %410

400:                                              ; preds = %379, %362
  %401 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %402 = load i64, i64* %401, align 16
  %403 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %404 = load i64, i64* %403, align 16
  %405 = load i64*, i64** %4, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 2
  %407 = load i64, i64* %406, align 8
  %408 = call i32 @gen_x86_shift_adj_2(i64 %402, i64 %404, i64 %407)
  %409 = call i32 @emit_insn(i32 %408)
  br label %410

410:                                              ; preds = %105, %267, %400, %382
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @split_di(i64*, i32, i64*, i64*) #1

declare dso_local i32 @split_ti(i64*, i32, i64*, i64*) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @ix86_expand_ashl_const(i64, i32, i32) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_x86_shld_1(i64, i64, i64) #1

declare dso_local i32 @gen_x86_64_shld(i64, i64, i64) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @ANY_QI_REG_P(i64) #1

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @ix86_expand_clear(i64) #1

declare dso_local i32 @gen_testqi_ccz_1(i64, i64) #1

declare dso_local i64 @gen_lowpart(i32, i64) #1

declare dso_local i64 @gen_rtx_STRICT_LOW_PART(i32, i64) #1

declare dso_local i64 @gen_rtx_EQ(i32, i64, i64) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_NE(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_ZERO_EXTEND(i32, i64) #1

declare dso_local i32 @gen_lshrsi3(i64, i64, i64) #1

declare dso_local i32 @gen_lshrdi3(i64, i64, i64) #1

declare dso_local i32 @gen_andsi3(i64, i64, i64) #1

declare dso_local i32 @gen_anddi3(i64, i64, i64) #1

declare dso_local i32 @gen_xorsi3(i64, i64, i64) #1

declare dso_local i32 @gen_xordi3(i64, i64, i64) #1

declare dso_local i32 @gen_ashlsi3(i64, i64, i64) #1

declare dso_local i32 @gen_ashldi3(i64, i64, i64) #1

declare dso_local i32 @gen_x86_shift_adj_1(i64, i64, i64, i64) #1

declare dso_local i32 @gen_x86_64_shift_adj(i64, i64, i64, i64) #1

declare dso_local i32 @gen_x86_shift_adj_2(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
