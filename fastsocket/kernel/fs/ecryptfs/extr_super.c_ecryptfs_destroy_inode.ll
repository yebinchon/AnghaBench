; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_super.c_ecryptfs_destroy_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_super.c_ecryptfs_destroy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ecryptfs_inode_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i64 }

@ecryptfs_inode_info_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ecryptfs_destroy_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_destroy_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ecryptfs_inode_info*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.ecryptfs_inode_info* @ecryptfs_inode_to_private(%struct.inode* %5)
  store %struct.ecryptfs_inode_info* %6, %struct.ecryptfs_inode_info** %3, align 8
  %7 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %8 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %13 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %4, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = icmp ne %struct.dentry* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %11
  %27 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %28 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @fput(%struct.TYPE_2__* %29)
  %31 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %32 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %31, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %32, align 8
  br label %33

33:                                               ; preds = %26, %11
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %36 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %35, i32 0, i32 0
  %37 = call i32 @ecryptfs_destroy_crypt_stat(i32* %36)
  %38 = load i32, i32* @ecryptfs_inode_info_cache, align 4
  %39 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %40 = call i32 @kmem_cache_free(i32 %38, %struct.ecryptfs_inode_info* %39)
  ret void
}

declare dso_local %struct.ecryptfs_inode_info* @ecryptfs_inode_to_private(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fput(%struct.TYPE_2__*) #1

declare dso_local i32 @ecryptfs_destroy_crypt_stat(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ecryptfs_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
