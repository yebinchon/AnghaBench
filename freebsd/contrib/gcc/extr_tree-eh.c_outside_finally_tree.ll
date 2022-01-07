; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_outside_finally_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_outside_finally_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.finally_tree_node = type { i32, i32 }

@finally_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @outside_finally_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @outside_finally_tree(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.finally_tree_node, align 4
  %7 = alloca %struct.finally_tree_node*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.finally_tree_node, %struct.finally_tree_node* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @finally_tree, align 4
  %12 = call i64 @htab_find(i32 %11, %struct.finally_tree_node* %6)
  %13 = inttoptr i64 %12 to %struct.finally_tree_node*
  store %struct.finally_tree_node* %13, %struct.finally_tree_node** %7, align 8
  %14 = load %struct.finally_tree_node*, %struct.finally_tree_node** %7, align 8
  %15 = icmp ne %struct.finally_tree_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %26

17:                                               ; preds = %8
  %18 = load %struct.finally_tree_node*, %struct.finally_tree_node** %7, align 8
  %19 = getelementptr inbounds %struct.finally_tree_node, %struct.finally_tree_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %8, label %25

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @htab_find(i32, %struct.finally_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
