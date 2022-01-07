; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_varpool_output_debug_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_cgraph_varpool_output_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_varpool_node = type { %struct.cgraph_varpool_node*, i32 }
%struct.TYPE_2__ = type { i32 (i32)* }

@TV_SYMOUT = common dso_local global i32 0, align 4
@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@cgraph_varpool_assembled_nodes_queue = common dso_local global %struct.cgraph_varpool_node* null, align 8
@BLOCK = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@debug_hooks = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cgraph_varpool_output_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgraph_varpool_output_debug_info() #0 {
  %1 = alloca %struct.cgraph_varpool_node*, align 8
  %2 = load i32, i32* @TV_SYMOUT, align 4
  %3 = call i32 @timevar_push(i32 %2)
  %4 = load i64, i64* @errorcount, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %57

6:                                                ; preds = %0
  %7 = load i64, i64* @sorrycount, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %50, %9
  %11 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_assembled_nodes_queue, align 8
  %12 = icmp ne %struct.cgraph_varpool_node* %11, null
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  %14 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** @cgraph_varpool_assembled_nodes_queue, align 8
  store %struct.cgraph_varpool_node* %14, %struct.cgraph_varpool_node** %1, align 8
  %15 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %1, align 8
  %16 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @DECL_CONTEXT(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %13
  %21 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %1, align 8
  %22 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @DECL_CONTEXT(i32 %23)
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @BLOCK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %1, align 8
  %30 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @DECL_CONTEXT(i32 %31)
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @FUNCTION_DECL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %28, %20
  %37 = load i64, i64* @errorcount, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i64, i64* @sorrycount, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %1, align 8
  %47 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %45(i32 %48)
  br label %50

50:                                               ; preds = %42, %39, %36, %28, %13
  %51 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %1, align 8
  %52 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %51, i32 0, i32 0
  %53 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %52, align 8
  store %struct.cgraph_varpool_node* %53, %struct.cgraph_varpool_node** @cgraph_varpool_assembled_nodes_queue, align 8
  %54 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %1, align 8
  %55 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %54, i32 0, i32 0
  store %struct.cgraph_varpool_node* null, %struct.cgraph_varpool_node** %55, align 8
  br label %10

56:                                               ; preds = %10
  br label %57

57:                                               ; preds = %56, %6, %0
  %58 = load i32, i32* @TV_SYMOUT, align 4
  %59 = call i32 @timevar_pop(i32 %58)
  ret void
}

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i64 @DECL_CONTEXT(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
