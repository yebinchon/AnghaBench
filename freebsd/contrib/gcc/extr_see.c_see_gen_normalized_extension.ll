; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_gen_normalized_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_gen_normalized_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGN_EXTEND = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @see_gen_normalized_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @see_gen_normalized_extension(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @REG_P(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SIGN_EXTEND, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ZERO_EXTEND, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %13, %3
  store i32* null, i32** %4, align 8
  br label %58

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @gen_lowpart_SUBREG(i32 %27, i32* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SIGN_EXTEND, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @GET_MODE(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @gen_rtx_SIGN_EXTEND(i32 %35, i32* %36)
  store i32* %37, i32** %10, align 8
  br label %43

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @GET_MODE(i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32* @gen_rtx_ZERO_EXTEND(i32 %40, i32* %41)
  store i32* %42, i32** %10, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = call i32 (...) @start_sequence()
  %45 = load i32, i32* @VOIDmode, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @gen_rtx_SET(i32 %45, i32* %46, i32* %47)
  %49 = call i32 @emit_insn(i32 %48)
  %50 = call i32* (...) @get_insns()
  store i32* %50, i32** %9, align 8
  %51 = call i32 (...) @end_sequence()
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @insn_invalid_p(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32* null, i32** %4, align 8
  br label %58

56:                                               ; preds = %43
  %57 = load i32*, i32** %9, align 8
  store i32* %57, i32** %4, align 8
  br label %58

58:                                               ; preds = %56, %55, %25
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i32 @REG_P(i32*) #1

declare dso_local i32* @gen_lowpart_SUBREG(i32, i32*) #1

declare dso_local i32* @gen_rtx_SIGN_EXTEND(i32, i32*) #1

declare dso_local i32 @GET_MODE(i32*) #1

declare dso_local i32* @gen_rtx_ZERO_EXTEND(i32, i32*) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32*, i32*) #1

declare dso_local i32* @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i64 @insn_invalid_p(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
