; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_update_changeattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_update_changeattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs4_change_info = type { i64, i64, i32 }
%struct.nfs_inode = type { i32, i64 }

@NFS_INO_INVALID_ATTR = common dso_local global i32 0, align 4
@NFS_INO_REVAL_PAGECACHE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nfs4_change_info*)* @update_changeattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_changeattr(%struct.inode* %0, %struct.nfs4_change_info* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs4_change_info*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs4_change_info* %1, %struct.nfs4_change_info** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.nfs_inode* @NFS_I(%struct.inode* %6)
  store %struct.nfs_inode* %7, %struct.nfs_inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %12 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %17 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_change_info, %struct.nfs4_change_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %4, align 8
  %26 = getelementptr inbounds %struct.nfs4_change_info, %struct.nfs4_change_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24, %2
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call i32 @nfs_force_lookup_revalidate(%struct.inode* %33)
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %4, align 8
  %37 = getelementptr inbounds %struct.nfs4_change_info, %struct.nfs4_change_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = call i32 @nfs_fscache_invalidate(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs_force_lookup_revalidate(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_invalidate(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
