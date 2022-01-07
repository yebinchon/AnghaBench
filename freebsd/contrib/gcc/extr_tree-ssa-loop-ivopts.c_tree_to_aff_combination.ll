; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_tree_to_aff_combination.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_tree_to_aff_combination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.affine_tree_combination = type { i32 }

@BITS_PER_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.affine_tree_combination*)* @tree_to_aff_combination to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_to_aff_combination(i32 %0, i32 %1, %struct.affine_tree_combination* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.affine_tree_combination*, align 8
  %7 = alloca %struct.affine_tree_combination, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.affine_tree_combination* %2, %struct.affine_tree_combination** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @STRIP_NOPS(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_CODE(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %105 [
    i32 132, label %22
    i32 128, label %28
    i32 131, label %28
    i32 130, label %43
    i32 129, label %59
    i32 133, label %66
  ]

22:                                               ; preds = %3
  %23 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @int_cst_value(i32 %25)
  %27 = call i32 @aff_combination_const(%struct.affine_tree_combination* %23, i32 %24, i32 %26)
  br label %111

28:                                               ; preds = %3, %3
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  call void @tree_to_aff_combination(i32 %30, i32 %31, %struct.affine_tree_combination* %32)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @TREE_OPERAND(i32 %33, i32 1)
  %35 = load i32, i32* %5, align 4
  call void @tree_to_aff_combination(i32 %34, i32 %35, %struct.affine_tree_combination* %7)
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 131
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 @aff_combination_scale(%struct.affine_tree_combination* %7, i32 -1)
  br label %40

40:                                               ; preds = %38, %28
  %41 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %42 = call i32 @aff_combination_add(%struct.affine_tree_combination* %41, %struct.affine_tree_combination* %7)
  br label %111

43:                                               ; preds = %3
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TREE_OPERAND(i32 %44, i32 1)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @TREE_CODE(i32 %46)
  %48 = icmp ne i32 %47, 132
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %106

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @TREE_OPERAND(i32 %51, i32 0)
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  call void @tree_to_aff_combination(i32 %52, i32 %53, %struct.affine_tree_combination* %54)
  %55 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @int_cst_value(i32 %56)
  %58 = call i32 @aff_combination_scale(%struct.affine_tree_combination* %55, i32 %57)
  br label %111

59:                                               ; preds = %3
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @TREE_OPERAND(i32 %60, i32 0)
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  call void @tree_to_aff_combination(i32 %61, i32 %62, %struct.affine_tree_combination* %63)
  %64 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %65 = call i32 @aff_combination_scale(%struct.affine_tree_combination* %64, i32 -1)
  br label %111

66:                                               ; preds = %3
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @TREE_OPERAND(i32 %67, i32 0)
  %69 = call i32 @get_inner_reference(i32 %68, i32* %13, i32* %12, i32* %11, i32* %14, i32* %15, i32* %16, i32 0)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @BITS_PER_UNIT, align 4
  %72 = srem i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %106

75:                                               ; preds = %66
  %76 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @BITS_PER_UNIT, align 4
  %80 = sdiv i32 %78, %79
  %81 = call i32 @aff_combination_const(%struct.affine_tree_combination* %76, i32 %77, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @build_fold_addr_expr(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @TREE_CODE(i32 %84)
  %86 = icmp eq i32 %85, 133
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @aff_combination_add_elt(%struct.affine_tree_combination* %88, i32 %89, i32 1)
  br label %96

91:                                               ; preds = %75
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %5, align 4
  call void @tree_to_aff_combination(i32 %92, i32 %93, %struct.affine_tree_combination* %7)
  %94 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %95 = call i32 @aff_combination_add(%struct.affine_tree_combination* %94, %struct.affine_tree_combination* %7)
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %5, align 4
  call void @tree_to_aff_combination(i32 %100, i32 %101, %struct.affine_tree_combination* %7)
  %102 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %103 = call i32 @aff_combination_add(%struct.affine_tree_combination* %102, %struct.affine_tree_combination* %7)
  br label %104

104:                                              ; preds = %99, %96
  br label %111

105:                                              ; preds = %3
  br label %106

106:                                              ; preds = %105, %74, %49
  %107 = load %struct.affine_tree_combination*, %struct.affine_tree_combination** %6, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @aff_combination_elt(%struct.affine_tree_combination* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %104, %59, %50, %40, %22
  ret void
}

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @aff_combination_const(%struct.affine_tree_combination*, i32, i32) #1

declare dso_local i32 @int_cst_value(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @aff_combination_scale(%struct.affine_tree_combination*, i32) #1

declare dso_local i32 @aff_combination_add(%struct.affine_tree_combination*, %struct.affine_tree_combination*) #1

declare dso_local i32 @get_inner_reference(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @build_fold_addr_expr(i32) #1

declare dso_local i32 @aff_combination_add_elt(%struct.affine_tree_combination*, i32, i32) #1

declare dso_local i32 @aff_combination_elt(%struct.affine_tree_combination*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
