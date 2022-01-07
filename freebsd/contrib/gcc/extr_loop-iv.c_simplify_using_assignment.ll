; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_simplify_using_assignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_simplify_using_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@mark_altered = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@regs_invalidated_by_call = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i32)* @simplify_using_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simplify_using_assignment(i64 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @single_set(i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* @NULL_RTX, align 8
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @SET_DEST(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @REG_P(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @altered_reg_used(i64* %8, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %17
  store i32 1, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %30

29:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @PATTERN(i64 %31)
  %33 = load i32, i32* @mark_altered, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @note_stores(i32 %32, i32 %33, i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @CALL_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32, i32* @regs_invalidated_by_call, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @TEST_HARD_REG_BIT(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @SET_REGNO_REG_SET(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %40

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %90

62:                                               ; preds = %58
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @find_reg_equal_equiv_note(i64 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @XEXP(i64 %68, i32 0)
  store i64 %69, i64* %9, align 8
  br label %73

70:                                               ; preds = %62
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @SET_SRC(i64 %71)
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @simple_rhs_p(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %90

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @for_each_rtx(i64* %9, i64 (i64*, i32)* @altered_reg_used, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %90

83:                                               ; preds = %78
  %84 = load i64*, i64** %5, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @simplify_replace_rtx(i64 %85, i64 %86, i64 %87)
  %89 = load i64*, i64** %5, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %82, %77, %61
  ret void
}

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @altered_reg_used(i64*, i32) #1

declare dso_local i32 @note_stores(i32, i32, i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @SET_REGNO_REG_SET(i32, i32) #1

declare dso_local i64 @find_reg_equal_equiv_note(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @simple_rhs_p(i64) #1

declare dso_local i64 @for_each_rtx(i64*, i64 (i64*, i32)*, i32) #1

declare dso_local i64 @simplify_replace_rtx(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
