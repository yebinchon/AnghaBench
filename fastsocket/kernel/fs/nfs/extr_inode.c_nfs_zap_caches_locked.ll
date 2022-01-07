; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_zap_caches_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_zap_caches_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { i32, i32, i32 }

@NFSIOS_ATTRINVALIDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATTR = common dso_local global i32 0, align 4
@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACCESS = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACL = common dso_local global i32 0, align 4
@NFS_INO_REVAL_PAGECACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @nfs_zap_caches_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_zap_caches_locked(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.nfs_inode* @NFS_I(%struct.inode* %5)
  store %struct.nfs_inode* %6, %struct.nfs_inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = load i32, i32* @NFSIOS_ATTRINVALIDATE, align 4
  %12 = call i32 @nfs_inc_stats(%struct.inode* %10, i32 %11)
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call i32 @NFS_MINATTRTIMEO(%struct.inode* %13)
  %15 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @jiffies, align 4
  %18 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call i32 @NFS_COOKIEVERF(%struct.inode* %20)
  %22 = call i32 @memset(i32 %21, i32 0, i32 4)
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @S_ISREG(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @S_ISDIR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @S_ISLNK(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30, %26, %1
  %35 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %36 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %45 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = call i32 @nfs_fscache_invalidate(%struct.inode* %48)
  br label %62

50:                                               ; preds = %30
  %51 = load i32, i32* @NFS_INO_INVALID_ATTR, align 4
  %52 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @NFS_INO_REVAL_PAGECACHE, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %59 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %50, %34
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @NFS_MINATTRTIMEO(%struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @NFS_COOKIEVERF(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @nfs_fscache_invalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
