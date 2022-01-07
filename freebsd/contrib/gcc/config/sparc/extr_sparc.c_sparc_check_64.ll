; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_check_64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_check_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i32 0, align 4
@DImode = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@flag_expensive_optimizations = common dso_local global i64 0, align 8
@SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc_check_64(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @GET_CODE(i64 %10)
  %12 = load i32, i32* @REG, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @GET_MODE(i64 %16)
  %18 = load i64, i64* @DImode, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @SImode, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @REGNO(i64 %22)
  %24 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @gen_rtx_REG(i32 %21, i64 %25)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %20, %2
  %28 = load i64, i64* @flag_expensive_optimizations, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @REGNO(i64 %31)
  %33 = call i32 @REG_N_SETS(i64 %32)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %30, %27
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i64 (...) @get_last_insn_anywhere()
  store i64 %43, i64* %5, align 8
  br label %45

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %100

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %36
  br label %47

47:                                               ; preds = %98, %46
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @PREV_INSN(i64 %48)
  store i64 %49, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %99

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @GET_CODE(i64 %52)
  switch i32 %53, label %56 [
    i32 129, label %54
    i32 128, label %54
    i32 131, label %55
    i32 132, label %55
    i32 130, label %61
  ]

54:                                               ; preds = %51, %51
  br label %98

55:                                               ; preds = %51, %51
  br label %56

56:                                               ; preds = %51, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %100

60:                                               ; preds = %56
  br label %98

61:                                               ; preds = %51
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @PATTERN(i64 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @GET_CODE(i64 %64)
  %66 = load i32, i32* @SET, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %100

69:                                               ; preds = %61
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @SET_DEST(i64 %71)
  %73 = call i32 @rtx_equal_p(i64 %70, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @set_extends(i64 %76)
  store i32 %77, i32* %3, align 4
  br label %100

78:                                               ; preds = %69
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @SET_DEST(i64 %83)
  %85 = call i32 @rtx_equal_p(i64 %82, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @set_extends(i64 %88)
  store i32 %89, i32* %3, align 4
  br label %100

90:                                               ; preds = %81, %78
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @SET_DEST(i64 %91)
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @reg_overlap_mentioned_p(i32 %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %100

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %60, %54
  br label %47

99:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %96, %87, %75, %68, %59, %44
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @gen_rtx_REG(i32, i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @REG_N_SETS(i64) #1

declare dso_local i64 @get_last_insn_anywhere(...) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i32) #1

declare dso_local i32 @SET_DEST(i64) #1

declare dso_local i32 @set_extends(i64) #1

declare dso_local i32 @reg_overlap_mentioned_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
