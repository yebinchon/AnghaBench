; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_widen_sum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_widen_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_expand_widen_sum(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (i32, i32, i32)*, align 8
  %12 = alloca i32 (i32, i32, i32)*, align 8
  %13 = alloca i32 (i32, i32, i32)*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GET_MODE(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GET_MODE(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %26 [
    i32 128, label %24
    i32 129, label %25
  ]

24:                                               ; preds = %2
  store i32 (i32, i32, i32)* @gen_unpack1_l, i32 (i32, i32, i32)** %11, align 8
  store i32 (i32, i32, i32)* @gen_unpack1_h, i32 (i32, i32, i32)** %12, align 8
  store i32 (i32, i32, i32)* @gen_addv4hi3, i32 (i32, i32, i32)** %13, align 8
  br label %28

25:                                               ; preds = %2
  store i32 (i32, i32, i32)* @gen_unpack2_l, i32 (i32, i32, i32)** %11, align 8
  store i32 (i32, i32, i32)* @gen_unpack2_h, i32 (i32, i32, i32)** %12, align 8
  store i32 (i32, i32, i32)* @gen_addv2si3, i32 (i32, i32, i32)** %13, align 8
  br label %28

26:                                               ; preds = %2
  %27 = call i32 (...) @gcc_unreachable()
  br label %28

28:                                               ; preds = %26, %25, %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @CONST0_RTX(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %51

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @gen_reg_rtx(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* @LT, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @CONST0_RTX(i32 %43)
  %45 = call i32 @ia64_expand_vecint_compare(i32 %37, i32 %38, i32 %39, i32 %42, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @gcc_assert(i32 %49)
  br label %51

51:                                               ; preds = %34, %31
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @gen_reg_rtx(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @gen_reg_rtx(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @gen_reg_rtx(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @gen_lowpart(i32 %59, i32 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 %58(i32 %61, i32 %64, i32 %65)
  %67 = call i32 @emit_insn(i32 %66)
  %68 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %12, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @gen_lowpart(i32 %69, i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 %68(i32 %71, i32 %74, i32 %75)
  %77 = call i32 @emit_insn(i32 %76)
  %78 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %13, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 %78(i32 %79, i32 %80, i32 %83)
  %85 = call i32 @emit_insn(i32 %84)
  %86 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %13, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 %86(i32 %89, i32 %90, i32 %91)
  %93 = call i32 @emit_insn(i32 %92)
  ret void
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gen_unpack1_l(i32, i32, i32) #1

declare dso_local i32 @gen_unpack1_h(i32, i32, i32) #1

declare dso_local i32 @gen_addv4hi3(i32, i32, i32) #1

declare dso_local i32 @gen_unpack2_l(i32, i32, i32) #1

declare dso_local i32 @gen_unpack2_h(i32, i32, i32) #1

declare dso_local i32 @gen_addv2si3(i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @ia64_expand_vecint_compare(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
