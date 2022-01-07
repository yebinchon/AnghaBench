; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_break_out_target_exprs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_break_out_target_exprs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@break_out_target_exprs.target_remap_count = internal global i32 0, align 4
@break_out_target_exprs.target_remap = internal global i32* null, align 8
@splay_tree_compare_pointers = common dso_local global i32 0, align 4
@bot_manip = common dso_local global i32 0, align 4
@bot_replace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @break_out_target_exprs(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @break_out_target_exprs.target_remap_count, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @break_out_target_exprs.target_remap_count, align 4
  %5 = icmp ne i32 %3, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @splay_tree_compare_pointers, align 4
  %8 = call i32* @splay_tree_new(i32 %7, i32* null, i32* null)
  store i32* %8, i32** @break_out_target_exprs.target_remap, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @bot_manip, align 4
  %11 = load i32*, i32** @break_out_target_exprs.target_remap, align 8
  %12 = call i32 @walk_tree(i32* %2, i32 %10, i32* %11, i32* null)
  %13 = load i32, i32* @bot_replace, align 4
  %14 = load i32*, i32** @break_out_target_exprs.target_remap, align 8
  %15 = call i32 @walk_tree(i32* %2, i32 %13, i32* %14, i32* null)
  %16 = load i32, i32* @break_out_target_exprs.target_remap_count, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @break_out_target_exprs.target_remap_count, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = load i32*, i32** @break_out_target_exprs.target_remap, align 8
  %21 = call i32 @splay_tree_delete(i32* %20)
  store i32* null, i32** @break_out_target_exprs.target_remap, align 8
  br label %22

22:                                               ; preds = %19, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32* @splay_tree_new(i32, i32*, i32*) #1

declare dso_local i32 @walk_tree(i32*, i32, i32*, i32*) #1

declare dso_local i32 @splay_tree_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
