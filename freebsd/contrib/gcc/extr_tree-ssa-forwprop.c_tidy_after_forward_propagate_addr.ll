; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-forwprop.c_tidy_after_forward_propagate_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-forwprop.c_tidy_after_forward_propagate_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_changed = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tidy_after_forward_propagate_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tidy_after_forward_propagate_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @maybe_clean_or_replace_eh_stmt(i32 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @bb_for_stmt(i32 %8)
  %10 = call i64 @tree_purge_dead_eh_edges(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* @cfg_changed, align 4
  br label %13

13:                                               ; preds = %12, %7, %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @TREE_OPERAND(i32 %14, i32 1)
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @ADDR_EXPR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 1)
  %22 = call i32 @recompute_tree_invariant_for_addr_expr(i32 %21)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @mark_new_vars_to_rename(i32 %24)
  ret void
}

declare dso_local i64 @maybe_clean_or_replace_eh_stmt(i32, i32) #1

declare dso_local i64 @tree_purge_dead_eh_edges(i32) #1

declare dso_local i32 @bb_for_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @recompute_tree_invariant_for_addr_expr(i32) #1

declare dso_local i32 @mark_new_vars_to_rename(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
