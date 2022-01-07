; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_super.c_hfs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_super.c_hfs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.hfs_inode_info = type { %struct.inode }

@hfs_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @hfs_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @hfs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.hfs_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load i32, i32* @hfs_inode_cachep, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hfs_inode_info* @kmem_cache_alloc(i32 %4, i32 %5)
  store %struct.hfs_inode_info* %6, %struct.hfs_inode_info** %3, align 8
  %7 = load %struct.hfs_inode_info*, %struct.hfs_inode_info** %3, align 8
  %8 = icmp ne %struct.hfs_inode_info* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.hfs_inode_info*, %struct.hfs_inode_info** %3, align 8
  %11 = getelementptr inbounds %struct.hfs_inode_info, %struct.hfs_inode_info* %10, i32 0, i32 0
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi %struct.inode* [ %11, %9 ], [ null, %12 ]
  ret %struct.inode* %14
}

declare dso_local %struct.hfs_inode_info* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
