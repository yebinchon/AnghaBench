; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_tree_if_convert_cond_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_tree_if_convert_cond_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@COND_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i32, i32, i32*)* @tree_if_convert_cond_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_if_convert_cond_expr(%struct.loop* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @COND_EXPR, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @COND_EXPR_COND(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bb_for_stmt(i32 %21)
  %23 = call i32 @extract_true_false_edges_from_block(i32 %22, i32* %11, i32* %12)
  %24 = load %struct.loop*, %struct.loop** %5, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @unshare_expr(i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @add_to_dst_predicate_list(%struct.loop* %24, i32 %25, i32 %26, i32 %28, i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @unshare_expr(i32 %31)
  %33 = call i32 @invert_truthvalue(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.loop*, %struct.loop** %5, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @add_to_dst_predicate_list(%struct.loop* %34, i32 %35, i32 %36, i32 %37, i32* %38)
  %40 = load %struct.loop*, %struct.loop** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @bb_for_stmt(i32 %41)
  %43 = call i32 @bb_with_exit_edge_p(%struct.loop* %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @bsi_remove(i32* %46, i32 1)
  %48 = load i32, i32* @NULL_TREE, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %4
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @COND_EXPR_COND(i32) #1

declare dso_local i32 @extract_true_false_edges_from_block(i32, i32*, i32*) #1

declare dso_local i32 @bb_for_stmt(i32) #1

declare dso_local i32 @add_to_dst_predicate_list(%struct.loop*, i32, i32, i32, i32*) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i32 @invert_truthvalue(i32) #1

declare dso_local i32 @bb_with_exit_edge_p(%struct.loop*, i32) #1

declare dso_local i32 @bsi_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
