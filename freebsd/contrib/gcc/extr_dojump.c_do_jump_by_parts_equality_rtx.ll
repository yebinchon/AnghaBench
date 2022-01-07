; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_jump_by_parts_equality_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_jump_by_parts_equality_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@EQ = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64)* @do_jump_by_parts_equality_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_jump_by_parts_equality_rtx(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @GET_MODE_SIZE(i32 %14)
  %16 = load i32, i32* @UNITS_PER_WORD, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @const0_rtx, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @do_jump_by_parts_zero_rtx(i32 %22, i64 %23, i64 %24, i64 %25)
  br label %78

27:                                               ; preds = %5
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @const0_rtx, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @do_jump_by_parts_zero_rtx(i32 %32, i64 %33, i64 %34, i64 %35)
  br label %78

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i64 (...) @gen_label_rtx()
  store i64 %42, i64* %9, align 8
  store i64 %42, i64* %12, align 8
  br label %43

43:                                               ; preds = %41, %38
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @operand_subword_force(i64 %49, i32 %50, i32 %51)
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @operand_subword_force(i64 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @EQ, align 4
  %58 = load i32, i32* @word_mode, align 4
  %59 = load i32, i32* @NULL_RTX, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* @NULL_RTX, align 4
  %62 = call i32 @do_compare_rtx_and_jump(i32 %52, i32 %56, i32 %57, i32 0, i32 %58, i32 %59, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @emit_jump(i64 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @emit_label(i64 %76)
  br label %78

78:                                               ; preds = %21, %31, %75, %72
  ret void
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @do_jump_by_parts_zero_rtx(i32, i64, i64, i64) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @do_compare_rtx_and_jump(i32, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @operand_subword_force(i64, i32, i32) #1

declare dso_local i32 @emit_jump(i64) #1

declare dso_local i32 @emit_label(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
