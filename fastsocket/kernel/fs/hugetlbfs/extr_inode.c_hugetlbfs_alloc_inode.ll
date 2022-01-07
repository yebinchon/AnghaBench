; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hugetlbfs/extr_inode.c_hugetlbfs_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hugetlbfs/extr_inode.c_hugetlbfs_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.hugetlbfs_sb_info = type { i32 }
%struct.hugetlbfs_inode_info = type { %struct.inode }

@hugetlbfs_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @hugetlbfs_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @hugetlbfs_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.hugetlbfs_sb_info*, align 8
  %5 = alloca %struct.hugetlbfs_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.hugetlbfs_sb_info* @HUGETLBFS_SB(%struct.super_block* %6)
  store %struct.hugetlbfs_sb_info* %7, %struct.hugetlbfs_sb_info** %4, align 8
  %8 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %4, align 8
  %9 = call i32 @hugetlbfs_dec_free_inodes(%struct.hugetlbfs_sb_info* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %32

16:                                               ; preds = %1
  %17 = load i32, i32* @hugetlbfs_inode_cachep, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.hugetlbfs_inode_info* @kmem_cache_alloc(i32 %17, i32 %18)
  store %struct.hugetlbfs_inode_info* %19, %struct.hugetlbfs_inode_info** %5, align 8
  %20 = load %struct.hugetlbfs_inode_info*, %struct.hugetlbfs_inode_info** %5, align 8
  %21 = icmp ne %struct.hugetlbfs_inode_info* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %4, align 8
  %28 = call i32 @hugetlbfs_inc_free_inodes(%struct.hugetlbfs_sb_info* %27)
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %32

29:                                               ; preds = %16
  %30 = load %struct.hugetlbfs_inode_info*, %struct.hugetlbfs_inode_info** %5, align 8
  %31 = getelementptr inbounds %struct.hugetlbfs_inode_info, %struct.hugetlbfs_inode_info* %30, i32 0, i32 0
  store %struct.inode* %31, %struct.inode** %2, align 8
  br label %32

32:                                               ; preds = %29, %26, %15
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %33
}

declare dso_local %struct.hugetlbfs_sb_info* @HUGETLBFS_SB(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hugetlbfs_dec_free_inodes(%struct.hugetlbfs_sb_info*) #1

declare dso_local %struct.hugetlbfs_inode_info* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @hugetlbfs_inc_free_inodes(%struct.hugetlbfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
