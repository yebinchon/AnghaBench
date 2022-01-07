; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_varpool_remove_unreferenced_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_varpool_remove_unreferenced_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_varpool_node = type { i64, i64, i64, %struct.cgraph_varpool_node*, i32 }

@cgraph_varpool_nodes_queue = common dso_local global %struct.cgraph_varpool_node* null, align 8
@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cgraph_varpool_remove_unreferenced_decls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_varpool_remove_unreferenced_decls() #0 {
  %1 = alloca %struct.cgraph_varpool_node*, align 8
  %2 = alloca %struct.cgraph_varpool_node*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_nodes_queue, align 8
  store %struct.cgraph_varpool_node* %4, %struct.cgraph_varpool_node** %2, align 8
  %5 = call i32 (...) @cgraph_varpool_reset_queue()
  %6 = load i64, i64* @errorcount, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @sorrycount, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %0
  br label %60

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %55, %12
  %14 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %15 = icmp ne %struct.cgraph_varpool_node* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %18 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %3, align 4
  %20 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %21 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %20, i32 0, i32 3
  %22 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %21, align 8
  store %struct.cgraph_varpool_node* %22, %struct.cgraph_varpool_node** %1, align 8
  %23 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %24 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %26 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %16
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @DECL_ASSEMBLER_NAME_SET_P(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @DECL_ASSEMBLER_NAME(i32 %34)
  %36 = call i64 @TREE_SYMBOL_REFERENCED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %40 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @decide_is_variable_needed(%struct.cgraph_varpool_node* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = call i64 @DECL_RTL_SET_P(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %43, %38, %33
  %53 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %2, align 8
  %54 = call i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node* %53)
  br label %55

55:                                               ; preds = %52, %48, %16
  %56 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %1, align 8
  store %struct.cgraph_varpool_node* %56, %struct.cgraph_varpool_node** %2, align 8
  br label %13

57:                                               ; preds = %13
  %58 = call i32 (...) @finish_aliases_1()
  %59 = call i32 (...) @cgraph_varpool_analyze_pending_decls()
  br label %60

60:                                               ; preds = %57, %11
  ret void
}

declare dso_local i32 @cgraph_varpool_reset_queue(...) #1

declare dso_local i64 @DECL_ASSEMBLER_NAME_SET_P(i32) #1

declare dso_local i64 @TREE_SYMBOL_REFERENCED(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i64 @decide_is_variable_needed(%struct.cgraph_varpool_node*, i32) #1

declare dso_local i64 @DECL_RTL_SET_P(i32) #1

declare dso_local i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node*) #1

declare dso_local i32 @finish_aliases_1(...) #1

declare dso_local i32 @cgraph_varpool_analyze_pending_decls(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
