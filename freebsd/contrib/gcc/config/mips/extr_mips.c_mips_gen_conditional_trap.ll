; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_gen_conditional_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_gen_conditional_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmp_operands = common dso_local global i32* null, align 8
@LT = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_gen_conditional_trap(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @GET_CODE(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** @cmp_operands, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GET_MODE(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %24 [
    i32 131, label %16
    i32 129, label %18
    i32 130, label %20
    i32 128, label %22
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @LT, align 4
  store i32 %17, i32* %5, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @GE, align 4
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @LTU, align 4
  store i32 %21, i32* %5, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @GEU, align 4
  store i32 %23, i32* %5, align 4
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %22, %20, %18, %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @GET_CODE(i32 %29)
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32*, i32** @cmp_operands, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  %36 = load i32*, i32** @cmp_operands, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %25
  %40 = load i32*, i32** @cmp_operands, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i32*, i32** @cmp_operands, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @force_reg(i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @arith_operand(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @force_reg(i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i32, i32* @VOIDmode, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @gen_rtx_fmt_ee(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gen_rtx_TRAP_IF(i32 %59, i32 %64, i32 %67)
  %69 = call i32 @emit_insn(i32 %68)
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @arith_operand(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_TRAP_IF(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
