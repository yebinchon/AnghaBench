; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-iterator.c_expr_only.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-iterator.c_expr_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_statement_list_node = type { i64 }

@NULL_TREE = common dso_local global i64 0, align 8
@STATEMENT_LIST = common dso_local global i64 0, align 8
@COMPOUND_EXPR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expr_only(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tree_statement_list_node*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NULL_TREE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @NULL_TREE, align 8
  store i64 %9, i64* %2, align 8
  br label %40

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @STATEMENT_LIST, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.tree_statement_list_node* @STATEMENT_LIST_TAIL(i64 %16)
  store %struct.tree_statement_list_node* %17, %struct.tree_statement_list_node** %4, align 8
  %18 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %4, align 8
  %19 = icmp ne %struct.tree_statement_list_node* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = call %struct.tree_statement_list_node* @STATEMENT_LIST_HEAD(i64 %21)
  %23 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %4, align 8
  %24 = icmp eq %struct.tree_statement_list_node* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %4, align 8
  %27 = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %2, align 8
  br label %40

29:                                               ; preds = %20, %15
  %30 = load i64, i64* @NULL_TREE, align 8
  store i64 %30, i64* %2, align 8
  br label %40

31:                                               ; preds = %10
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @COMPOUND_EXPR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @NULL_TREE, align 8
  store i64 %37, i64* %2, align 8
  br label %40

38:                                               ; preds = %31
  %39 = load i64, i64* %3, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %36, %29, %25, %8
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local %struct.tree_statement_list_node* @STATEMENT_LIST_TAIL(i64) #1

declare dso_local %struct.tree_statement_list_node* @STATEMENT_LIST_HEAD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
