; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_fp_movcc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_fp_movcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SSE_MATH = common dso_local global i64 0, align 8
@ix86_compare_op0 = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@ix86_compare_op1 = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_expand_fp_movcc(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @GET_MODE(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @GET_CODE(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i64, i64* @TARGET_SSE_MATH, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %90

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @SSE_FLOAT_MODE_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %90

25:                                               ; preds = %21
  %26 = load i64, i64* @ix86_compare_op0, align 8
  %27 = call i32 @GET_MODE(i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @VOIDmode, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* @ix86_compare_op1, align 8
  %33 = call i32 @GET_MODE(i64 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %218

39:                                               ; preds = %34
  %40 = load i64*, i64** %3, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ix86_prepare_sse_fp_compare_args(i64 %42, i32 %43, i64* @ix86_compare_op0, i64* @ix86_compare_op1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @UNKNOWN, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %218

49:                                               ; preds = %39
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* @ix86_compare_op0, align 8
  %55 = load i64, i64* @ix86_compare_op1, align 8
  %56 = load i64*, i64** %3, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 3
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @ix86_expand_sse_fp_minmax(i64 %52, i32 %53, i64 %54, i64 %55, i64 %58, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %218

65:                                               ; preds = %49
  %66 = load i64*, i64** %3, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i64, i64* @ix86_compare_op0, align 8
  %71 = load i64, i64* @ix86_compare_op1, align 8
  %72 = load i64*, i64** %3, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %3, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @ix86_expand_sse_cmp(i64 %68, i32 %69, i64 %70, i64 %71, i64 %74, i64 %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64*, i64** %3, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64*, i64** %3, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %3, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ix86_expand_sse_movcc(i64 %81, i64 %82, i64 %85, i64 %88)
  store i32 1, i32* %2, align 4
  br label %218

90:                                               ; preds = %21, %1
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @ix86_expand_compare(i32 %91, i64* %8, i64* %9)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i32, i32* @VOIDmode, align 4
  %95 = call i32 @fcmov_comparison_operator(i64 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %118, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %9, align 8
  %102 = icmp ne i64 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i1 [ false, %97 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @gcc_assert(i32 %106)
  %108 = load i32, i32* @QImode, align 4
  %109 = call i64 @gen_reg_rtx(i32 %108)
  store i64 %109, i64* %6, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @ix86_expand_setcc(i32 %110, i64 %111)
  %113 = load i32, i32* @NE, align 4
  store i32 %113, i32* %5, align 4
  %114 = load i64, i64* %6, align 8
  store i64 %114, i64* @ix86_compare_op0, align 8
  %115 = load i64, i64* @const0_rtx, align 8
  store i64 %115, i64* @ix86_compare_op1, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i64 @ix86_expand_compare(i32 %116, i64* %8, i64* %9)
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %104, %90
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %118
  %122 = load i64*, i64** %3, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %3, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 3
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @reg_overlap_mentioned_p(i64 %124, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %121
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @gen_reg_rtx(i32 %131)
  store i64 %132, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64*, i64** %3, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 3
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @emit_move_insn(i64 %133, i64 %136)
  %138 = load i64, i64* %6, align 8
  %139 = load i64*, i64** %3, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 3
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %130, %121, %118
  %142 = load i64, i64* %8, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %141
  %145 = load i64*, i64** %3, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %3, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 2
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @reg_overlap_mentioned_p(i64 %147, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %144
  %154 = load i32, i32* %4, align 4
  %155 = call i64 @gen_reg_rtx(i32 %154)
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64*, i64** %3, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @emit_move_insn(i64 %156, i64 %159)
  %161 = load i64, i64* %6, align 8
  %162 = load i64*, i64** %3, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 2
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %153, %144, %141
  %165 = load i32, i32* @VOIDmode, align 4
  %166 = load i64*, i64** %3, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = load i64, i64* %7, align 8
  %171 = load i64*, i64** %3, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %3, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 3
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @gen_rtx_IF_THEN_ELSE(i32 %169, i64 %170, i64 %173, i64 %176)
  %178 = call i32 @gen_rtx_SET(i32 %165, i64 %168, i32 %177)
  %179 = call i32 @emit_insn(i32 %178)
  %180 = load i64, i64* %9, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %164
  %183 = load i32, i32* @VOIDmode, align 4
  %184 = load i64*, i64** %3, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 0
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = load i64, i64* %9, align 8
  %189 = load i64*, i64** %3, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 3
  %191 = load i64, i64* %190, align 8
  %192 = load i64*, i64** %3, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @gen_rtx_IF_THEN_ELSE(i32 %187, i64 %188, i64 %191, i64 %194)
  %196 = call i32 @gen_rtx_SET(i32 %183, i64 %186, i32 %195)
  %197 = call i32 @emit_insn(i32 %196)
  br label %198

198:                                              ; preds = %182, %164
  %199 = load i64, i64* %8, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %198
  %202 = load i32, i32* @VOIDmode, align 4
  %203 = load i64*, i64** %3, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = load i64, i64* %8, align 8
  %208 = load i64*, i64** %3, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %3, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @gen_rtx_IF_THEN_ELSE(i32 %206, i64 %207, i64 %210, i64 %213)
  %215 = call i32 @gen_rtx_SET(i32 %202, i64 %205, i32 %214)
  %216 = call i32 @emit_insn(i32 %215)
  br label %217

217:                                              ; preds = %201, %198
  store i32 1, i32* %2, align 4
  br label %218

218:                                              ; preds = %217, %65, %64, %48, %38
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @SSE_FLOAT_MODE_P(i32) #1

declare dso_local i32 @ix86_prepare_sse_fp_compare_args(i64, i32, i64*, i64*) #1

declare dso_local i64 @ix86_expand_sse_fp_minmax(i64, i32, i64, i64, i64, i64) #1

declare dso_local i64 @ix86_expand_sse_cmp(i64, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ix86_expand_sse_movcc(i64, i64, i64, i64) #1

declare dso_local i64 @ix86_expand_compare(i32, i64*, i64*) #1

declare dso_local i32 @fcmov_comparison_operator(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @ix86_expand_setcc(i32, i64) #1

declare dso_local i64 @reg_overlap_mentioned_p(i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i32) #1

declare dso_local i32 @gen_rtx_IF_THEN_ELSE(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
