; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_follow_jumps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_follow_jumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RETURN = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i32 0, align 4
@flag_test_coverage = common dso_local global i64 0, align 8
@ADDR_VEC = common dso_local global i64 0, align 8
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @follow_jumps(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %105, %1
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @next_active_insn(i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @JUMP_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @JUMP_LABEL(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @any_uncondjump_p(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @onlyjump_p(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %29, %25, %21
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @PATTERN(i64 %34)
  %36 = call i64 @GET_CODE(i32 %35)
  %37 = load i64, i64* @RETURN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33, %29
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @NEXT_INSN(i64 %40)
  store i64 %41, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @BARRIER_P(i64 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %43, %39, %33, %17, %13, %10
  %48 = phi i1 [ false, %39 ], [ false, %33 ], [ false, %17 ], [ false, %13 ], [ false, %10 ], [ %46, %43 ]
  br i1 %48, label %49, label %108

49:                                               ; preds = %47
  %50 = load i32, i32* @reload_completed, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* @flag_test_coverage, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %72, %55
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @NOTE_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @NOTE_LINE_NUMBER(i64 %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  store i64 %70, i64* %2, align 8
  br label %115

71:                                               ; preds = %65, %61
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @NEXT_INSN(i64 %73)
  store i64 %74, i64* %8, align 8
  br label %57

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75, %52, %49
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @JUMP_LABEL(i64 %77)
  %79 = load i64, i64* %3, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i64, i64* %3, align 8
  store i64 %82, i64* %2, align 8
  br label %115

83:                                               ; preds = %76
  %84 = load i64, i64* %4, align 8
  %85 = call i64 @JUMP_LABEL(i64 %84)
  %86 = call i64 @next_active_insn(i64 %85)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @PATTERN(i64 %90)
  %92 = call i64 @GET_CODE(i32 %91)
  %93 = load i64, i64* @ADDR_VEC, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @PATTERN(i64 %96)
  %98 = call i64 @GET_CODE(i32 %97)
  %99 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95, %89
  br label %108

102:                                              ; preds = %95, %83
  %103 = load i64, i64* %4, align 8
  %104 = call i64 @JUMP_LABEL(i64 %103)
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %10

108:                                              ; preds = %101, %47
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i64, i64* %3, align 8
  store i64 %112, i64* %2, align 8
  br label %115

113:                                              ; preds = %108
  %114 = load i64, i64* %6, align 8
  store i64 %114, i64* %2, align 8
  br label %115

115:                                              ; preds = %113, %111, %81, %69
  %116 = load i64, i64* %2, align 8
  ret i64 %116
}

declare dso_local i64 @next_active_insn(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @JUMP_LABEL(i64) #1

declare dso_local i64 @any_uncondjump_p(i64) #1

declare dso_local i64 @onlyjump_p(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @BARRIER_P(i64) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
