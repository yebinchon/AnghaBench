; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.btrfs_inode = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, %struct.inode, i32*, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@btrfs_inode_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@BTRFS_COMPRESS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @btrfs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.btrfs_inode*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load i32, i32* @btrfs_inode_cachep, align 4
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.btrfs_inode* @kmem_cache_alloc(i32 %6, i32 %7)
  store %struct.btrfs_inode* %8, %struct.btrfs_inode** %4, align 8
  %9 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %10 = icmp ne %struct.btrfs_inode* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %14 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %13, i32 0, i32 27
  store i32* null, i32** %14, align 8
  %15 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %15, i32 0, i32 26
  store i32* null, i32** %16, align 8
  %17 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %17, i32 0, i32 25
  store i64 0, i64* %18, align 8
  %19 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %19, i32 0, i32 24
  store i64 0, i64* %20, align 8
  %21 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %21, i32 0, i32 23
  store i64 0, i64* %22, align 8
  %23 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %23, i32 0, i32 22
  store i64 0, i64* %24, align 8
  %25 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %25, i32 0, i32 21
  store i64 0, i64* %26, align 8
  %27 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %27, i32 0, i32 20
  store i64 0, i64* %28, align 8
  %29 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %29, i32 0, i32 19
  store i64 0, i64* %30, align 8
  %31 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %31, i32 0, i32 18
  store i64 0, i64* %32, align 8
  %33 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %33, i32 0, i32 17
  store i64 -1, i64* %34, align 8
  %35 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %36 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %35, i32 0, i32 16
  store i64 0, i64* %36, align 8
  %37 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %37, i32 0, i32 15
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %40, i32 0, i32 14
  store i64 0, i64* %41, align 8
  %42 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %43 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %42, i32 0, i32 13
  store i64 0, i64* %43, align 8
  %44 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %45 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %44, i32 0, i32 12
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @BTRFS_COMPRESS_NONE, align 4
  %47 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %48 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 8
  %49 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %50 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %49, i32 0, i32 10
  store i32* null, i32** %50, align 8
  %51 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %52 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %51, i32 0, i32 9
  store %struct.inode* %52, %struct.inode** %5, align 8
  %53 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %54 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %53, i32 0, i32 8
  %55 = call i32 @extent_map_tree_init(i32* %54)
  %56 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %57 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %56, i32 0, i32 7
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = call i32 @extent_io_tree_init(%struct.TYPE_2__* %57, i32* %59)
  %61 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %62 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %61, i32 0, i32 6
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = call i32 @extent_io_tree_init(%struct.TYPE_2__* %62, i32* %64)
  %66 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %67 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %73 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %72, i32 0, i32 5
  %74 = call i32 @mutex_init(i32* %73)
  %75 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %76 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %75, i32 0, i32 4
  %77 = call i32 @mutex_init(i32* %76)
  %78 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %79 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %78, i32 0, i32 3
  %80 = call i32 @btrfs_ordered_inode_tree_init(i32* %79)
  %81 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %82 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %81, i32 0, i32 2
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %85 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %84, i32 0, i32 1
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.btrfs_inode*, %struct.btrfs_inode** %4, align 8
  %88 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %87, i32 0, i32 0
  %89 = call i32 @RB_CLEAR_NODE(i32* %88)
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %90, %struct.inode** %2, align 8
  br label %91

91:                                               ; preds = %12, %11
  %92 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %92
}

declare dso_local %struct.btrfs_inode* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @extent_map_tree_init(i32*) #1

declare dso_local i32 @extent_io_tree_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @btrfs_ordered_inode_tree_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
