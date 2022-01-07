; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_except_specs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comp_except_specs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comp_except_specs(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %129

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @NULL_TREE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @NULL_TREE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ true, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %129

32:                                               ; preds = %17
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @TREE_VALUE(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @NULL_TREE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @TREE_VALUE(i64 %41)
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i1 [ false, %36 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %129

48:                                               ; preds = %32
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @NULL_TREE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %129

53:                                               ; preds = %48
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @TREE_VALUE(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @TREE_VALUE(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %129

66:                                               ; preds = %57, %53
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %111, %66
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @NULL_TREE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %114

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %102, %72
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @NULL_TREE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @TREE_VALUE(i64 %79)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @TREE_VALUE(i64 %81)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @comp_except_types(i64 %83, i64 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %78
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i64, i64* %8, align 8
  %97 = call i64 @TREE_CHAIN(i64 %96)
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %95, %92, %88
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %105

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %8, align 8
  %104 = call i64 @TREE_CHAIN(i64 %103)
  store i64 %104, i64* %8, align 8
  br label %74

105:                                              ; preds = %98, %74
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @NULL_TREE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %129

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %6, align 8
  %113 = call i64 @TREE_CHAIN(i64 %112)
  store i64 %113, i64* %6, align 8
  br label %68

114:                                              ; preds = %68
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @NULL_TREE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %10, align 4
  %123 = load i64, i64* %5, align 8
  %124 = call i32 @list_length(i64 %123)
  %125 = icmp eq i32 %122, %124
  br label %126

126:                                              ; preds = %121, %117, %114
  %127 = phi i1 [ true, %117 ], [ true, %114 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %109, %61, %52, %45, %29, %16
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @comp_except_types(i64, i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @list_length(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
