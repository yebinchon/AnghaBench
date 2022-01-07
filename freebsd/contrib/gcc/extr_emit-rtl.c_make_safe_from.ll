; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_make_safe_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_make_safe_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_safe_from(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %2, %17
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  switch i32 %9, label %16 [
    i32 129, label %10
    i32 130, label %13
    i32 131, label %13
    i32 128, label %13
  ]

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @SUBREG_REG(i32 %11)
  store i32 %12, i32* %5, align 4
  br label %17

13:                                               ; preds = %7, %7, %7
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @XEXP(i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  br label %17

16:                                               ; preds = %7
  br label %18

17:                                               ; preds = %13, %10
  br label %7

18:                                               ; preds = %16
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @MEM_P(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @CONSTANT_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @REG_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @GET_CODE(i32 %31)
  %33 = icmp ne i32 %32, 129
  br i1 %33, label %48, label %34

34:                                               ; preds = %30, %26, %22, %18
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @REG_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @REGNO(i32 %39)
  %41 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @reg_mentioned_p(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43, %38, %30
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @GET_MODE(i32 %49)
  %51 = call i32 @gen_reg_rtx(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @emit_move_insn(i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %43, %34
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %48
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @reg_mentioned_p(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
