; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_assert_loop_rolls_lt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_assert_loop_rolls_lt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.tree_niter_desc = type { i8*, i8* }

@boolean_true_node = common dso_local global i8* null, align 8
@MINUS_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@GE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i8* null, align 8
@LE_EXPR = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@TRUTH_OR_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.tree_niter_desc*)* @assert_loop_rolls_lt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_loop_rolls_lt(i8* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, %struct.tree_niter_desc* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.tree_niter_desc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store %struct.tree_niter_desc* %3, %struct.tree_niter_desc** %8, align 8
  %15 = load i8*, i8** @boolean_true_node, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @nonzero_p(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %4
  %22 = load i32, i32* @MINUS_EXPR, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @build_int_cst(i8* %27, i32 1)
  %29 = call i8* @fold_build2(i32 %22, i8* %23, i8* %26, i8* %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @POINTER_TYPE_P(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @PLUS_EXPR, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @TYPE_MIN_VALUE(i8* %36)
  %38 = load i8*, i8** %11, align 8
  %39 = call i8* @fold_build2(i32 %34, i8* %35, i8* %37, i8* %38)
  store i8* %39, i8** %10, align 8
  %40 = load i32, i32* @GE_EXPR, align 4
  %41 = load i8*, i8** @boolean_type_node, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @fold_build2(i32 %40, i8* %41, i8* %44, i8* %45)
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %33, %21
  %48 = load i32, i32* @MINUS_EXPR, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @fold_build2(i32 %48, i8* %49, i8* %52, i8* %53)
  store i8* %54, i8** %13, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %14, align 8
  br label %95

58:                                               ; preds = %4
  %59 = load i32, i32* @PLUS_EXPR, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* @build_int_cst(i8* %64, i32 1)
  %66 = call i8* @fold_build2(i32 %59, i8* %60, i8* %63, i8* %65)
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @POINTER_TYPE_P(i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @PLUS_EXPR, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i8* @TYPE_MAX_VALUE(i8* %73)
  %75 = load i8*, i8** %11, align 8
  %76 = call i8* @fold_build2(i32 %71, i8* %72, i8* %74, i8* %75)
  store i8* %76, i8** %10, align 8
  %77 = load i32, i32* @LE_EXPR, align 4
  %78 = load i8*, i8** @boolean_type_node, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i8* @fold_build2(i32 %77, i8* %78, i8* %81, i8* %82)
  store i8* %83, i8** %9, align 8
  br label %84

84:                                               ; preds = %70, %58
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %13, align 8
  %88 = load i32, i32* @MINUS_EXPR, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = call i8* @fold_build2(i32 %88, i8* %89, i8* %92, i8* %93)
  store i8* %94, i8** %14, align 8
  br label %95

95:                                               ; preds = %84, %47
  %96 = load i32, i32* @GT_EXPR, align 4
  %97 = load i8*, i8** @boolean_type_node, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = call i8* @fold_build2(i32 %96, i8* %97, i8* %98, i8* %99)
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i64 @nonzero_p(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %106 = load i8*, i8** @boolean_type_node, align 8
  %107 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %8, align 8
  %108 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = call i8* @fold_build2(i32 %105, i8* %106, i8* %109, i8* %110)
  %112 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %8, align 8
  %113 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %104, %95
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @zero_p(i8* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @TRUTH_OR_EXPR, align 4
  %120 = load i8*, i8** @boolean_type_node, align 8
  %121 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %8, align 8
  %122 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = call i8* @fold_build2(i32 %119, i8* %120, i8* %123, i8* %124)
  %126 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %8, align 8
  %127 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %118, %114
  ret void
}

declare dso_local i64 @nonzero_p(i8*) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i8*) #1

declare dso_local i8* @build_int_cst(i8*, i32) #1

declare dso_local i32 @POINTER_TYPE_P(i8*) #1

declare dso_local i8* @TYPE_MIN_VALUE(i8*) #1

declare dso_local i8* @TYPE_MAX_VALUE(i8*) #1

declare dso_local i32 @zero_p(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
