; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_number_of_iterations_le.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_number_of_iterations_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.tree_niter_desc = type { i8* }

@NE_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i8* null, align 8
@TRUTH_AND_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.tree_niter_desc*, i32)* @number_of_iterations_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @number_of_iterations_le(i8* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, %struct.tree_niter_desc* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.tree_niter_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store %struct.tree_niter_desc* %3, %struct.tree_niter_desc** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %5
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @nonzero_p(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i32, i32* @NE_EXPR, align 4
  %23 = load i8*, i8** @boolean_type_node, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @TYPE_MAX_VALUE(i8* %27)
  %29 = call i8* @fold_build2(i32 %22, i8* %23, i8* %26, i8* %28)
  store i8* %29, i8** %12, align 8
  br label %39

30:                                               ; preds = %15
  %31 = load i32, i32* @NE_EXPR, align 4
  %32 = load i8*, i8** @boolean_type_node, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @TYPE_MIN_VALUE(i8* %36)
  %38 = call i8* @fold_build2(i32 %31, i8* %32, i8* %35, i8* %37)
  store i8* %38, i8** %12, align 8
  br label %39

39:                                               ; preds = %30, %21
  %40 = load i8*, i8** %12, align 8
  %41 = call i64 @zero_p(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %94

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = call i64 @nonzero_p(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @TRUTH_AND_EXPR, align 4
  %50 = load i8*, i8** @boolean_type_node, align 8
  %51 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %52 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i8* @fold_build2(i32 %49, i8* %50, i8* %53, i8* %54)
  %56 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %57 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %48, %44
  br label %59

59:                                               ; preds = %58, %5
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @nonzero_p(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load i32, i32* @PLUS_EXPR, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @build_int_cst(i8* %71, i32 1)
  %73 = call i8* @fold_build2(i32 %66, i8* %67, i8* %70, i8* %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %87

76:                                               ; preds = %59
  %77 = load i32, i32* @MINUS_EXPR, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @build_int_cst(i8* %82, i32 1)
  %84 = call i8* @fold_build2(i32 %77, i8* %78, i8* %81, i8* %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %76, %65
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = load %struct.tree_niter_desc*, %struct.tree_niter_desc** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @number_of_iterations_lt(i8* %88, %struct.TYPE_6__* %89, %struct.TYPE_6__* %90, %struct.tree_niter_desc* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %87, %43
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i64 @nonzero_p(i8*) #1

declare dso_local i8* @fold_build2(i32, i8*, i8*, i8*) #1

declare dso_local i8* @TYPE_MAX_VALUE(i8*) #1

declare dso_local i8* @TYPE_MIN_VALUE(i8*) #1

declare dso_local i64 @zero_p(i8*) #1

declare dso_local i8* @build_int_cst(i8*, i32) #1

declare dso_local i32 @number_of_iterations_lt(i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.tree_niter_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
