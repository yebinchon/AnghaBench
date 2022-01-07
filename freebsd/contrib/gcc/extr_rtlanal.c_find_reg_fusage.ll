; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_reg_fusage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_reg_fusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_reg_fusage(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @CALL_P(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @gcc_assert(i64 %17)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @REG_P(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %23)
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %43, %22
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @XEXP(i64 %29, i32 0)
  %31 = call i32 @GET_CODE(i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @XEXP(i64 %36, i32 0)
  %38 = call i64 @XEXP(i64 %37, i32 0)
  %39 = call i64 @rtx_equal_p(i64 %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %84

42:                                               ; preds = %34, %28
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @XEXP(i64 %44, i32 1)
  store i64 %45, i64* %8, align 8
  br label %25

46:                                               ; preds = %25
  br label %83

47:                                               ; preds = %16
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @REGNO(i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32**, i32*** @hard_regno_nregs, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i64 @GET_MODE(i64 %60)
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %54, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %78, %53
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @find_regno_fusage(i64 %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %84

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %66

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %47
  br label %83

83:                                               ; preds = %82, %46
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %76, %41, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @CALL_P(i64) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @CALL_INSN_FUNCTION_USAGE(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @find_regno_fusage(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
