; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_maybe_find_missing_stmts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_maybe_find_missing_stmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64, i32, i64*, i64*, i64*)* @maybe_find_missing_stmts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_find_missing_stmts(i64 %0, i32 %1, i64 %2, i32 %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %7
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = load i64*, i64** %12, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i64*, i64** %12, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @EXPR_HAS_LOCATION(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24, %20
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @find_alias_site(i64 %30, i32 %31, i64 %32, i32 %33)
  %35 = load i64*, i64** %12, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i64*, i64** %13, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64*, i64** %13, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @EXPR_HAS_LOCATION(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40, %36
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @reference_site(i64 %46, i32 %47)
  %49 = load i64*, i64** %13, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i64*, i64** %14, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64*, i64** %14, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @EXPR_HAS_LOCATION(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54, %50
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @reference_site(i64 %60, i32 %61)
  %63 = load i64*, i64** %14, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %17, %7
  %66 = load i64*, i64** %12, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %65
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64*, i64** %13, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  br label %86

77:                                               ; preds = %69
  %78 = load i64*, i64** %14, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64*, i64** %14, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %12, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %73
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i64*, i64** %13, align 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load i64*, i64** %12, align 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i64*, i64** %12, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %13, align 8
  store i64 %97, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %91, %87
  %100 = load i64*, i64** %14, align 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i64*, i64** %12, align 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64*, i64** %12, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %14, align 8
  store i64 %109, i64* %110, align 8
  br label %111

111:                                              ; preds = %107, %103, %99
  ret void
}

declare dso_local i32 @EXPR_HAS_LOCATION(i64) #1

declare dso_local i64 @find_alias_site(i64, i32, i64, i32) #1

declare dso_local i64 @reference_site(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
