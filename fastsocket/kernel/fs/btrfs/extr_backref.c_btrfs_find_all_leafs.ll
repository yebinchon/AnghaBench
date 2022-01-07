; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_btrfs_find_all_leafs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c_btrfs_find_all_leafs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.ulist = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, i32, i32, i32, %struct.ulist**, i32*)* @btrfs_find_all_leafs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_find_all_leafs(%struct.btrfs_trans_handle* %0, %struct.btrfs_fs_info* %1, i32 %2, i32 %3, i32 %4, %struct.ulist** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca %struct.btrfs_fs_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ulist**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ulist*, align 8
  %17 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %9, align 8
  store %struct.btrfs_fs_info* %1, %struct.btrfs_fs_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ulist** %5, %struct.ulist*** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call %struct.ulist* @ulist_alloc(i32 %18)
  store %struct.ulist* %19, %struct.ulist** %16, align 8
  %20 = load %struct.ulist*, %struct.ulist** %16, align 8
  %21 = icmp ne %struct.ulist* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %63

25:                                               ; preds = %7
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call %struct.ulist* @ulist_alloc(i32 %26)
  %28 = load %struct.ulist**, %struct.ulist*** %14, align 8
  store %struct.ulist* %27, %struct.ulist** %28, align 8
  %29 = load %struct.ulist**, %struct.ulist*** %14, align 8
  %30 = load %struct.ulist*, %struct.ulist** %29, align 8
  %31 = icmp ne %struct.ulist* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.ulist*, %struct.ulist** %16, align 8
  %34 = call i32 @ulist_free(%struct.ulist* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %63

37:                                               ; preds = %25
  %38 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.ulist**, %struct.ulist*** %14, align 8
  %44 = load %struct.ulist*, %struct.ulist** %43, align 8
  %45 = load %struct.ulist*, %struct.ulist** %16, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @find_parent_nodes(%struct.btrfs_trans_handle* %38, %struct.btrfs_fs_info* %39, i32 %40, i32 %41, i32 %42, %struct.ulist* %44, %struct.ulist* %45, i32* %46)
  store i32 %47, i32* %17, align 4
  %48 = load %struct.ulist*, %struct.ulist** %16, align 8
  %49 = call i32 @ulist_free(%struct.ulist* %48)
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.ulist**, %struct.ulist*** %14, align 8
  %59 = load %struct.ulist*, %struct.ulist** %58, align 8
  %60 = call i32 @free_leaf_list(%struct.ulist* %59)
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %8, align 4
  br label %63

62:                                               ; preds = %52, %37
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %57, %32, %22
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local %struct.ulist* @ulist_alloc(i32) #1

declare dso_local i32 @ulist_free(%struct.ulist*) #1

declare dso_local i32 @find_parent_nodes(%struct.btrfs_trans_handle*, %struct.btrfs_fs_info*, i32, i32, i32, %struct.ulist*, %struct.ulist*, i32*) #1

declare dso_local i32 @free_leaf_list(%struct.ulist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
