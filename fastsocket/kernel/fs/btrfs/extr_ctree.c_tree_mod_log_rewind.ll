; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_tree_mod_log_rewind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_tree_mod_log_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.tree_mod_elem = type { i64, i64 }

@MOD_LOG_KEY_REMOVE_WHILE_FREEING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_buffer* (%struct.btrfs_fs_info*, %struct.extent_buffer*, i32)* @tree_mod_log_rewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_buffer* @tree_mod_log_rewind(%struct.btrfs_fs_info* %0, %struct.extent_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.extent_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.tree_mod_elem*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  store %struct.extent_buffer* %13, %struct.extent_buffer** %4, align 8
  br label %93

14:                                               ; preds = %3
  %15 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %16 = call i64 @btrfs_header_level(%struct.extent_buffer* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  store %struct.extent_buffer* %19, %struct.extent_buffer** %4, align 8
  br label %93

20:                                               ; preds = %14
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.tree_mod_elem* @tree_mod_log_search(%struct.btrfs_fs_info* %21, i32 %24, i32 %25)
  store %struct.tree_mod_elem* %26, %struct.tree_mod_elem** %9, align 8
  %27 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %9, align 8
  %28 = icmp ne %struct.tree_mod_elem* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  store %struct.extent_buffer* %30, %struct.extent_buffer** %4, align 8
  br label %93

31:                                               ; preds = %20
  %32 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %9, align 8
  %33 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MOD_LOG_KEY_REMOVE_WHILE_FREEING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %31
  %38 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %9, align 8
  %39 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %48 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.extent_buffer* @alloc_dummy_extent_buffer(i32 %46, i32 %51)
  store %struct.extent_buffer* %52, %struct.extent_buffer** %8, align 8
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %54 = icmp ne %struct.extent_buffer* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @btrfs_set_header_bytenr(%struct.extent_buffer* %58, i32 %61)
  %63 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %64 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %65 = call i32 @btrfs_header_backref_rev(%struct.extent_buffer* %64)
  %66 = call i32 @btrfs_set_header_backref_rev(%struct.extent_buffer* %63, i32 %65)
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %68 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %69 = call i32 @btrfs_header_owner(%struct.extent_buffer* %68)
  %70 = call i32 @btrfs_set_header_owner(%struct.extent_buffer* %67, i32 %69)
  %71 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %73 = call i64 @btrfs_header_level(%struct.extent_buffer* %72)
  %74 = call i32 @btrfs_set_header_level(%struct.extent_buffer* %71, i64 %73)
  br label %83

75:                                               ; preds = %31
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %77 = call %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer* %76)
  store %struct.extent_buffer* %77, %struct.extent_buffer** %8, align 8
  %78 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %79 = icmp ne %struct.extent_buffer* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  br label %83

83:                                               ; preds = %75, %37
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %85 = call i32 @extent_buffer_get(%struct.extent_buffer* %84)
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %6, align 8
  %87 = call i32 @free_extent_buffer(%struct.extent_buffer* %86)
  %88 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %9, align 8
  %91 = call i32 @__tree_mod_log_rewind(%struct.extent_buffer* %88, i32 %89, %struct.tree_mod_elem* %90)
  %92 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %92, %struct.extent_buffer** %4, align 8
  br label %93

93:                                               ; preds = %83, %29, %18, %12
  %94 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  ret %struct.extent_buffer* %94
}

declare dso_local i64 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local %struct.tree_mod_elem* @tree_mod_log_search(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.extent_buffer* @alloc_dummy_extent_buffer(i32, i32) #1

declare dso_local i32 @btrfs_set_header_bytenr(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_set_header_backref_rev(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_backref_rev(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_owner(%struct.extent_buffer*, i32) #1

declare dso_local i32 @btrfs_header_owner(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_set_header_level(%struct.extent_buffer*, i64) #1

declare dso_local %struct.extent_buffer* @btrfs_clone_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @extent_buffer_get(%struct.extent_buffer*) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

declare dso_local i32 @__tree_mod_log_rewind(%struct.extent_buffer*, i32, %struct.tree_mod_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
