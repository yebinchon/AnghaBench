; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_execute_ipa_pass_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_passes.c_execute_ipa_pass_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32*, i64, %struct.cgraph_node* }
%struct.tree_opt_pass = type { %struct.tree_opt_pass*, i64 }

@cgraph_nodes = common dso_local global %struct.cgraph_node* null, align 8
@current_function_decl = common dso_local global i32* null, align 8
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execute_ipa_pass_list(%struct.tree_opt_pass* %0) #0 {
  %2 = alloca %struct.tree_opt_pass*, align 8
  %3 = alloca %struct.cgraph_node*, align 8
  store %struct.tree_opt_pass* %0, %struct.tree_opt_pass** %2, align 8
  br label %4

4:                                                ; preds = %52, %1
  %5 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %6 = call i64 @execute_one_pass(%struct.tree_opt_pass* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %4
  %9 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %10 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** @cgraph_nodes, align 8
  store %struct.cgraph_node* %14, %struct.cgraph_node** %3, align 8
  br label %15

15:                                               ; preds = %43, %13
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %17 = icmp ne %struct.cgraph_node* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %20 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %25 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @DECL_STRUCT_FUNCTION(i32* %26)
  %28 = call i32 @push_cfun(i32 %27)
  %29 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %30 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** @current_function_decl, align 8
  %32 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %33 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @execute_pass_list(i64 %34)
  %36 = load i32, i32* @CDI_DOMINATORS, align 4
  %37 = call i32 @free_dominance_info(i32 %36)
  %38 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %39 = call i32 @free_dominance_info(i32 %38)
  store i32* null, i32** @current_function_decl, align 8
  %40 = call i32 (...) @pop_cfun()
  %41 = call i32 (...) @ggc_collect()
  br label %42

42:                                               ; preds = %23, %18
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %45 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %44, i32 0, i32 2
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %45, align 8
  store %struct.cgraph_node* %46, %struct.cgraph_node** %3, align 8
  br label %15

47:                                               ; preds = %15
  br label %48

48:                                               ; preds = %47, %8, %4
  %49 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %50 = getelementptr inbounds %struct.tree_opt_pass, %struct.tree_opt_pass* %49, i32 0, i32 0
  %51 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %50, align 8
  store %struct.tree_opt_pass* %51, %struct.tree_opt_pass** %2, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load %struct.tree_opt_pass*, %struct.tree_opt_pass** %2, align 8
  %54 = icmp ne %struct.tree_opt_pass* %53, null
  br i1 %54, label %4, label %55

55:                                               ; preds = %52
  ret void
}

declare dso_local i64 @execute_one_pass(%struct.tree_opt_pass*) #1

declare dso_local i32 @push_cfun(i32) #1

declare dso_local i32 @DECL_STRUCT_FUNCTION(i32*) #1

declare dso_local i32 @execute_pass_list(i64) #1

declare dso_local i32 @free_dominance_info(i32) #1

declare dso_local i32 @pop_cfun(...) #1

declare dso_local i32 @ggc_collect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
