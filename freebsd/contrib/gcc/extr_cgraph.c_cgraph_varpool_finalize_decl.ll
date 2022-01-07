; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_varpool_finalize_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraph.c_cgraph_varpool_finalize_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_varpool_node = type { i32, i64 }

@cgraph_global_info_ready = common dso_local global i64 0, align 8
@flag_unit_at_a_time = common dso_local global i32 0, align 4
@flag_openmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgraph_varpool_finalize_decl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_varpool_node*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.cgraph_varpool_node* @cgraph_varpool_node(i32 %4)
  store %struct.cgraph_varpool_node* %5, %struct.cgraph_varpool_node** %3, align 8
  %6 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %7 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load i64, i64* @cgraph_global_info_ready, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @flag_unit_at_a_time, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @flag_openmp, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %10
  %20 = call i32 (...) @cgraph_varpool_assemble_pending_decls()
  br label %21

21:                                               ; preds = %19, %16, %13
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %24 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %29 = call i32 @cgraph_varpool_enqueue_needed_node(%struct.cgraph_varpool_node* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %32 = getelementptr inbounds %struct.cgraph_varpool_node, %struct.cgraph_varpool_node* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @decide_is_variable_needed(%struct.cgraph_varpool_node* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %39 = call i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node* %38)
  br label %56

40:                                               ; preds = %30
  %41 = load i32, i32* %2, align 4
  %42 = call i64 @TREE_PUBLIC(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @DECL_COMDAT(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @DECL_EXTERNAL(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %3, align 8
  %54 = call i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node* %53)
  br label %55

55:                                               ; preds = %52, %48, %44, %40
  br label %56

56:                                               ; preds = %55, %37
  %57 = load i64, i64* @cgraph_global_info_ready, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @flag_unit_at_a_time, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @flag_openmp, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62, %56
  %66 = call i32 (...) @cgraph_varpool_assemble_pending_decls()
  br label %67

67:                                               ; preds = %21, %65, %62, %59
  ret void
}

declare dso_local %struct.cgraph_varpool_node* @cgraph_varpool_node(i32) #1

declare dso_local i32 @cgraph_varpool_assemble_pending_decls(...) #1

declare dso_local i32 @cgraph_varpool_enqueue_needed_node(%struct.cgraph_varpool_node*) #1

declare dso_local i64 @decide_is_variable_needed(%struct.cgraph_varpool_node*, i32) #1

declare dso_local i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node*) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i32 @DECL_COMDAT(i32) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
