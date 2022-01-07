; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_alloc_big_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_alloc_big_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@ntfs_big_inode_cache = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Allocation of NTFS big inode structure failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ntfs_alloc_big_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = call i32 @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @ntfs_big_inode_cache, align 4
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.TYPE_4__* @kmem_cache_alloc(i32 %6, i32 %7)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = call %struct.inode* @VFS_I(%struct.TYPE_4__* %17)
  store %struct.inode* %18, %struct.inode** %2, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call i32 @ntfs_error(%struct.super_block* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %23
}

declare dso_local i32 @ntfs_debug(i8*) #1

declare dso_local %struct.TYPE_4__* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.inode* @VFS_I(%struct.TYPE_4__*) #1

declare dso_local i32 @ntfs_error(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
