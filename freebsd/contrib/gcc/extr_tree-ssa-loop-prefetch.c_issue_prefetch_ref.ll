; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_issue_prefetch_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_issue_prefetch_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ref = type { i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issued prefetch for %p.\0A\00", align 1
@ptr_type_node = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@integer_zero_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_PREFETCH = common dso_local global i64 0, align 8
@BSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ref*, i32, i32)* @issue_prefetch_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @issue_prefetch_ref(%struct.mem_ref* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mem_ref* %0, %struct.mem_ref** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i64, i64* @dump_file, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32, i32* @dump_flags, align 4
  %20 = load i32, i32* @TDF_DETAILS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i64, i64* @dump_file, align 8
  %25 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %26 = bitcast %struct.mem_ref* %25 to i8*
  %27 = call i32 @fprintf(i64 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %23, %18, %3
  %29 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %30 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bsi_for_stmt(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %35 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %33, %36
  %38 = sub i32 %37, 1
  %39 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %40 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = udiv i32 %38, %41
  store i32 %42, i32* %14, align 4
  %43 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %44 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ptr_type_node, align 4
  %47 = call i32 @build_fold_addr_expr_with_type(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @unshare_expr(i32 %48)
  %50 = call i32 @force_gimple_operand_bsi(i32* %13, i32 %49, i32 1, i32* null)
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %105, %28
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %108

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %59 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul i32 %57, %60
  %62 = add i32 %56, %61
  %63 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %64 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul i32 %62, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @PLUS_EXPR, align 4
  %70 = load i32, i32* @ptr_type_node, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @ptr_type_node, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @build_int_cst(i32 %72, i32 %73)
  %75 = call i32 @fold_build2(i32 %69, i32 %70, i32 %71, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @unshare_expr(i32 %76)
  %78 = call i32 @force_gimple_operand_bsi(i32* %13, i32 %77, i32 1, i32* null)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.mem_ref*, %struct.mem_ref** %4, align 8
  %80 = getelementptr inbounds %struct.mem_ref, %struct.mem_ref* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %55
  %84 = load i32, i32* @integer_one_node, align 4
  br label %87

85:                                               ; preds = %55
  %86 = load i32, i32* @integer_zero_node, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* @NULL_TREE, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @NULL_TREE, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @NULL_TREE, align 4
  %94 = call i32 @tree_cons(i32 %91, i32 %92, i32 %93)
  %95 = call i32 @tree_cons(i32 %89, i32 %90, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32*, i32** @built_in_decls, align 8
  %97 = load i64, i64* @BUILT_IN_PREFETCH, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @build_function_call_expr(i32 %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @BSI_SAME_STMT, align 4
  %104 = call i32 @bsi_insert_before(i32* %13, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %87
  %106 = load i32, i32* %15, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %51

108:                                              ; preds = %51
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i8*) #1

declare dso_local i32 @bsi_for_stmt(i32) #1

declare dso_local i32 @build_fold_addr_expr_with_type(i32, i32) #1

declare dso_local i32 @force_gimple_operand_bsi(i32*, i32, i32, i32*) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

declare dso_local i32 @bsi_insert_before(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
