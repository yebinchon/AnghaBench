; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.nfs_inode = type { i64, i64, %struct.inode, i32*, i8*, i8* }

@nfs_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @nfs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nfs_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @nfs_inode_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @kmem_cache_alloc(i32 %5, i32 %6)
  %8 = inttoptr i64 %7 to %struct.nfs_inode*
  store %struct.nfs_inode* %8, %struct.nfs_inode** %4, align 8
  %9 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %10 = icmp ne %struct.nfs_inode* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %17, i32 0, i32 2
  store %struct.inode* %18, %struct.inode** %2, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %20
}

declare dso_local i64 @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
