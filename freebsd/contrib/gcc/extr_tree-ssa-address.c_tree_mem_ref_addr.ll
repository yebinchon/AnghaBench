; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_tree_mem_ref_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-address.c_tree_mem_ref_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tree_mem_ref_addr(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TMR_STEP(i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TMR_OFFSET(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TMR_SYMBOL(i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TMR_BASE(i64 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* @NULL_TREE, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* @NULL_TREE, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* @current_function_decl, align 4
  %29 = call i64 @build_addr(i64 %27, i32 %28)
  %30 = call i64 @fold_convert(i64 %26, i64 %29)
  store i64 %30, i64* %11, align 8
  br label %45

31:                                               ; preds = %2
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @TREE_TYPE(i64 %35)
  %37 = call i64 @POINTER_TYPE_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @fold_convert(i64 %40, i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* @NULL_TREE, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %39, %34, %31
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @TMR_INDEX(i64 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @MULT_EXPR, align 4
  %55 = load i64, i64* @sizetype, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @fold_build2(i32 %54, i64 %55, i64 %56, i64 %57)
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %59, %45
  %62 = load i64, i64* %10, align 8
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i64, i64* %12, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @PLUS_EXPR, align 4
  %70 = load i64, i64* @sizetype, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @fold_build2(i32 %69, i64 %70, i64 %71, i64 %72)
  store i64 %73, i64* %12, align 8
  br label %76

74:                                               ; preds = %65
  %75 = load i64, i64* %6, align 8
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %74, %68
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @zero_p(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %12, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @PLUS_EXPR, align 4
  %86 = load i64, i64* @sizetype, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @fold_build2(i32 %85, i64 %86, i64 %87, i64 %88)
  store i64 %89, i64* %12, align 8
  br label %92

90:                                               ; preds = %81
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %90, %84
  br label %93

93:                                               ; preds = %92, %77
  %94 = load i64, i64* %12, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i64 @fold_convert(i64 %97, i64 %98)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* @PLUS_EXPR, align 4
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @fold_build2(i32 %103, i64 %104, i64 %105, i64 %106)
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %102, %96
  br label %118

109:                                              ; preds = %93
  %110 = load i64, i64* %11, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %5, align 8
  br label %117

114:                                              ; preds = %109
  %115 = load i64, i64* %3, align 8
  %116 = call i64 @build_int_cst(i64 %115, i32 0)
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %114, %112
  br label %118

118:                                              ; preds = %117, %108
  %119 = load i64, i64* %5, align 8
  ret i64 %119
}

declare dso_local i64 @TMR_STEP(i64) #1

declare dso_local i64 @TMR_OFFSET(i64) #1

declare dso_local i64 @TMR_SYMBOL(i64) #1

declare dso_local i64 @TMR_BASE(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @build_addr(i64, i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TMR_INDEX(i64) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i32 @zero_p(i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
