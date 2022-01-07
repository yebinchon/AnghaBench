; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_emit_and_preserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_emit_and_preserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@SPARC_STACK_BIAS = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @emit_and_preserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_and_preserve(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @UNITS_PER_WORD, align 4
  %11 = mul nsw i32 16, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @UNITS_PER_WORD, align 4
  %14 = mul nsw i32 2, %13
  %15 = add nsw i32 %12, %14
  %16 = call i32 @SPARC_STACK_ALIGN(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @word_mode, align 4
  %18 = load i32, i32* @stack_pointer_rtx, align 4
  %19 = load i32, i32* @SPARC_STACK_BIAS, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @plus_constant(i32 %18, i32 %21)
  %23 = call i64 @gen_rtx_MEM(i32 %17, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @GEN_INT(i32 %24)
  %26 = call i64 @gen_stack_pointer_dec(i32 %25)
  %27 = call i32 @emit_insn(i64 %26)
  %28 = load i32, i32* @VOIDmode, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @gen_rtx_SET(i32 %28, i64 %29, i64 %30)
  %32 = call i32 @emit_insn(i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load i32, i32* @VOIDmode, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* @word_mode, align 4
  %39 = load i32, i32* @UNITS_PER_WORD, align 4
  %40 = call i64 @adjust_address(i64 %37, i32 %38, i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @gen_rtx_SET(i32 %36, i64 %40, i64 %41)
  %43 = call i32 @emit_insn(i64 %42)
  br label %44

44:                                               ; preds = %35, %3
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @emit_insn(i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32, i32* @VOIDmode, align 4
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* @word_mode, align 4
  %54 = load i32, i32* @UNITS_PER_WORD, align 4
  %55 = call i64 @adjust_address(i64 %52, i32 %53, i32 %54)
  %56 = call i64 @gen_rtx_SET(i32 %50, i64 %51, i64 %55)
  %57 = call i32 @emit_insn(i64 %56)
  br label %58

58:                                               ; preds = %49, %44
  %59 = load i32, i32* @VOIDmode, align 4
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i64 @gen_rtx_SET(i32 %59, i64 %60, i64 %61)
  %63 = call i32 @emit_insn(i64 %62)
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @GEN_INT(i32 %64)
  %66 = call i64 @gen_stack_pointer_inc(i32 %65)
  %67 = call i32 @emit_insn(i64 %66)
  ret void
}

declare dso_local i32 @SPARC_STACK_ALIGN(i32) #1

declare dso_local i64 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @emit_insn(i64) #1

declare dso_local i64 @gen_stack_pointer_dec(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @adjust_address(i64, i32, i32) #1

declare dso_local i64 @gen_stack_pointer_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
