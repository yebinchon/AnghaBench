; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_superword_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_superword_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@word_mode = common dso_local global i32 0, align 4
@ashr_optab = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64, i32, i32)* @expand_superword_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_superword_shift(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i64, i64* %13, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %7
  %19 = load i32, i32* @word_mode, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @force_expand_binop(i32 %19, i64 %20, i64 %21, i64 %22, i64 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %58

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %7
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @ashr_optab, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* @word_mode, align 4
  %40 = call i32 @CONST0_RTX(i32 %39)
  %41 = call i32 @emit_move_insn(i64 %38, i32 %40)
  br label %56

42:                                               ; preds = %33
  %43 = load i32, i32* @word_mode, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @BITS_PER_WORD, align 8
  %47 = sub nsw i64 %46, 1
  %48 = call i64 @GEN_INT(i64 %47)
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @force_expand_binop(i32 %43, i64 %44, i64 %45, i64 %48, i64 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %58

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %30
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %54, %28
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @force_expand_binop(i32, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @emit_move_insn(i64, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i64 @GEN_INT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
