; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_unary_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_unary_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i64 0, align 8
@NOT = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4
@FLAGS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_unary_operator(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %7, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @MEM_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @rtx_equal_p(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @gen_reg_rtx(i32 %28)
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %27, %26
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @MEM_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @force_reg(i32 %39, i64 %40)
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %38, %35, %31
  %43 = load i32, i32* @VOIDmode, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @gen_rtx_fmt_e(i32 %45, i32 %46, i64 %47)
  %49 = call i64 @gen_rtx_SET(i32 %43, i64 %44, i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* @reload_in_progress, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @NOT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52, %42
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @NOT, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @gcc_assert(i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @emit_insn(i64 %62)
  br label %76

64:                                               ; preds = %52
  %65 = load i32, i32* @VOIDmode, align 4
  %66 = load i32, i32* @CCmode, align 4
  %67 = load i32, i32* @FLAGS_REG, align 4
  %68 = call i32 @gen_rtx_REG(i32 %66, i32 %67)
  %69 = call i64 @gen_rtx_CLOBBER(i32 %65, i32 %68)
  store i64 %69, i64* %11, align 8
  %70 = load i32, i32* @VOIDmode, align 4
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @gen_rtvec(i32 2, i64 %71, i64 %72)
  %74 = call i64 @gen_rtx_PARALLEL(i32 %70, i32 %73)
  %75 = call i32 @emit_insn(i64 %74)
  br label %76

76:                                               ; preds = %64, %56
  %77 = load i64, i64* %9, align 8
  %78 = load i64*, i64** %6, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i64*, i64** %6, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @emit_move_insn(i64 %85, i64 %86)
  br label %88

88:                                               ; preds = %82, %76
  ret void
}

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i32) #1

declare dso_local i32 @gen_rtx_fmt_e(i32, i32, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @emit_insn(i64) #1

declare dso_local i64 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
