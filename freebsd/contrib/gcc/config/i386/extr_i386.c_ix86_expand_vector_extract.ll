; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SSE2 = common dso_local global i32 0, align 4
@SFmode = common dso_local global i32 0, align 4
@TARGET_SSE = common dso_local global i32 0, align 4
@TARGET_3DNOW_A = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_vector_extract(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @GET_MODE(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @GET_MODE_INNER(i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %118 [
    i32 133, label %19
    i32 134, label %19
    i32 136, label %24
    i32 135, label %24
    i32 131, label %25
    i32 130, label %59
    i32 129, label %101
    i32 132, label %103
    i32 137, label %117
    i32 128, label %117
  ]

19:                                               ; preds = %4, %4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %119

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %4, %4, %23
  store i32 1, i32* %11, align 4
  br label %119

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %55 [
    i32 0, label %27
    i32 1, label %29
    i32 3, label %29
    i32 2, label %47
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %12, align 4
  br label %57

29:                                               ; preds = %25, %25
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @gen_reg_rtx(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @GEN_INT(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @GEN_INT(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 4
  %41 = call i32 @GEN_INT(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 4
  %44 = call i32 @GEN_INT(i32 %43)
  %45 = call i32 @gen_sse_shufps_1(i32 %32, i32 %33, i32 %34, i32 %36, i32 %38, i32 %41, i32 %44)
  %46 = call i32 @emit_insn(i32 %45)
  br label %57

47:                                               ; preds = %25
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @gen_reg_rtx(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @gen_sse_unpckhps(i32 %50, i32 %51, i32 %52)
  %54 = call i32 @emit_insn(i32 %53)
  br label %57

55:                                               ; preds = %25
  %56 = call i32 (...) @gcc_unreachable()
  br label %57

57:                                               ; preds = %55, %47, %29, %27
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %7, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %119

59:                                               ; preds = %4
  %60 = load i32, i32* @TARGET_SSE2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %89 [
    i32 0, label %64
    i32 1, label %66
    i32 3, label %66
    i32 2, label %81
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %12, align 4
  br label %91

66:                                               ; preds = %62, %62
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @gen_reg_rtx(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @GEN_INT(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @GEN_INT(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @GEN_INT(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @GEN_INT(i32 %77)
  %79 = call i32 @gen_sse2_pshufd_1(i32 %69, i32 %70, i32 %72, i32 %74, i32 %76, i32 %78)
  %80 = call i32 @emit_insn(i32 %79)
  br label %91

81:                                               ; preds = %62
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @gen_reg_rtx(i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @gen_sse2_punpckhdq(i32 %84, i32 %85, i32 %86)
  %88 = call i32 @emit_insn(i32 %87)
  br label %91

89:                                               ; preds = %62
  %90 = call i32 (...) @gcc_unreachable()
  br label %91

91:                                               ; preds = %89, %81, %66, %64
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %7, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %100

93:                                               ; preds = %59
  %94 = load i32, i32* @SFmode, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @gen_lowpart(i32 %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @gen_lowpart(i32 131, i32 %97)
  %99 = load i32, i32* %8, align 4
  call void @ix86_expand_vector_extract(i32 0, i32 %96, i32 %98, i32 %99)
  br label %166

100:                                              ; preds = %91
  br label %119

101:                                              ; preds = %4
  %102 = load i32, i32* @TARGET_SSE2, align 4
  store i32 %102, i32* %11, align 4
  br label %119

103:                                              ; preds = %4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32, i32* @TARGET_SSE, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @TARGET_3DNOW_A, align 4
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ true, %106 ], [ %111, %109 ]
  br label %114

114:                                              ; preds = %112, %103
  %115 = phi i1 [ false, %103 ], [ %113, %112 ]
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %11, align 4
  br label %119

117:                                              ; preds = %4, %4
  br label %118

118:                                              ; preds = %4, %117
  br label %119

119:                                              ; preds = %118, %114, %101, %100, %57, %24, %22
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load i32, i32* @VOIDmode, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @GEN_INT(i32 %124)
  %126 = call i32 @gen_rtvec(i32 1, i32 %125)
  %127 = call i32 @gen_rtx_PARALLEL(i32 %123, i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @gen_rtx_VEC_SELECT(i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @HImode, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %122
  %136 = load i32, i32* @SImode, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @gen_rtx_ZERO_EXTEND(i32 %136, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* @SImode, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @gen_lowpart(i32 %139, i32 %140)
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %135, %122
  %143 = load i32, i32* @VOIDmode, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @gen_rtx_SET(i32 %143, i32 %144, i32 %145)
  %147 = call i32 @emit_insn(i32 %146)
  br label %166

148:                                              ; preds = %119
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @GET_MODE_SIZE(i32 %150)
  %152 = call i32 @assign_stack_temp(i32 %149, i32 %151, i32 0)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @emit_move_insn(i32 %153, i32 %154)
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @GET_MODE_SIZE(i32 %159)
  %161 = mul nsw i32 %158, %160
  %162 = call i32 @adjust_address(i32 %156, i32 %157, i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @emit_move_insn(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %93, %148, %142
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_sse_shufps_1(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_sse_unpckhps(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gen_sse2_pshufd_1(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_sse2_punpckhdq(i32, i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32) #1

declare dso_local i32 @gen_rtx_VEC_SELECT(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_ZERO_EXTEND(i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

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
