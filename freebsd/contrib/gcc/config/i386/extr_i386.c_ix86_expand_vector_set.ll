; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@TARGET_SSE2 = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@const2_rtx = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@TARGET_SSE = common dso_local global i32 0, align 4
@TARGET_3DNOW_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_vector_set(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @GET_MODE(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @GET_MODE_INNER(i32 %19)
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %207 [
    i32 134, label %22
    i32 133, label %22
    i32 136, label %53
    i32 135, label %53
    i32 131, label %82
    i32 130, label %135
    i32 129, label %190
    i32 132, label %192
    i32 137, label %206
    i32 128, label %206
  ]

22:                                               ; preds = %4, %4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @GET_MODE_INNER(i32 %26)
  %28 = call i32 @gen_reg_rtx(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 1, %31
  %33 = call i32 @ix86_expand_vector_extract(i32 1, i32 %29, i32 %30, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @gen_rtx_VEC_CONCAT(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  br label %46

41:                                               ; preds = %25
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @gen_rtx_VEC_CONCAT(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @VOIDmode, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @gen_rtx_SET(i32 %47, i32 %48, i32 %49)
  %51 = call i32 @emit_insn(i32 %50)
  br label %248

52:                                               ; preds = %22
  br label %208

53:                                               ; preds = %4, %4
  %54 = load i32, i32* @VOIDmode, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 1, %55
  %57 = call i32 @GEN_INT(i32 %56)
  %58 = call i32 @gen_rtvec(i32 1, i32 %57)
  %59 = call i32 @gen_rtx_PARALLEL(i32 %54, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @gen_rtx_VEC_SELECT(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %14, align 4
  br label %72

69:                                               ; preds = %53
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @gen_rtx_VEC_CONCAT(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* @VOIDmode, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @gen_rtx_SET(i32 %77, i32 %78, i32 %79)
  %81 = call i32 @emit_insn(i32 %80)
  br label %248

82:                                               ; preds = %4
  %83 = load i32, i32* %8, align 4
  switch i32 %83, label %132 [
    i32 0, label %84
    i32 1, label %85
    i32 2, label %104
    i32 3, label %118
  ]

84:                                               ; preds = %82
  store i32 1, i32* %11, align 4
  br label %134

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @copy_to_reg(i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @gen_sse_unpcklps(i32 %88, i32 %89, i32 %90)
  %92 = call i32 @emit_insn(i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  call void @ix86_expand_vector_set(i32 0, i32 %93, i32 %94, i32 0)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @GEN_INT(i32 1)
  %99 = call i32 @GEN_INT(i32 0)
  %100 = call i32 @GEN_INT(i32 6)
  %101 = call i32 @GEN_INT(i32 7)
  %102 = call i32 @gen_sse_shufps_1(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = call i32 @emit_insn(i32 %102)
  br label %248

104:                                              ; preds = %82
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @copy_to_reg(i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %7, align 4
  call void @ix86_expand_vector_set(i32 0, i32 %107, i32 %108, i32 0)
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @GEN_INT(i32 0)
  %113 = call i32 @GEN_INT(i32 1)
  %114 = call i32 @GEN_INT(i32 4)
  %115 = call i32 @GEN_INT(i32 7)
  %116 = call i32 @gen_sse_shufps_1(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = call i32 @emit_insn(i32 %116)
  br label %248

118:                                              ; preds = %82
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @copy_to_reg(i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %7, align 4
  call void @ix86_expand_vector_set(i32 0, i32 %121, i32 %122, i32 0)
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @GEN_INT(i32 0)
  %127 = call i32 @GEN_INT(i32 1)
  %128 = call i32 @GEN_INT(i32 6)
  %129 = call i32 @GEN_INT(i32 4)
  %130 = call i32 @gen_sse_shufps_1(i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = call i32 @emit_insn(i32 %130)
  br label %248

132:                                              ; preds = %82
  %133 = call i32 (...) @gcc_unreachable()
  br label %134

134:                                              ; preds = %132, %84
  br label %208

135:                                              ; preds = %4
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 1, i32* %11, align 4
  br label %208

139:                                              ; preds = %135
  %140 = load i32, i32* @TARGET_SSE2, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %182

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @GEN_INT(i32 %143)
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %144, i32* %145, align 16
  %146 = load i32, i32* @const1_rtx, align 4
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @const2_rtx, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %148, i32* %149, align 8
  %150 = call i32 @GEN_INT(i32 3)
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @const0_rtx, align 4
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %154
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %159 = load i32, i32* %158, align 16
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @gen_sse2_pshufd_1(i32 %156, i32 %157, i32 %159, i32 %161, i32 %163, i32 %165)
  %167 = call i32 @emit_insn(i32 %166)
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %7, align 4
  call void @ix86_expand_vector_set(i32 0, i32 %168, i32 %169, i32 0)
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %173 = load i32, i32* %172, align 16
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @gen_sse2_pshufd_1(i32 %170, i32 %171, i32 %173, i32 %175, i32 %177, i32 %179)
  %181 = call i32 @emit_insn(i32 %180)
  br label %189

182:                                              ; preds = %139
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @gen_lowpart(i32 131, i32 %183)
  %185 = load i32, i32* @SFmode, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @gen_lowpart(i32 %185, i32 %186)
  %188 = load i32, i32* %8, align 4
  call void @ix86_expand_vector_set(i32 0, i32 %184, i32 %187, i32 %188)
  br label %189

189:                                              ; preds = %182, %142
  br label %248

190:                                              ; preds = %4
  %191 = load i32, i32* @TARGET_SSE2, align 4
  store i32 %191, i32* %11, align 4
  br label %208

192:                                              ; preds = %4
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i32, i32* @TARGET_SSE, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* @TARGET_3DNOW_A, align 4
  %200 = icmp ne i32 %199, 0
  br label %201

201:                                              ; preds = %198, %195
  %202 = phi i1 [ true, %195 ], [ %200, %198 ]
  br label %203

203:                                              ; preds = %201, %192
  %204 = phi i1 [ false, %192 ], [ %202, %201 ]
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %11, align 4
  br label %208

206:                                              ; preds = %4, %4
  br label %207

207:                                              ; preds = %4, %206
  br label %208

208:                                              ; preds = %207, %203, %190, %138, %134, %52
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %208
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @gen_rtx_VEC_DUPLICATE(i32 %212, i32 %213)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %8, align 4
  %219 = shl i32 1, %218
  %220 = call i32 @GEN_INT(i32 %219)
  %221 = call i32 @gen_rtx_VEC_MERGE(i32 %215, i32 %216, i32 %217, i32 %220)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* @VOIDmode, align 4
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @gen_rtx_SET(i32 %222, i32 %223, i32 %224)
  %226 = call i32 @emit_insn(i32 %225)
  br label %248

227:                                              ; preds = %208
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @GET_MODE_SIZE(i32 %229)
  %231 = call i32 @assign_stack_temp(i32 %228, i32 %230, i32 0)
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @emit_move_insn(i32 %232, i32 %233)
  %235 = load i32, i32* %16, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @GET_MODE_SIZE(i32 %238)
  %240 = mul nsw i32 %237, %239
  %241 = call i32 @adjust_address(i32 %235, i32 %236, i32 %240)
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @emit_move_insn(i32 %242, i32 %243)
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* %16, align 4
  %247 = call i32 @emit_move_insn(i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %46, %72, %85, %104, %118, %189, %227, %211
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @ix86_expand_vector_extract(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_VEC_CONCAT(i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_VEC_SELECT(i32, i32, i32) #1

declare dso_local i32 @copy_to_reg(i32) #1

declare dso_local i32 @gen_sse_unpcklps(i32, i32, i32) #1

declare dso_local i32 @gen_sse_shufps_1(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gen_sse2_pshufd_1(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gen_rtx_VEC_DUPLICATE(i32, i32) #1

declare dso_local i32 @gen_rtx_VEC_MERGE(i32, i32, i32, i32) #1

declare dso_local i32 @assign_stack_temp(i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
