; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_tree_mod_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_tree_mod_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32 }
%struct.tree_mod_elem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32, %struct.tree_mod_elem**)* @tree_mod_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_mod_alloc(%struct.btrfs_fs_info* %0, i32 %1, %struct.tree_mod_elem** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tree_mod_elem**, align 8
  %8 = alloca %struct.tree_mod_elem*, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tree_mod_elem** %2, %struct.tree_mod_elem*** %7, align 8
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %11 = call i64 @tree_mod_dont_log(%struct.btrfs_fs_info* %10, i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.tree_mod_elem* @kzalloc(i32 16, i32 %15)
  %17 = load %struct.tree_mod_elem**, %struct.tree_mod_elem*** %7, align 8
  store %struct.tree_mod_elem* %16, %struct.tree_mod_elem** %17, align 8
  store %struct.tree_mod_elem* %16, %struct.tree_mod_elem** %8, align 8
  %18 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %19 = icmp ne %struct.tree_mod_elem* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %14
  %24 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %25 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %31 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %30, i32 0, i32 1
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %36 = call i32 @kfree(%struct.tree_mod_elem* %35)
  store i32 0, i32* %9, align 4
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  br label %49

40:                                               ; preds = %23
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %42 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %43 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %42, i32 0, i32 0
  %44 = call i32 @__get_tree_mod_seq(%struct.btrfs_fs_info* %41, %struct.TYPE_2__* %43)
  %45 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %8, align 8
  %46 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %40, %34
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %20, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @tree_mod_dont_log(%struct.btrfs_fs_info*, i32*) #1

declare dso_local %struct.tree_mod_elem* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.tree_mod_elem*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__get_tree_mod_seq(%struct.btrfs_fs_info*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
