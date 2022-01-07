; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_decl_cache_locals.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_decl_cache_locals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mf_cache_shift_decl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"__mf_lookup_shift_l\00", align 1
@mf_cache_shift_decl_l = common dso_local global i32 0, align 4
@mf_cache_mask_decl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"__mf_lookup_mask_l\00", align 1
@mf_cache_mask_decl_l = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@ENTRY_BLOCK_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mf_decl_cache_locals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mf_decl_cache_locals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @mf_cache_shift_decl, align 4
  %6 = call i32 @TREE_TYPE(i32 %5)
  %7 = call i32 @create_tmp_var(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @mf_mark(i32 %7)
  store i32 %8, i32* @mf_cache_shift_decl_l, align 4
  %9 = load i32, i32* @mf_cache_mask_decl, align 4
  %10 = call i32 @TREE_TYPE(i32 %9)
  %11 = call i32 @create_tmp_var(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @mf_mark(i32 %11)
  store i32 %12, i32* @mf_cache_mask_decl_l, align 4
  %13 = load i32, i32* @MODIFY_EXPR, align 4
  %14 = load i32, i32* @mf_cache_shift_decl_l, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = load i32, i32* @mf_cache_shift_decl_l, align 4
  %17 = load i32, i32* @mf_cache_shift_decl, align 4
  %18 = call i32 @build2(i32 %13, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @current_function_decl, align 4
  %21 = call i32 @DECL_SOURCE_LOCATION(i32 %20)
  %22 = call i32 @SET_EXPR_LOCATION(i32 %19, i32 %21)
  %23 = call i32 @gimplify_to_stmt_list(i32* %1)
  %24 = load i32, i32* %1, align 4
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* @MODIFY_EXPR, align 4
  %26 = load i32, i32* @mf_cache_mask_decl_l, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  %28 = load i32, i32* @mf_cache_mask_decl_l, align 4
  %29 = load i32, i32* @mf_cache_mask_decl, align 4
  %30 = call i32 @build2(i32 %25, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @current_function_decl, align 4
  %33 = call i32 @DECL_SOURCE_LOCATION(i32 %32)
  %34 = call i32 @SET_EXPR_LOCATION(i32 %31, i32 %33)
  %35 = call i32 @gimplify_to_stmt_list(i32* %1)
  %36 = load i32, i32* %1, align 4
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @tsi_start(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %49, %0
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @tsi_end_p(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @tsi_stmt(i32 %45)
  %47 = load i32, i32* @ENTRY_BLOCK_PTR, align 4
  %48 = call i32 @insert_edge_copies(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44
  %50 = call i32 @tsi_next(i32* %4)
  br label %39

51:                                               ; preds = %39
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @tsi_start(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %64, %51
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @tsi_end_p(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @tsi_stmt(i32 %60)
  %62 = load i32, i32* @ENTRY_BLOCK_PTR, align 4
  %63 = call i32 @insert_edge_copies(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59
  %65 = call i32 @tsi_next(i32* %4)
  br label %54

66:                                               ; preds = %54
  %67 = call i32 (...) @bsi_commit_edge_inserts()
  ret void
}

declare dso_local i32 @mf_mark(i32) #1

declare dso_local i32 @create_tmp_var(i32, i8*) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @SET_EXPR_LOCATION(i32, i32) #1

declare dso_local i32 @DECL_SOURCE_LOCATION(i32) #1

declare dso_local i32 @gimplify_to_stmt_list(i32*) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @insert_edge_copies(i32, i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

declare dso_local i32 @bsi_commit_edge_inserts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
