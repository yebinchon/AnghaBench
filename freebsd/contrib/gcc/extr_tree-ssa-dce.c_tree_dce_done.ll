; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_tree_dce_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dce.c_tree_dce_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_basic_block = common dso_local global i32 0, align 4
@control_dependence_map = common dso_local global i32* null, align 8
@visited_control_parents = common dso_local global i32 0, align 4
@last_stmt_necessary = common dso_local global i32 0, align 4
@processed = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@worklist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tree_dce_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_dce_done(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %18, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @last_basic_block, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i32*, i32** @control_dependence_map, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BITMAP_FREE(i32 %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load i32*, i32** @control_dependence_map, align 8
  %23 = call i32 @free(i32* %22)
  %24 = load i32, i32* @visited_control_parents, align 4
  %25 = call i32 @sbitmap_free(i32 %24)
  %26 = load i32, i32* @last_stmt_necessary, align 4
  %27 = call i32 @sbitmap_free(i32 %26)
  br label %28

28:                                               ; preds = %21, %1
  %29 = load i32, i32* @processed, align 4
  %30 = call i32 @sbitmap_free(i32 %29)
  %31 = load i32, i32* @tree, align 4
  %32 = load i32, i32* @heap, align 4
  %33 = load i32, i32* @worklist, align 4
  %34 = call i32 @VEC_free(i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @sbitmap_free(i32) #1

declare dso_local i32 @VEC_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
