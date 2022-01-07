; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_simplify_using_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_simplify_using_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@altered_reg_used = common dso_local global i32 0, align 4
@const_true_rtx = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simplify_using_condition(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @COMPARISON_P(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %109

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @altered_reg_used, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @for_each_rtx(i64* %4, i32 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %109

25:                                               ; preds = %19, %16
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @reversed_condition(i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @reversed_condition(i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @canon_condition(i64 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @canon_condition(i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @canon_condition(i64 %37)
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %36, %25
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @canon_condition(i64 %43)
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @rtx_equal_p(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i64, i64* @const_true_rtx, align 8
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  br label %109

53:                                               ; preds = %45
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @rtx_equal_p(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* @const0_rtx, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  br label %109

64:                                               ; preds = %56, %53
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @implies_p(i64 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i64, i64* @const_true_rtx, align 8
  %71 = load i64*, i64** %5, align 8
  store i64 %70, i64* %71, align 8
  br label %109

72:                                               ; preds = %64
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i64 @implies_p(i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i64, i64* @const0_rtx, align 8
  %82 = load i64*, i64** %5, align 8
  store i64 %81, i64* %82, align 8
  br label %109

83:                                               ; preds = %75, %72
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @implies_p(i64 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i64, i64* @const0_rtx, align 8
  %93 = load i64*, i64** %5, align 8
  store i64 %92, i64* %93, align 8
  br label %109

94:                                               ; preds = %86, %83
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @implies_p(i64 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i64, i64* @const_true_rtx, align 8
  %107 = load i64*, i64** %5, align 8
  store i64 %106, i64* %107, align 8
  br label %109

108:                                              ; preds = %100, %97, %94
  br label %109

109:                                              ; preds = %108, %105, %91, %80, %69, %61, %50, %24, %15
  ret void
}

declare dso_local i32 @COMPARISON_P(i64) #1

declare dso_local i64 @for_each_rtx(i64*, i32, i64) #1

declare dso_local i64 @reversed_condition(i64) #1

declare dso_local i64 @canon_condition(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @implies_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
