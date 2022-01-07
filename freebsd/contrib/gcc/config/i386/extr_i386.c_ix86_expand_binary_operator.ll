; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_binary_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_binary_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i64 0, align 8
@PLUS = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4
@FLAGS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_binary_operator(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i64*, i64** %6, align 8
  %15 = call i64 @ix86_fixup_binary_operands(i32 %12, i32 %13, i64* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @VOIDmode, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @gen_rtx_fmt_ee(i32 %24, i32 %25, i64 %26, i64 %27)
  %29 = call i64 @gen_rtx_SET(i32 %22, i64 %23, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* @reload_in_progress, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PLUS, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @emit_insn(i64 %38)
  br label %52

40:                                               ; preds = %3
  %41 = load i32, i32* @VOIDmode, align 4
  %42 = load i32, i32* @CCmode, align 4
  %43 = load i32, i32* @FLAGS_REG, align 4
  %44 = call i32 @gen_rtx_REG(i32 %42, i32 %43)
  %45 = call i64 @gen_rtx_CLOBBER(i32 %41, i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i32, i32* @VOIDmode, align 4
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @gen_rtvec(i32 2, i64 %47, i64 %48)
  %50 = call i64 @gen_rtx_PARALLEL(i32 %46, i32 %49)
  %51 = call i32 @emit_insn(i64 %50)
  br label %52

52:                                               ; preds = %40, %32
  %53 = load i64, i64* %9, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @emit_move_insn(i64 %61, i64 %62)
  br label %64

64:                                               ; preds = %58, %52
  ret void
}

declare dso_local i64 @ix86_fixup_binary_operands(i32, i32, i64*) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

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
