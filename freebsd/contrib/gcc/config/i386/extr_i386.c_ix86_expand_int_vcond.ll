; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_int_vcond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_int_vcond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_expand_int_vcond(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GET_MODE(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GET_CODE(i32 %18)
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  switch i32 %26, label %40 [
    i32 140, label %27
    i32 137, label %27
    i32 136, label %27
    i32 131, label %28
    i32 135, label %28
    i32 134, label %28
    i32 139, label %31
    i32 138, label %31
    i32 133, label %34
    i32 132, label %34
  ]

27:                                               ; preds = %1, %1, %1
  br label %42

28:                                               ; preds = %1, %1, %1
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @reverse_condition(i32 %29)
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %42

31:                                               ; preds = %1, %1
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @reverse_condition(i32 %32)
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %1, %1, %31
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @swap_condition(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %1
  %41 = call i32 (...) @gcc_unreachable()
  br label %42

42:                                               ; preds = %40, %34, %28, %27
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 136
  br i1 %44, label %45, label %104

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @force_reg(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %3, align 4
  switch i32 %49, label %98 [
    i32 129, label %50
    i32 130, label %83
    i32 128, label %83
  ]

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @gen_reg_rtx(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @gen_subv4si3(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @emit_insn(i32 %56)
  %58 = call i32 @GEN_INT(i32 -2147483648)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @gen_rtvec(i32 4, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = call i32 @gen_rtx_CONST_VECTOR(i32 %59, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @force_reg(i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @gen_reg_rtx(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @gen_andv4si3(i32 %71, i32 %72, i32 %73)
  %75 = call i32 @emit_insn(i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @gen_reg_rtx(i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @gen_xorv4si3(i32 %78, i32 %79, i32 %80)
  %82 = call i32 @emit_insn(i32 %81)
  store i32 137, i32* %4, align 4
  br label %100

83:                                               ; preds = %45, %45
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @gen_reg_rtx(i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @VOIDmode, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @gen_rtx_US_MINUS(i32 %88, i32 %89, i32 %90)
  %92 = call i32 @gen_rtx_SET(i32 %86, i32 %87, i32 %91)
  %93 = call i32 @emit_insn(i32 %92)
  store i32 140, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %45
  %99 = call i32 (...) @gcc_unreachable()
  br label %100

100:                                              ; preds = %98, %83, %50
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @CONST0_RTX(i32 %102)
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %100, %42
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32*, i32** %2, align 8
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 1, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %2, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 2, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ix86_expand_sse_cmp(i32 %107, i32 %108, i32 %109, i32 %110, i32 %116, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32*, i32** %2, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %2, align 8
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 1, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %2, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sub nsw i32 2, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ix86_expand_sse_movcc(i32 %126, i32 %127, i32 %133, i32 %139)
  ret i32 1
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_subv4si3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_CONST_VECTOR(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gen_andv4si3(i32, i32, i32) #1

declare dso_local i32 @gen_xorv4si3(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_US_MINUS(i32, i32, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @ix86_expand_sse_cmp(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ix86_expand_sse_movcc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
