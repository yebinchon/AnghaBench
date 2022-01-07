; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_base_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_base_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i64 0, align 8
@ptr_type_node = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @determine_base_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_base_object(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @NOP_EXPR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @TREE_CODE(i32 %17)
  %19 = load i64, i64* @CONVERT_EXPR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TREE_OPERAND(i32 %22, i32 0)
  %24 = call i32 @determine_base_object(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %95

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  %28 = call i32 @POINTER_TYPE_P(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @NULL_TREE, align 4
  store i32 %31, i32* %2, align 4
  br label %95

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %91 [
    i32 130, label %34
    i32 131, label %36
    i32 128, label %59
    i32 129, label %59
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @NULL_TREE, align 4
  store i32 %35, i32* %2, align 4
  br label %95

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @TREE_OPERAND(i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @get_base_address(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* %2, align 4
  br label %95

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @TREE_CODE(i32 %46)
  %48 = load i64, i64* @INDIRECT_REF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 0)
  %53 = call i32 @determine_base_object(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %95

54:                                               ; preds = %45
  %55 = load i32, i32* @ptr_type_node, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @build_fold_addr_expr(i32 %56)
  %58 = call i32 @fold_convert(i32 %55, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %95

59:                                               ; preds = %32, %32
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @TREE_OPERAND(i32 %60, i32 0)
  %62 = call i32 @determine_base_object(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 1)
  %65 = call i32 @determine_base_object(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %95

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 128
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  br label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @NEGATE_EXPR, align 4
  %80 = load i32, i32* @ptr_type_node, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @fold_build1(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi i32 [ %77, %76 ], [ %82, %78 ]
  store i32 %84, i32* %2, align 4
  br label %95

85:                                               ; preds = %70
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @ptr_type_node, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @fold_build2(i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %32
  %92 = load i32, i32* @ptr_type_node, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @fold_convert(i32 %92, i32 %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %85, %83, %68, %54, %50, %43, %34, %30, %21
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @get_base_address(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @build_fold_addr_expr(i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
