; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_inf_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_inf_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (...)* }

@NULL_TREE = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@in_gimple_form = common dso_local global i32 0, align 4
@TRUTH_NOT_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fold_inf_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_inf_compare(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = call i32 @TYPE_MODE(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @TREE_REAL_CST(i32 %17)
  %19 = call i32 @REAL_VALUE_NEGATIVE(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @swap_tree_comparison(i32 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %133 [
    i32 131, label %27
    i32 130, label %38
    i32 133, label %63
    i32 132, label %63
    i32 129, label %78
    i32 128, label %93
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @HONOR_SNANS(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @NULL_TREE, align 4
  store i32 %32, i32* %5, align 4
  br label %136

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @integer_zero_node, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @omit_one_operand(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %136

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @HONOR_NANS(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @integer_one_node, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @omit_one_operand(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %136

47:                                               ; preds = %38
  %48 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %49 = call i32 (...) %48()
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @CONTAINS_PLACEHOLDER_P(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @save_expr(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @fold_build2(i32 133, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %136

62:                                               ; preds = %51, %47
  br label %134

63:                                               ; preds = %25, %25
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @real_maxval(i32* %11, i32 %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 129, i32 131
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @TREE_TYPE(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @build_real(i32 %74, i32 %75)
  %77 = call i32 @fold_build2(i32 %70, i32 %71, i32 %72, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %136

78:                                               ; preds = %25
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @real_maxval(i32* %11, i32 %79, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 132, i32 130
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @TREE_TYPE(i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @build_real(i32 %89, i32 %90)
  %92 = call i32 @fold_build2(i32 %85, i32 %86, i32 %87, i32 %91)
  store i32 %92, i32* %5, align 4
  br label %136

93:                                               ; preds = %25
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @real_maxval(i32* %11, i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @HONOR_NANS(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 132, i32 130
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @TREE_TYPE(i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @build_real(i32 %108, i32 %109)
  %111 = call i32 @fold_build2(i32 %104, i32 %105, i32 %106, i32 %110)
  store i32 %111, i32* %5, align 4
  br label %136

112:                                              ; preds = %93
  %113 = load i32, i32* @in_gimple_form, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @NULL_TREE, align 4
  store i32 %116, i32* %5, align 4
  br label %136

117:                                              ; preds = %112
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 129, i32 131
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @TREE_TYPE(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @build_real(i32 %125, i32 %126)
  %128 = call i32 @fold_build2(i32 %121, i32 %122, i32 %123, i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* @TRUTH_NOT_EXPR, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @fold_build1(i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %5, align 4
  br label %136

133:                                              ; preds = %25
  br label %134

134:                                              ; preds = %133, %62
  %135 = load i32, i32* @NULL_TREE, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %117, %115, %100, %78, %63, %55, %42, %33, %31
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @REAL_VALUE_NEGATIVE(i32) #1

declare dso_local i32 @TREE_REAL_CST(i32) #1

declare dso_local i32 @swap_tree_comparison(i32) #1

declare dso_local i32 @HONOR_SNANS(i32) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

declare dso_local i32 @HONOR_NANS(i32) #1

declare dso_local i32 @CONTAINS_PLACEHOLDER_P(i32) #1

declare dso_local i32 @save_expr(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @real_maxval(i32*, i32, i32) #1

declare dso_local i32 @build_real(i32, i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
