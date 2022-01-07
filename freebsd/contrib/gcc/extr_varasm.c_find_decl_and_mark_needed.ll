; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_find_decl_and_mark_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_find_decl_and_mark_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { i32 }
%struct.cgraph_varpool_node = type { i32 }

@FUNCTION_DECL = common dso_local global i64 0, align 8
@cgraph_global_info_ready = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @find_decl_and_mark_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_decl_and_mark_needed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgraph_node*, align 8
  %7 = alloca %struct.cgraph_varpool_node*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.cgraph_node* null, %struct.cgraph_node** %6, align 8
  store %struct.cgraph_varpool_node* null, %struct.cgraph_varpool_node** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @TREE_CODE(i32 %8)
  %10 = load i64, i64* @FUNCTION_DECL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.cgraph_node* @cgraph_node_for_asm(i32 %13)
  store %struct.cgraph_node* %14, %struct.cgraph_node** %6, align 8
  %15 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %16 = icmp eq %struct.cgraph_node* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.cgraph_varpool_node* @cgraph_varpool_node_for_asm(i32 %18)
  store %struct.cgraph_varpool_node* %19, %struct.cgraph_varpool_node** %7, align 8
  br label %20

20:                                               ; preds = %17, %12
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.cgraph_varpool_node* @cgraph_varpool_node_for_asm(i32 %22)
  store %struct.cgraph_varpool_node* %23, %struct.cgraph_varpool_node** %7, align 8
  %24 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %7, align 8
  %25 = icmp eq %struct.cgraph_varpool_node* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.cgraph_node* @cgraph_node_for_asm(i32 %27)
  store %struct.cgraph_node* %28, %struct.cgraph_node** %6, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %32 = icmp ne %struct.cgraph_node* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* @cgraph_global_info_ready, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %38 = call i32 @cgraph_mark_needed_node(%struct.cgraph_node* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %41 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %54

43:                                               ; preds = %30
  %44 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %7, align 8
  %45 = icmp ne %struct.cgraph_varpool_node* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %7, align 8
  %48 = call i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node* %47)
  %49 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %7, align 8
  %50 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @NULL_TREE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %46, %39
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local %struct.cgraph_node* @cgraph_node_for_asm(i32) #1

declare dso_local %struct.cgraph_varpool_node* @cgraph_varpool_node_for_asm(i32) #1

declare dso_local i32 @cgraph_mark_needed_node(%struct.cgraph_node*) #1

declare dso_local i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
