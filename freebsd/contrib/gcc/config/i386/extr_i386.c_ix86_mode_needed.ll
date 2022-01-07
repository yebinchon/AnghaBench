; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_mode_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_mode_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASM_INPUT = common dso_local global i64 0, align 8
@I387_CW_UNINITIALIZED = common dso_local global i32 0, align 4
@I387_CW_ANY = common dso_local global i32 0, align 4
@I387_CW_TRUNC = common dso_local global i32 0, align 4
@I387_CW_FLOOR = common dso_local global i32 0, align 4
@I387_CW_CEIL = common dso_local global i32 0, align 4
@I387_CW_MASK_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_mode_needed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @CALL_P(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @NONJUMP_INSN_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @PATTERN(i32 %15)
  %17 = call i64 @asm_noperands(i32 %16)
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @PATTERN(i32 %20)
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @ASM_INPUT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %14, %2
  %26 = load i32, i32* @I387_CW_UNINITIALIZED, align 4
  store i32 %26, i32* %3, align 4
  br label %69

27:                                               ; preds = %19, %10
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @recog_memoized(i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @I387_CW_ANY, align 4
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @get_attr_i387_cw(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %65 [
    i32 128, label %37
    i32 130, label %44
    i32 131, label %51
    i32 129, label %58
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @I387_CW_TRUNC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %69

43:                                               ; preds = %37
  br label %67

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @I387_CW_FLOOR, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %44
  br label %67

51:                                               ; preds = %33
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @I387_CW_CEIL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %51
  br label %67

58:                                               ; preds = %33
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @I387_CW_MASK_PM, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %58
  br label %67

65:                                               ; preds = %33
  %66 = call i32 (...) @gcc_unreachable()
  br label %67

67:                                               ; preds = %65, %64, %57, %50, %43
  %68 = load i32, i32* @I387_CW_ANY, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %62, %55, %48, %41, %31, %25
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @CALL_P(i32) #1

declare dso_local i64 @NONJUMP_INSN_P(i32) #1

declare dso_local i64 @asm_noperands(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @recog_memoized(i32) #1

declare dso_local i32 @get_attr_i387_cw(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
