; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_omp_single_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_lower_omp_single_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32* }

@.str = private unnamed_addr constant [12 x i8] c".omp_copy_o\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c".omp_copy_i\00", align 1
@built_in_decls = common dso_local global i32** null, align 8
@BUILT_IN_GOMP_SINGLE_COPY_START = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@COND_EXPR = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i32 0, align 4
@BUILT_IN_GOMP_SINGLE_COPY_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, %struct.TYPE_4__*)* @lower_omp_single_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_omp_single_copy(i32* %0, i32** %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i8* @create_tmp_var(i32* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32* @build_pointer_type(i32* %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @create_tmp_var(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = call i32* (...) @create_artificial_label()
  store i32* %28, i32** %10, align 8
  %29 = call i32* (...) @create_artificial_label()
  store i32* %29, i32** %11, align 8
  %30 = call i32* (...) @create_artificial_label()
  store i32* %30, i32** %12, align 8
  %31 = load i32**, i32*** @built_in_decls, align 8
  %32 = load i64, i64* @BUILT_IN_GOMP_SINGLE_COPY_START, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @build_function_call_expr(i32* %35, i32* null)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @fold_convert(i32* %37, i32* %38)
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* @MODIFY_EXPR, align 4
  %41 = load i32, i32* @void_type_node, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @build2(i32 %40, i32 %41, i8* %44, i32* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32**, i32*** %5, align 8
  %49 = call i32 @gimplify_and_add(i32* %47, i32** %48)
  %50 = load i32, i32* @EQ_EXPR, align 4
  %51 = load i32, i32* @boolean_type_node, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @build_int_cst(i32* %55, i32 0)
  %57 = call i32* @build2(i32 %50, i32 %51, i8* %54, i32* %56)
  store i32* %57, i32** %8, align 8
  %58 = load i32, i32* @COND_EXPR, align 4
  %59 = load i32, i32* @void_type_node, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32* @build_and_jump(i32** %10)
  %62 = call i32* @build_and_jump(i32** %11)
  %63 = call i32* @build3(i32 %58, i32 %59, i32* %60, i32* %61, i32* %62)
  store i32* %63, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32**, i32*** %5, align 8
  %66 = call i32 @gimplify_and_add(i32* %64, i32** %65)
  %67 = load i32, i32* @LABEL_EXPR, align 4
  %68 = load i32, i32* @void_type_node, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = call i32* @build1(i32 %67, i32 %68, i32* %69)
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32**, i32*** %5, align 8
  %73 = call i32 @gimplify_and_add(i32* %71, i32** %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32* @OMP_SINGLE_BODY(i32* %74)
  %76 = load i32**, i32*** %5, align 8
  %77 = call i32 @append_to_statement_list(i32* %75, i32** %76)
  store i32* null, i32** %13, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @OMP_SINGLE_CLAUSES(i32* %78)
  %80 = load i32**, i32*** %5, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = call i32 @lower_copyprivate_clauses(i32 %79, i32** %80, i32** %13, %struct.TYPE_4__* %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32* @build_fold_addr_expr(i8* %85)
  store i32* %86, i32** %8, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32* @tree_cons(i32* null, i32* %87, i32* null)
  store i32* %88, i32** %9, align 8
  %89 = load i32**, i32*** @built_in_decls, align 8
  %90 = load i64, i64* @BUILT_IN_GOMP_SINGLE_COPY_END, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32* @build_function_call_expr(i32* %93, i32* %94)
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32**, i32*** %5, align 8
  %98 = call i32 @gimplify_and_add(i32* %96, i32** %97)
  %99 = call i32* @build_and_jump(i32** %12)
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32**, i32*** %5, align 8
  %102 = call i32 @gimplify_and_add(i32* %100, i32** %101)
  %103 = load i32, i32* @LABEL_EXPR, align 4
  %104 = load i32, i32* @void_type_node, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = call i32* @build1(i32 %103, i32 %104, i32* %105)
  store i32* %106, i32** %8, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32**, i32*** %5, align 8
  %109 = call i32 @gimplify_and_add(i32* %107, i32** %108)
  %110 = load i32*, i32** %13, align 8
  %111 = load i32**, i32*** %5, align 8
  %112 = call i32 @append_to_statement_list(i32* %110, i32** %111)
  %113 = load i32, i32* @LABEL_EXPR, align 4
  %114 = load i32, i32* @void_type_node, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = call i32* @build1(i32 %113, i32 %114, i32* %115)
  store i32* %116, i32** %8, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i32**, i32*** %5, align 8
  %119 = call i32 @gimplify_and_add(i32* %117, i32** %118)
  ret void
}

declare dso_local i8* @create_tmp_var(i32*, i8*) #1

declare dso_local i32* @build_pointer_type(i32*) #1

declare dso_local i32* @create_artificial_label(...) #1

declare dso_local i32* @build_function_call_expr(i32*, i32*) #1

declare dso_local i32* @fold_convert(i32*, i32*) #1

declare dso_local i32* @build2(i32, i32, i8*, i32*) #1

declare dso_local i32 @gimplify_and_add(i32*, i32**) #1

declare dso_local i32* @build_int_cst(i32*, i32) #1

declare dso_local i32* @build3(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @build_and_jump(i32**) #1

declare dso_local i32* @build1(i32, i32, i32*) #1

declare dso_local i32 @append_to_statement_list(i32*, i32**) #1

declare dso_local i32* @OMP_SINGLE_BODY(i32*) #1

declare dso_local i32 @lower_copyprivate_clauses(i32, i32**, i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @OMP_SINGLE_CLAUSES(i32*) #1

declare dso_local i32* @build_fold_addr_expr(i8*) #1

declare dso_local i32* @tree_cons(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
