; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c___tree_mod_log_oldest_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c___tree_mod_log_oldest_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_mod_elem = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MOD_LOG_ROOT_REPLACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tree_mod_elem* (%struct.btrfs_fs_info*, %struct.btrfs_root*, i64)* @__tree_mod_log_oldest_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tree_mod_elem* @__tree_mod_log_oldest_root(%struct.btrfs_fs_info* %0, %struct.btrfs_root* %1, i64 %2) #0 {
  %4 = alloca %struct.tree_mod_elem*, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tree_mod_elem*, align 8
  %9 = alloca %struct.tree_mod_elem*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.tree_mod_elem* null, %struct.tree_mod_elem** %9, align 8
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.tree_mod_elem* null, %struct.tree_mod_elem** %4, align 8
  br label %65

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %43
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.tree_mod_elem* @tree_mod_log_search_oldest(%struct.btrfs_fs_info* %22, i64 %23, i64 %24)
  store %struct.tree_mod_elem* %25, %struct.tree_mod_elem** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %30 = icmp ne %struct.tree_mod_elem* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store %struct.tree_mod_elem* null, %struct.tree_mod_elem** %4, align 8
  br label %65

32:                                               ; preds = %28, %21
  %33 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %34 = icmp ne %struct.tree_mod_elem* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %58

36:                                               ; preds = %32
  %37 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %38 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MOD_LOG_ROOT_REPLACE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %58

43:                                               ; preds = %36
  %44 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  store %struct.tree_mod_elem* %44, %struct.tree_mod_elem** %9, align 8
  %45 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %46 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  store i32 1, i32* %11, align 4
  br label %21

58:                                               ; preds = %42, %35
  %59 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %9, align 8
  %60 = icmp ne %struct.tree_mod_elem* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  store %struct.tree_mod_elem* %62, %struct.tree_mod_elem** %9, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %9, align 8
  store %struct.tree_mod_elem* %64, %struct.tree_mod_elem** %4, align 8
  br label %65

65:                                               ; preds = %63, %31, %19
  %66 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %4, align 8
  ret %struct.tree_mod_elem* %66
}

declare dso_local %struct.tree_mod_elem* @tree_mod_log_search_oldest(%struct.btrfs_fs_info*, i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
