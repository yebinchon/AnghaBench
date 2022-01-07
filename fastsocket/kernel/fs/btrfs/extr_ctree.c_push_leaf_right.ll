; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_push_leaf_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_push_leaf_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i32, i32)* @push_leaf_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_leaf_right(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.btrfs_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.extent_buffer*, align 8
  %17 = alloca %struct.extent_buffer*, align 8
  %18 = alloca %struct.extent_buffer*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %10, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %24 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %23, i32 0, i32 1
  %25 = load %struct.extent_buffer**, %struct.extent_buffer*** %24, align 8
  %26 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %25, i64 0
  %27 = load %struct.extent_buffer*, %struct.extent_buffer** %26, align 8
  store %struct.extent_buffer* %27, %struct.extent_buffer** %16, align 8
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 1
  %30 = load %struct.extent_buffer**, %struct.extent_buffer*** %29, align 8
  %31 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %30, i64 1
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %31, align 8
  %33 = icmp ne %struct.extent_buffer* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %120

35:                                               ; preds = %7
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %19, align 4
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 1
  %43 = load %struct.extent_buffer**, %struct.extent_buffer*** %42, align 8
  %44 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %43, i64 1
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %44, align 8
  store %struct.extent_buffer* %45, %struct.extent_buffer** %18, align 8
  %46 = load i32, i32* %19, align 4
  %47 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %48 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %47)
  %49 = sub nsw i32 %48, 1
  %50 = icmp sge i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  br label %120

52:                                               ; preds = %35
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %54 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %53, i32 0, i32 1
  %55 = load %struct.extent_buffer**, %struct.extent_buffer*** %54, align 8
  %56 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %55, i64 1
  %57 = load %struct.extent_buffer*, %struct.extent_buffer** %56, align 8
  %58 = call i32 @btrfs_assert_tree_locked(%struct.extent_buffer* %57)
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %61 = load i32, i32* %19, align 4
  %62 = add nsw i32 %61, 1
  %63 = call %struct.extent_buffer* @read_node_slot(%struct.btrfs_root* %59, %struct.extent_buffer* %60, i32 %62)
  store %struct.extent_buffer* %63, %struct.extent_buffer** %17, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %65 = icmp eq %struct.extent_buffer* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %120

67:                                               ; preds = %52
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %69 = call i32 @btrfs_tree_lock(%struct.extent_buffer* %68)
  %70 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %71 = call i32 @btrfs_set_lock_blocking(%struct.extent_buffer* %70)
  %72 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %74 = call i32 @btrfs_leaf_free_space(%struct.btrfs_root* %72, %struct.extent_buffer* %73)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %115

79:                                               ; preds = %67
  %80 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %82 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %18, align 8
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @btrfs_cow_block(%struct.btrfs_trans_handle* %80, %struct.btrfs_root* %81, %struct.extent_buffer* %82, %struct.extent_buffer* %83, i32 %85, %struct.extent_buffer** %17)
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %22, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %115

90:                                               ; preds = %79
  %91 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %93 = call i32 @btrfs_leaf_free_space(%struct.btrfs_root* %91, %struct.extent_buffer* %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %115

98:                                               ; preds = %90
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %16, align 8
  %100 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %99)
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %21, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %115

104:                                              ; preds = %98
  %105 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %107 = load %struct.btrfs_path*, %struct.btrfs_path** %11, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @__push_leaf_right(%struct.btrfs_trans_handle* %105, %struct.btrfs_root* %106, %struct.btrfs_path* %107, i32 %108, i32 %109, %struct.extent_buffer* %110, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  br label %120

115:                                              ; preds = %103, %97, %89, %78
  %116 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %117 = call i32 @btrfs_tree_unlock(%struct.extent_buffer* %116)
  %118 = load %struct.extent_buffer*, %struct.extent_buffer** %17, align 8
  %119 = call i32 @free_extent_buffer(%struct.extent_buffer* %118)
  store i32 1, i32* %8, align 4
  br label %120

120:                                              ; preds = %115, %104, %66, %51, %34
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_assert_tree_locked(%struct.extent_buffer*) #1

declare dso_local %struct.extent_buffer* @read_node_slot(%struct.btrfs_root*, %struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_tree_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_lock_blocking(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_leaf_free_space(%struct.btrfs_root*, %struct.extent_buffer*) #1

declare dso_local i32 @btrfs_cow_block(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.extent_buffer*, %struct.extent_buffer*, i32, %struct.extent_buffer**) #1

declare dso_local i32 @__push_leaf_right(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, %struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_tree_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
