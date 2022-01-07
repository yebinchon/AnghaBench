; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_mark_decl_referenced.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_mark_decl_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cgraph_varpool_node = type { i32 }

@FUNCTION_DECL = common dso_local global i64 0, align 8
@cgraph_global_info_ready = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_decl_referenced(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca %struct.cgraph_varpool_node*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @FUNCTION_DECL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.cgraph_node* @cgraph_node(i32 %10)
  store %struct.cgraph_node* %11, %struct.cgraph_node** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @DECL_EXTERNAL(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %17 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i32, i32* @cgraph_global_info_ready, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %21, %15
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %32 = call i32 @cgraph_mark_needed_node(%struct.cgraph_node* %31)
  br label %33

33:                                               ; preds = %30, %24, %9
  br label %47

34:                                               ; preds = %1
  %35 = load i32, i32* %2, align 4
  %36 = call i64 @TREE_CODE(i32 %35)
  %37 = load i64, i64* @VAR_DECL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %2, align 4
  %41 = call %struct.cgraph_varpool_node* @cgraph_varpool_node(i32 %40)
  store %struct.cgraph_varpool_node* %41, %struct.cgraph_varpool_node** %4, align 8
  %42 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %43 = call i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node* %42)
  %44 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %4, align 8
  %45 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %46, %33
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local %struct.cgraph_node* @cgraph_node(i32) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

declare dso_local i32 @cgraph_mark_needed_node(%struct.cgraph_node*) #1

declare dso_local %struct.cgraph_varpool_node* @cgraph_varpool_node(i32) #1

declare dso_local i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
