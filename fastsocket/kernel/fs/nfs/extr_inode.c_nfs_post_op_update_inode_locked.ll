; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_post_op_update_inode_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_post_op_update_inode_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_inode = type { i32 }

@NFS_INO_INVALID_ATTR = common dso_local global i32 0, align 4
@NFS_INO_REVAL_PAGECACHE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_fattr*)* @nfs_post_op_update_inode_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_post_op_update_inode_locked(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.nfs_inode* @NFS_I(%struct.inode* %7)
  store %struct.nfs_inode* %8, %struct.nfs_inode** %6, align 8
  %9 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %10 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @S_ISDIR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %23 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @nfs_fscache_invalidate(%struct.inode* %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %40 = call i32 @nfs_refresh_inode_locked(%struct.inode* %38, %struct.nfs_fattr* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @nfs_fscache_invalidate(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode_locked(%struct.inode*, %struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
