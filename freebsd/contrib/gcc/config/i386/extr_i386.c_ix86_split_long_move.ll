; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_long_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_long_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i64 0, align 8
@DImode = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@TARGET_128BIT_LONG_DOUBLE = common dso_local global i64 0, align 8
@XFmode = common dso_local global i32 0, align 4
@SImode = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_split_long_move(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [2 x [3 x i32]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @GET_MODE(i32 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @GET_MODE(i32 %17)
  %19 = call i32 @GET_MODE_SIZE(i64 %18)
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %95

21:                                               ; preds = %1
  %22 = load i64, i64* @TARGET_64BIT, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %95

24:                                               ; preds = %21
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GET_CODE(i32 %27)
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @XEXP(i32 %33, i32 0)
  %35 = call i32 @GET_CODE(i32 %34)
  %36 = load i32, i32* @SYMBOL_REF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @XEXP(i32 %41, i32 0)
  %43 = call i64 @CONSTANT_POOL_ADDRESS_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @XEXP(i32 %48, i32 0)
  %50 = call i32 @get_pool_constant(i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %38, %30, %24
  %54 = load i32*, i32** %2, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @VOIDmode, align 4
  %58 = call i64 @push_operand(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @copy_rtx(i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* @Pmode, align 8
  %71 = call i32 @PUT_MODE(i32 %69, i64 %70)
  br label %80

72:                                               ; preds = %53
  %73 = load i64, i64* @DImode, align 8
  %74 = load i32*, i32** %2, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gen_lowpart(i64 %73, i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %60
  %81 = load i64, i64* @DImode, align 8
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gen_lowpart(i64 %81, i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @emit_move_insn(i32 %90, i32 %93)
  br label %735

95:                                               ; preds = %21, %1
  %96 = load i32*, i32** %2, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @VOIDmode, align 4
  %100 = call i64 @push_operand(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 1, i32* %5, align 4
  br label %119

103:                                              ; preds = %95
  %104 = load i32*, i32** %2, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @GET_CODE(i32 %106)
  %108 = icmp ne i32 %107, 129
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load i32*, i32** %2, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @offsettable_memref_p(i32 %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %109, %103
  %116 = phi i1 [ true, %103 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @gcc_assert(i32 %117)
  br label %119

119:                                              ; preds = %115, %102
  %120 = load i32*, i32** %2, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %123, i64 0, i64 0
  %125 = load i32*, i32** %2, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @GET_MODE(i32 %127)
  %129 = call i32 @ix86_split_to_parts(i32 %122, i32* %124, i64 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32*, i32** %2, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %133, i64 0, i64 0
  %135 = load i32*, i32** %2, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @GET_MODE(i32 %137)
  %139 = call i32 @ix86_split_to_parts(i32 %132, i32* %134, i64 %138)
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %188

142:                                              ; preds = %119
  %143 = load i32*, i32** %2, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @GET_CODE(i32 %145)
  %147 = icmp eq i32 %146, 129
  br i1 %147, label %148, label %188

148:                                              ; preds = %142
  %149 = load i32, i32* @stack_pointer_rtx, align 4
  %150 = load i32*, i32** %2, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @reg_overlap_mentioned_p(i32 %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %188

155:                                              ; preds = %148
  %156 = load i32, i32* %4, align 4
  %157 = icmp eq i32 %156, 3
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %159, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %162, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @GET_MODE(i32 %164)
  %166 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %166, i64 0, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @XEXP(i32 %168, i32 0)
  %170 = call i32 @change_address(i32 %161, i64 %165, i32 %169)
  %171 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %171, i64 0, i64 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %158, %155
  %174 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %174, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %177, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @GET_MODE(i32 %179)
  %181 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %181, i64 0, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @XEXP(i32 %183, i32 0)
  %185 = call i32 @change_address(i32 %176, i64 %180, i32 %184)
  %186 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %186, i64 0, i64 0
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %173, %148, %142, %119
  %189 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %189, i64 0, i64 0
  %191 = load i32, i32* %190, align 16
  %192 = call i64 @REG_P(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %339

194:                                              ; preds = %188
  %195 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %196 = getelementptr inbounds [3 x i32], [3 x i32]* %195, i64 0, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @GET_CODE(i32 %197)
  %199 = icmp eq i32 %198, 129
  br i1 %199, label %200, label %339

200:                                              ; preds = %194
  %201 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %201, i64 0, i64 0
  %203 = load i32, i32* %202, align 16
  %204 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %205 = getelementptr inbounds [3 x i32], [3 x i32]* %204, i64 0, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @XEXP(i32 %206, i32 0)
  %208 = call i64 @reg_overlap_mentioned_p(i32 %203, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %200
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %210, %200
  %214 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %215 = getelementptr inbounds [3 x i32], [3 x i32]* %214, i64 0, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %218 = getelementptr inbounds [3 x i32], [3 x i32]* %217, i64 0, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @XEXP(i32 %219, i32 0)
  %221 = call i64 @reg_overlap_mentioned_p(i32 %216, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %213
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %223, %213
  %227 = load i32, i32* %4, align 4
  %228 = icmp eq i32 %227, 3
  br i1 %228, label %229, label %242

229:                                              ; preds = %226
  %230 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %231 = getelementptr inbounds [3 x i32], [3 x i32]* %230, i64 0, i64 2
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %233, i64 0, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @XEXP(i32 %235, i32 0)
  %237 = call i64 @reg_overlap_mentioned_p(i32 %232, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %239, %229, %226
  %243 = load i32, i32* %6, align 4
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %281

245:                                              ; preds = %242
  %246 = load i32, i32* %4, align 4
  %247 = icmp eq i32 %246, 3
  br i1 %247, label %248, label %281

248:                                              ; preds = %245
  %249 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %250 = getelementptr inbounds [3 x i32], [3 x i32]* %249, i64 0, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %253 = getelementptr inbounds [3 x i32], [3 x i32]* %252, i64 0, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @XEXP(i32 %254, i32 0)
  %256 = call i64 @reg_overlap_mentioned_p(i32 %251, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %281

258:                                              ; preds = %248
  %259 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %259, i64 0, i64 1
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %8, align 4
  %262 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %262, i64 0, i64 2
  %264 = load i32, i32* %263, align 8
  %265 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %266 = getelementptr inbounds [3 x i32], [3 x i32]* %265, i64 0, i64 1
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* %8, align 4
  %268 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %268, i64 0, i64 2
  store i32 %267, i32* %269, align 8
  %270 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %271 = getelementptr inbounds [3 x i32], [3 x i32]* %270, i64 0, i64 1
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %8, align 4
  %273 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %274 = getelementptr inbounds [3 x i32], [3 x i32]* %273, i64 0, i64 2
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %277 = getelementptr inbounds [3 x i32], [3 x i32]* %276, i64 0, i64 1
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* %8, align 4
  %279 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %280 = getelementptr inbounds [3 x i32], [3 x i32]* %279, i64 0, i64 2
  store i32 %278, i32* %280, align 4
  br label %338

281:                                              ; preds = %248, %245, %242
  %282 = load i32, i32* %6, align 4
  %283 = icmp sgt i32 %282, 1
  br i1 %283, label %284, label %337

284:                                              ; preds = %281
  store i32 1, i32* %6, align 4
  %285 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %286 = load i32, i32* %4, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [3 x i32], [3 x i32]* %285, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %9, align 4
  %291 = load i32, i32* %9, align 4
  %292 = call i64 @GET_MODE(i32 %291)
  %293 = load i64, i64* @Pmode, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %284
  %296 = load i64, i64* @Pmode, align 8
  %297 = load i32, i32* %9, align 4
  %298 = call i64 @REGNO(i32 %297)
  %299 = call i32 @gen_rtx_REG(i64 %296, i64 %298)
  store i32 %299, i32* %9, align 4
  br label %300

300:                                              ; preds = %295, %284
  %301 = load i32, i32* @VOIDmode, align 4
  %302 = load i32, i32* %9, align 4
  %303 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %304 = getelementptr inbounds [3 x i32], [3 x i32]* %303, i64 0, i64 0
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @XEXP(i32 %305, i32 0)
  %307 = call i32 @gen_rtx_SET(i32 %301, i32 %302, i32 %306)
  %308 = call i32 @emit_insn(i32 %307)
  %309 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %310 = getelementptr inbounds [3 x i32], [3 x i32]* %309, i64 0, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %9, align 4
  %313 = call i32 @replace_equiv_address(i32 %311, i32 %312)
  %314 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %315 = getelementptr inbounds [3 x i32], [3 x i32]* %314, i64 0, i64 0
  store i32 %313, i32* %315, align 4
  %316 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %317 = getelementptr inbounds [3 x i32], [3 x i32]* %316, i64 0, i64 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %9, align 4
  %320 = load i32, i32* @UNITS_PER_WORD, align 4
  %321 = call i32 @plus_constant(i32 %319, i32 %320)
  %322 = call i32 @replace_equiv_address(i32 %318, i32 %321)
  %323 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %324 = getelementptr inbounds [3 x i32], [3 x i32]* %323, i64 0, i64 1
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* %4, align 4
  %326 = icmp eq i32 %325, 3
  br i1 %326, label %327, label %336

327:                                              ; preds = %300
  %328 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %329 = getelementptr inbounds [3 x i32], [3 x i32]* %328, i64 0, i64 2
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %9, align 4
  %332 = call i32 @plus_constant(i32 %331, i32 8)
  %333 = call i32 @replace_equiv_address(i32 %330, i32 %332)
  %334 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %335 = getelementptr inbounds [3 x i32], [3 x i32]* %334, i64 0, i64 2
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %327, %300
  br label %337

337:                                              ; preds = %336, %281
  br label %338

338:                                              ; preds = %337, %258
  br label %339

339:                                              ; preds = %338, %194, %188
  %340 = load i32, i32* %5, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %431

342:                                              ; preds = %339
  %343 = load i64, i64* @TARGET_64BIT, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %370, label %345

345:                                              ; preds = %342
  %346 = load i32, i32* %4, align 4
  %347 = icmp eq i32 %346, 3
  br i1 %347, label %348, label %369

348:                                              ; preds = %345
  %349 = load i64, i64* @TARGET_128BIT_LONG_DOUBLE, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = load i32, i32* %7, align 4
  %353 = load i32, i32* @XFmode, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %361

355:                                              ; preds = %351
  %356 = load i32, i32* @stack_pointer_rtx, align 4
  %357 = load i32, i32* @stack_pointer_rtx, align 4
  %358 = call i32 @GEN_INT(i32 -4)
  %359 = call i32 @gen_addsi3(i32 %356, i32 %357, i32 %358)
  %360 = call i32 @emit_insn(i32 %359)
  br label %361

361:                                              ; preds = %355, %351, %348
  %362 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %363 = getelementptr inbounds [3 x i32], [3 x i32]* %362, i64 0, i64 2
  %364 = load i32, i32* %363, align 8
  %365 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %366 = getelementptr inbounds [3 x i32], [3 x i32]* %365, i64 0, i64 2
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @emit_move_insn(i32 %364, i32 %367)
  br label %369

369:                                              ; preds = %361, %345
  br label %416

370:                                              ; preds = %342
  %371 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %372 = getelementptr inbounds [3 x i32], [3 x i32]* %371, i64 0, i64 1
  %373 = load i32, i32* %372, align 4
  %374 = call i64 @GET_MODE(i32 %373)
  %375 = load i64, i64* @SImode, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %415

377:                                              ; preds = %370
  %378 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %379 = getelementptr inbounds [3 x i32], [3 x i32]* %378, i64 0, i64 1
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @GET_CODE(i32 %380)
  switch i32 %381, label %399 [
    i32 129, label %382
    i32 128, label %390
  ]

382:                                              ; preds = %377
  %383 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %384 = getelementptr inbounds [3 x i32], [3 x i32]* %383, i64 0, i64 1
  %385 = load i32, i32* %384, align 4
  %386 = load i64, i64* @DImode, align 8
  %387 = call i32 @adjust_address(i32 %385, i64 %386, i32 0)
  %388 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %389 = getelementptr inbounds [3 x i32], [3 x i32]* %388, i64 0, i64 1
  store i32 %387, i32* %389, align 4
  br label %401

390:                                              ; preds = %377
  %391 = load i64, i64* @DImode, align 8
  %392 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %393 = getelementptr inbounds [3 x i32], [3 x i32]* %392, i64 0, i64 1
  %394 = load i32, i32* %393, align 4
  %395 = call i64 @REGNO(i32 %394)
  %396 = call i32 @gen_rtx_REG(i64 %391, i64 %395)
  %397 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %398 = getelementptr inbounds [3 x i32], [3 x i32]* %397, i64 0, i64 1
  store i32 %396, i32* %398, align 4
  br label %401

399:                                              ; preds = %377
  %400 = call i32 (...) @gcc_unreachable()
  br label %401

401:                                              ; preds = %399, %390, %382
  %402 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %403 = getelementptr inbounds [3 x i32], [3 x i32]* %402, i64 0, i64 0
  %404 = load i32, i32* %403, align 4
  %405 = call i64 @GET_MODE(i32 %404)
  %406 = load i64, i64* @SImode, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %414

408:                                              ; preds = %401
  %409 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %410 = getelementptr inbounds [3 x i32], [3 x i32]* %409, i64 0, i64 1
  %411 = load i32, i32* %410, align 4
  %412 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %413 = getelementptr inbounds [3 x i32], [3 x i32]* %412, i64 0, i64 0
  store i32 %411, i32* %413, align 4
  br label %414

414:                                              ; preds = %408, %401
  br label %415

415:                                              ; preds = %414, %370
  br label %416

416:                                              ; preds = %415, %369
  %417 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %418 = getelementptr inbounds [3 x i32], [3 x i32]* %417, i64 0, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %421 = getelementptr inbounds [3 x i32], [3 x i32]* %420, i64 0, i64 1
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @emit_move_insn(i32 %419, i32 %422)
  %424 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %425 = getelementptr inbounds [3 x i32], [3 x i32]* %424, i64 0, i64 0
  %426 = load i32, i32* %425, align 16
  %427 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %428 = getelementptr inbounds [3 x i32], [3 x i32]* %427, i64 0, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @emit_move_insn(i32 %426, i32 %429)
  br label %735

431:                                              ; preds = %339
  %432 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %433 = getelementptr inbounds [3 x i32], [3 x i32]* %432, i64 0, i64 0
  %434 = load i32, i32* %433, align 16
  %435 = call i64 @REG_P(i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %466

437:                                              ; preds = %431
  %438 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %439 = getelementptr inbounds [3 x i32], [3 x i32]* %438, i64 0, i64 1
  %440 = load i32, i32* %439, align 4
  %441 = call i64 @REG_P(i32 %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %466

443:                                              ; preds = %437
  %444 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %445 = getelementptr inbounds [3 x i32], [3 x i32]* %444, i64 0, i64 0
  %446 = load i32, i32* %445, align 16
  %447 = call i64 @REGNO(i32 %446)
  %448 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %449 = getelementptr inbounds [3 x i32], [3 x i32]* %448, i64 0, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = call i64 @REGNO(i32 %450)
  %452 = icmp eq i64 %447, %451
  br i1 %452, label %479, label %453

453:                                              ; preds = %443
  %454 = load i32, i32* %4, align 4
  %455 = icmp eq i32 %454, 3
  br i1 %455, label %456, label %466

456:                                              ; preds = %453
  %457 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %458 = getelementptr inbounds [3 x i32], [3 x i32]* %457, i64 0, i64 0
  %459 = load i32, i32* %458, align 16
  %460 = call i64 @REGNO(i32 %459)
  %461 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %462 = getelementptr inbounds [3 x i32], [3 x i32]* %461, i64 0, i64 2
  %463 = load i32, i32* %462, align 4
  %464 = call i64 @REGNO(i32 %463)
  %465 = icmp eq i64 %460, %464
  br i1 %465, label %479, label %466

466:                                              ; preds = %456, %453, %437, %431
  %467 = load i32, i32* %6, align 4
  %468 = icmp sgt i32 %467, 0
  br i1 %468, label %469, label %535

469:                                              ; preds = %466
  %470 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %471 = getelementptr inbounds [3 x i32], [3 x i32]* %470, i64 0, i64 0
  %472 = load i32, i32* %471, align 16
  %473 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %474 = getelementptr inbounds [3 x i32], [3 x i32]* %473, i64 0, i64 0
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @XEXP(i32 %475, i32 0)
  %477 = call i64 @reg_overlap_mentioned_p(i32 %472, i32 %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %535

479:                                              ; preds = %469, %456, %443
  %480 = load i32, i32* %4, align 4
  %481 = icmp eq i32 %480, 3
  br i1 %481, label %482, label %513

482:                                              ; preds = %479
  %483 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %484 = getelementptr inbounds [3 x i32], [3 x i32]* %483, i64 0, i64 2
  %485 = load i32, i32* %484, align 8
  %486 = load i32*, i32** %2, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 2
  store i32 %485, i32* %487, align 4
  %488 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %489 = getelementptr inbounds [3 x i32], [3 x i32]* %488, i64 0, i64 1
  %490 = load i32, i32* %489, align 4
  %491 = load i32*, i32** %2, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 3
  store i32 %490, i32* %492, align 4
  %493 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %494 = getelementptr inbounds [3 x i32], [3 x i32]* %493, i64 0, i64 0
  %495 = load i32, i32* %494, align 16
  %496 = load i32*, i32** %2, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 4
  store i32 %495, i32* %497, align 4
  %498 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %499 = getelementptr inbounds [3 x i32], [3 x i32]* %498, i64 0, i64 2
  %500 = load i32, i32* %499, align 4
  %501 = load i32*, i32** %2, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 5
  store i32 %500, i32* %502, align 4
  %503 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %504 = getelementptr inbounds [3 x i32], [3 x i32]* %503, i64 0, i64 1
  %505 = load i32, i32* %504, align 4
  %506 = load i32*, i32** %2, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 6
  store i32 %505, i32* %507, align 4
  %508 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %509 = getelementptr inbounds [3 x i32], [3 x i32]* %508, i64 0, i64 0
  %510 = load i32, i32* %509, align 4
  %511 = load i32*, i32** %2, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 7
  store i32 %510, i32* %512, align 4
  br label %534

513:                                              ; preds = %479
  %514 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %515 = getelementptr inbounds [3 x i32], [3 x i32]* %514, i64 0, i64 1
  %516 = load i32, i32* %515, align 4
  %517 = load i32*, i32** %2, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 2
  store i32 %516, i32* %518, align 4
  %519 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %520 = getelementptr inbounds [3 x i32], [3 x i32]* %519, i64 0, i64 0
  %521 = load i32, i32* %520, align 16
  %522 = load i32*, i32** %2, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 3
  store i32 %521, i32* %523, align 4
  %524 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %525 = getelementptr inbounds [3 x i32], [3 x i32]* %524, i64 0, i64 1
  %526 = load i32, i32* %525, align 4
  %527 = load i32*, i32** %2, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 5
  store i32 %526, i32* %528, align 4
  %529 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %530 = getelementptr inbounds [3 x i32], [3 x i32]* %529, i64 0, i64 0
  %531 = load i32, i32* %530, align 4
  %532 = load i32*, i32** %2, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 6
  store i32 %531, i32* %533, align 4
  br label %534

534:                                              ; preds = %513, %482
  br label %591

535:                                              ; preds = %469, %466
  %536 = load i32, i32* %4, align 4
  %537 = icmp eq i32 %536, 3
  br i1 %537, label %538, label %569

538:                                              ; preds = %535
  %539 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %540 = getelementptr inbounds [3 x i32], [3 x i32]* %539, i64 0, i64 0
  %541 = load i32, i32* %540, align 16
  %542 = load i32*, i32** %2, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 2
  store i32 %541, i32* %543, align 4
  %544 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %545 = getelementptr inbounds [3 x i32], [3 x i32]* %544, i64 0, i64 1
  %546 = load i32, i32* %545, align 4
  %547 = load i32*, i32** %2, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 3
  store i32 %546, i32* %548, align 4
  %549 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %550 = getelementptr inbounds [3 x i32], [3 x i32]* %549, i64 0, i64 2
  %551 = load i32, i32* %550, align 8
  %552 = load i32*, i32** %2, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 4
  store i32 %551, i32* %553, align 4
  %554 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %555 = getelementptr inbounds [3 x i32], [3 x i32]* %554, i64 0, i64 0
  %556 = load i32, i32* %555, align 4
  %557 = load i32*, i32** %2, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 5
  store i32 %556, i32* %558, align 4
  %559 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %560 = getelementptr inbounds [3 x i32], [3 x i32]* %559, i64 0, i64 1
  %561 = load i32, i32* %560, align 4
  %562 = load i32*, i32** %2, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 6
  store i32 %561, i32* %563, align 4
  %564 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %565 = getelementptr inbounds [3 x i32], [3 x i32]* %564, i64 0, i64 2
  %566 = load i32, i32* %565, align 4
  %567 = load i32*, i32** %2, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 7
  store i32 %566, i32* %568, align 4
  br label %590

569:                                              ; preds = %535
  %570 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %571 = getelementptr inbounds [3 x i32], [3 x i32]* %570, i64 0, i64 0
  %572 = load i32, i32* %571, align 16
  %573 = load i32*, i32** %2, align 8
  %574 = getelementptr inbounds i32, i32* %573, i64 2
  store i32 %572, i32* %574, align 4
  %575 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 0
  %576 = getelementptr inbounds [3 x i32], [3 x i32]* %575, i64 0, i64 1
  %577 = load i32, i32* %576, align 4
  %578 = load i32*, i32** %2, align 8
  %579 = getelementptr inbounds i32, i32* %578, i64 3
  store i32 %577, i32* %579, align 4
  %580 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %581 = getelementptr inbounds [3 x i32], [3 x i32]* %580, i64 0, i64 0
  %582 = load i32, i32* %581, align 4
  %583 = load i32*, i32** %2, align 8
  %584 = getelementptr inbounds i32, i32* %583, i64 5
  store i32 %582, i32* %584, align 4
  %585 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %3, i64 0, i64 1
  %586 = getelementptr inbounds [3 x i32], [3 x i32]* %585, i64 0, i64 1
  %587 = load i32, i32* %586, align 4
  %588 = load i32*, i32** %2, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 6
  store i32 %587, i32* %589, align 4
  br label %590

590:                                              ; preds = %569, %538
  br label %591

591:                                              ; preds = %590, %534
  %592 = load i64, i64* @optimize_size, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %709

594:                                              ; preds = %591
  %595 = load i32*, i32** %2, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 5
  %597 = load i32, i32* %596, align 4
  %598 = call i32 @GET_CODE(i32 %597)
  %599 = load i32, i32* @CONST_INT, align 4
  %600 = icmp eq i32 %598, %599
  br i1 %600, label %601, label %663

601:                                              ; preds = %594
  %602 = load i32*, i32** %2, align 8
  %603 = getelementptr inbounds i32, i32* %602, i64 5
  %604 = load i32, i32* %603, align 4
  %605 = load i32, i32* @const0_rtx, align 4
  %606 = icmp ne i32 %604, %605
  br i1 %606, label %607, label %663

607:                                              ; preds = %601
  %608 = load i32*, i32** %2, align 8
  %609 = getelementptr inbounds i32, i32* %608, i64 2
  %610 = load i32, i32* %609, align 4
  %611 = call i64 @REG_P(i32 %610)
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %663

613:                                              ; preds = %607
  %614 = load i32*, i32** %2, align 8
  %615 = getelementptr inbounds i32, i32* %614, i64 6
  %616 = load i32, i32* %615, align 4
  %617 = call i32 @GET_CODE(i32 %616)
  %618 = load i32, i32* @CONST_INT, align 4
  %619 = icmp eq i32 %617, %618
  br i1 %619, label %620, label %636

620:                                              ; preds = %613
  %621 = load i32*, i32** %2, align 8
  %622 = getelementptr inbounds i32, i32* %621, i64 6
  %623 = load i32, i32* %622, align 4
  %624 = call i64 @INTVAL(i32 %623)
  %625 = load i32*, i32** %2, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 5
  %627 = load i32, i32* %626, align 4
  %628 = call i64 @INTVAL(i32 %627)
  %629 = icmp eq i64 %624, %628
  br i1 %629, label %630, label %636

630:                                              ; preds = %620
  %631 = load i32*, i32** %2, align 8
  %632 = getelementptr inbounds i32, i32* %631, i64 2
  %633 = load i32, i32* %632, align 4
  %634 = load i32*, i32** %2, align 8
  %635 = getelementptr inbounds i32, i32* %634, i64 6
  store i32 %633, i32* %635, align 4
  br label %636

636:                                              ; preds = %630, %620, %613
  %637 = load i32, i32* %4, align 4
  %638 = icmp eq i32 %637, 3
  br i1 %638, label %639, label %662

639:                                              ; preds = %636
  %640 = load i32*, i32** %2, align 8
  %641 = getelementptr inbounds i32, i32* %640, i64 7
  %642 = load i32, i32* %641, align 4
  %643 = call i32 @GET_CODE(i32 %642)
  %644 = load i32, i32* @CONST_INT, align 4
  %645 = icmp eq i32 %643, %644
  br i1 %645, label %646, label %662

646:                                              ; preds = %639
  %647 = load i32*, i32** %2, align 8
  %648 = getelementptr inbounds i32, i32* %647, i64 7
  %649 = load i32, i32* %648, align 4
  %650 = call i64 @INTVAL(i32 %649)
  %651 = load i32*, i32** %2, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 5
  %653 = load i32, i32* %652, align 4
  %654 = call i64 @INTVAL(i32 %653)
  %655 = icmp eq i64 %650, %654
  br i1 %655, label %656, label %662

656:                                              ; preds = %646
  %657 = load i32*, i32** %2, align 8
  %658 = getelementptr inbounds i32, i32* %657, i64 2
  %659 = load i32, i32* %658, align 4
  %660 = load i32*, i32** %2, align 8
  %661 = getelementptr inbounds i32, i32* %660, i64 7
  store i32 %659, i32* %661, align 4
  br label %662

662:                                              ; preds = %656, %646, %639, %636
  br label %663

663:                                              ; preds = %662, %607, %601, %594
  %664 = load i32, i32* %4, align 4
  %665 = icmp eq i32 %664, 3
  br i1 %665, label %666, label %708

666:                                              ; preds = %663
  %667 = load i32*, i32** %2, align 8
  %668 = getelementptr inbounds i32, i32* %667, i64 6
  %669 = load i32, i32* %668, align 4
  %670 = call i32 @GET_CODE(i32 %669)
  %671 = load i32, i32* @CONST_INT, align 4
  %672 = icmp eq i32 %670, %671
  br i1 %672, label %673, label %708

673:                                              ; preds = %666
  %674 = load i32*, i32** %2, align 8
  %675 = getelementptr inbounds i32, i32* %674, i64 6
  %676 = load i32, i32* %675, align 4
  %677 = load i32, i32* @const0_rtx, align 4
  %678 = icmp ne i32 %676, %677
  br i1 %678, label %679, label %708

679:                                              ; preds = %673
  %680 = load i32*, i32** %2, align 8
  %681 = getelementptr inbounds i32, i32* %680, i64 3
  %682 = load i32, i32* %681, align 4
  %683 = call i64 @REG_P(i32 %682)
  %684 = icmp ne i64 %683, 0
  br i1 %684, label %685, label %708

685:                                              ; preds = %679
  %686 = load i32*, i32** %2, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 7
  %688 = load i32, i32* %687, align 4
  %689 = call i32 @GET_CODE(i32 %688)
  %690 = load i32, i32* @CONST_INT, align 4
  %691 = icmp eq i32 %689, %690
  br i1 %691, label %692, label %708

692:                                              ; preds = %685
  %693 = load i32*, i32** %2, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 7
  %695 = load i32, i32* %694, align 4
  %696 = call i64 @INTVAL(i32 %695)
  %697 = load i32*, i32** %2, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 6
  %699 = load i32, i32* %698, align 4
  %700 = call i64 @INTVAL(i32 %699)
  %701 = icmp eq i64 %696, %700
  br i1 %701, label %702, label %708

702:                                              ; preds = %692
  %703 = load i32*, i32** %2, align 8
  %704 = getelementptr inbounds i32, i32* %703, i64 3
  %705 = load i32, i32* %704, align 4
  %706 = load i32*, i32** %2, align 8
  %707 = getelementptr inbounds i32, i32* %706, i64 7
  store i32 %705, i32* %707, align 4
  br label %708

708:                                              ; preds = %702, %692, %685, %679, %673, %666, %663
  br label %709

709:                                              ; preds = %708, %591
  %710 = load i32*, i32** %2, align 8
  %711 = getelementptr inbounds i32, i32* %710, i64 2
  %712 = load i32, i32* %711, align 4
  %713 = load i32*, i32** %2, align 8
  %714 = getelementptr inbounds i32, i32* %713, i64 5
  %715 = load i32, i32* %714, align 4
  %716 = call i32 @emit_move_insn(i32 %712, i32 %715)
  %717 = load i32*, i32** %2, align 8
  %718 = getelementptr inbounds i32, i32* %717, i64 3
  %719 = load i32, i32* %718, align 4
  %720 = load i32*, i32** %2, align 8
  %721 = getelementptr inbounds i32, i32* %720, i64 6
  %722 = load i32, i32* %721, align 4
  %723 = call i32 @emit_move_insn(i32 %719, i32 %722)
  %724 = load i32, i32* %4, align 4
  %725 = icmp eq i32 %724, 3
  br i1 %725, label %726, label %734

726:                                              ; preds = %709
  %727 = load i32*, i32** %2, align 8
  %728 = getelementptr inbounds i32, i32* %727, i64 4
  %729 = load i32, i32* %728, align 4
  %730 = load i32*, i32** %2, align 8
  %731 = getelementptr inbounds i32, i32* %730, i64 7
  %732 = load i32, i32* %731, align 4
  %733 = call i32 @emit_move_insn(i32 %729, i32 %732)
  br label %734

734:                                              ; preds = %726, %709
  br label %735

735:                                              ; preds = %734, %416, %80
  ret void
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i64) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i32) #1

declare dso_local i32 @get_pool_constant(i32) #1

declare dso_local i64 @push_operand(i32, i32) #1

declare dso_local i32 @copy_rtx(i32) #1

declare dso_local i32 @PUT_MODE(i32, i64) #1

declare dso_local i32 @gen_lowpart(i64, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @offsettable_memref_p(i32) #1

declare dso_local i32 @ix86_split_to_parts(i32, i32*, i64) #1

declare dso_local i64 @reg_overlap_mentioned_p(i32, i32) #1

declare dso_local i32 @change_address(i32, i64, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @gen_rtx_REG(i64, i64) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @replace_equiv_address(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @adjust_address(i32, i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
