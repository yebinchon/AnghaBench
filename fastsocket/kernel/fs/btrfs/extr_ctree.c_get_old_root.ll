; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_get_old_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_get_old_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_2__, %struct.extent_buffer*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tree_mod_elem = type { i64, i32, %struct.tree_mod_root }
%struct.tree_mod_root = type { i32, i32 }

@MOD_LOG_ROOT_REPLACE = common dso_local global i64 0, align 8
@BTRFS_MIXED_BACKREF_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_buffer* (%struct.btrfs_root*, i32)* @get_old_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_buffer* @get_old_root(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_mod_elem*, align 8
  %7 = alloca %struct.extent_buffer*, align 8
  %8 = alloca %struct.tree_mod_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tree_mod_root* null, %struct.tree_mod_root** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %12 = call %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root* %11)
  store %struct.extent_buffer* %12, %struct.extent_buffer** %7, align 8
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.tree_mod_elem* @__tree_mod_log_oldest_root(i32 %15, %struct.btrfs_root* %16, i32 %17)
  store %struct.tree_mod_elem* %18, %struct.tree_mod_elem** %6, align 8
  %19 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %20 = icmp ne %struct.tree_mod_elem* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 1
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %23, align 8
  store %struct.extent_buffer* %24, %struct.extent_buffer** %3, align 8
  br label %124

25:                                               ; preds = %2
  %26 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %27 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MOD_LOG_ROOT_REPLACE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %33 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %32, i32 0, i32 2
  store %struct.tree_mod_root* %33, %struct.tree_mod_root** %8, align 8
  %34 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %35 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load %struct.tree_mod_root*, %struct.tree_mod_root** %8, align 8
  %38 = getelementptr inbounds %struct.tree_mod_root, %struct.tree_mod_root* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  br label %46

40:                                               ; preds = %25
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 1
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %42, align 8
  %44 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %48 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call %struct.tree_mod_elem* @tree_mod_log_search(i32 %49, i32 %50, i32 %51)
  store %struct.tree_mod_elem* %52, %struct.tree_mod_elem** %6, align 8
  %53 = load %struct.tree_mod_root*, %struct.tree_mod_root** %8, align 8
  %54 = icmp ne %struct.tree_mod_root* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %58 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.extent_buffer* @alloc_dummy_extent_buffer(i32 %56, i32 %59)
  store %struct.extent_buffer* %60, %struct.extent_buffer** %7, align 8
  br label %66

61:                                               ; preds = %46
  %62 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %63 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %62, i32 0, i32 1
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %63, align 8
  %65 = call %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer* %64)
  store %struct.extent_buffer* %65, %struct.extent_buffer** %7, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 1
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %68, align 8
  %70 = call i32 @btrfs_tree_read_unlock(%struct.extent_buffer* %69)
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 1
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %72, align 8
  %74 = call i32 @free_extent_buffer(%struct.extent_buffer* %73)
  %75 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %76 = icmp ne %struct.extent_buffer* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  store %struct.extent_buffer* null, %struct.extent_buffer** %3, align 8
  br label %124

78:                                               ; preds = %66
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %80 = call i32 @btrfs_tree_read_lock(%struct.extent_buffer* %79)
  %81 = load %struct.tree_mod_root*, %struct.tree_mod_root** %8, align 8
  %82 = icmp ne %struct.tree_mod_root* %81, null
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %85 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %86 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @btrfs_set_header_bytenr(%struct.extent_buffer* %84, i32 %87)
  %89 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %90 = load i32, i32* @BTRFS_MIXED_BACKREF_REV, align 4
  %91 = call i32 @btrfs_set_header_backref_rev(%struct.extent_buffer* %89, i32 %90)
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %94 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @btrfs_set_header_owner(%struct.extent_buffer* %92, i32 %96)
  %98 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %99 = load %struct.tree_mod_root*, %struct.tree_mod_root** %8, align 8
  %100 = getelementptr inbounds %struct.tree_mod_root, %struct.tree_mod_root* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %98, i32 %101)
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @btrfs_set_header_generation(%struct.extent_buffer* %103, i32 %104)
  br label %106

106:                                              ; preds = %83, %78
  %107 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %108 = icmp ne %struct.tree_mod_elem* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %113 = call i32 @__tree_mod_log_rewind(%struct.extent_buffer* %110, i32 %111, %struct.tree_mod_elem* %112)
  br label %120

114:                                              ; preds = %106
  %115 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %116 = call i64 @btrfs_header_level(%struct.extent_buffer* %115)
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @WARN_ON(i32 %118)
  br label %120

120:                                              ; preds = %114, %109
  %121 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  %122 = call i32 @extent_buffer_get(%struct.extent_buffer* %121)
  %123 = load %struct.extent_buffer*, %struct.extent_buffer** %7, align 8
  store %struct.extent_buffer* %123, %struct.extent_buffer** %3, align 8
  br label %124

124:                                              ; preds = %120, %77, %21
  %125 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  ret %struct.extent_buffer* %125
}

declare dso_local %struct.extent_buffer* @btrfs_read_lock_root_node(%struct.btrfs_root*) #1

declare dso_local %struct.tree_mod_elem* @__tree_mod_log_oldest_root(i32, %struct.btrfs_root*, i32) #1

declare dso_local %struct.tree_mod_elem* @tree_mod_log_search(i32, i32, i32) #1

declare dso_local %struct.extent_buffer* @alloc_dummy_extent_buffer(i32, i32) #1

declare dso_local %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_unlock(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_read_lock(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_bytenr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_backref_rev(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_owner(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_generation(%struct.extent_buffer*, i32) #1

declare dso_local i32 @__tree_mod_log_rewind(%struct.extent_buffer*, i32, %struct.tree_mod_elem*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
