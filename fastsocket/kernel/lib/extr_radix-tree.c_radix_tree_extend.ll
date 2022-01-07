; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_extend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_radix-tree.c_radix_tree_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_tree_root = type { i32, i32* }
%struct.radix_tree_node = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@RADIX_TREE_MAX_TAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_tree_root*, i64)* @radix_tree_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radix_tree_extend(%struct.radix_tree_root* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_tree_root*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radix_tree_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radix_tree_root* %0, %struct.radix_tree_root** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %11 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %19, %2
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @radix_tree_maxindex(i32 %16)
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %14

22:                                               ; preds = %14
  %23 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %24 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %30 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %92

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %85, %31
  %33 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %34 = call %struct.radix_tree_node* @radix_tree_node_alloc(%struct.radix_tree_root* %33)
  store %struct.radix_tree_node* %34, %struct.radix_tree_node** %6, align 8
  %35 = icmp ne %struct.radix_tree_node* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %93

39:                                               ; preds = %32
  %40 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %41 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @indirect_to_ptr(i32* %42)
  %44 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %45 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %43, i32* %47, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %62, %39
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @RADIX_TREE_MAX_TAGS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @root_tag_get(%struct.radix_tree_root* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @tag_set(%struct.radix_tree_node* %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57, %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %67 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %72 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %74 = getelementptr inbounds %struct.radix_tree_node, %struct.radix_tree_node* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %76 = call %struct.radix_tree_node* @ptr_to_indirect(%struct.radix_tree_node* %75)
  store %struct.radix_tree_node* %76, %struct.radix_tree_node** %6, align 8
  %77 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %78 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.radix_tree_node*, %struct.radix_tree_node** %6, align 8
  %81 = call i32 @rcu_assign_pointer(i32* %79, %struct.radix_tree_node* %80)
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %84 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.radix_tree_root*, %struct.radix_tree_root** %4, align 8
  %88 = getelementptr inbounds %struct.radix_tree_root, %struct.radix_tree_root* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ugt i32 %86, %89
  br i1 %90, label %32, label %91

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %27
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %36
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @radix_tree_maxindex(i32) #1

declare dso_local %struct.radix_tree_node* @radix_tree_node_alloc(%struct.radix_tree_root*) #1

declare dso_local i32 @indirect_to_ptr(i32*) #1

declare dso_local i64 @root_tag_get(%struct.radix_tree_root*, i32) #1

declare dso_local i32 @tag_set(%struct.radix_tree_node*, i32, i32) #1

declare dso_local %struct.radix_tree_node* @ptr_to_indirect(%struct.radix_tree_node*) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.radix_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
