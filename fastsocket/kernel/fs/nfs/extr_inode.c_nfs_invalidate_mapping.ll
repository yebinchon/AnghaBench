; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_invalidate_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_invalidate_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.address_space = type { i64 }
%struct.nfs_inode = type { i32, i32 }

@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFSIOS_DATAINVALIDATE = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"NFS: (%s/%Ld) data cache invalidated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.address_space*)* @nfs_invalidate_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_invalidate_mapping(%struct.inode* %0, %struct.address_space* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.address_space* %1, %struct.address_space** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %6, align 8
  %10 = load %struct.address_space*, %struct.address_space** %5, align 8
  %11 = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISREG(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.address_space*, %struct.address_space** %5, align 8
  %22 = call i32 @nfs_sync_mapping(%struct.address_space* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %74

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %14
  %29 = load %struct.address_space*, %struct.address_space** %5, align 8
  %30 = call i32 @invalidate_inode_pages2(%struct.address_space* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @S_ISDIR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memset(i32 %54, i32 0, i32 4)
  br label %56

56:                                               ; preds = %51, %36
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = load i32, i32* @NFSIOS_DATAINVALIDATE, align 4
  %62 = call i32 @nfs_inc_stats(%struct.inode* %60, i32 %61)
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = call i32 @nfs_fscache_wait_on_invalidate(%struct.inode* %63)
  %65 = load i32, i32* @PAGECACHE, align 4
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = call i64 @NFS_FILEID(%struct.inode* %71)
  %73 = call i32 @dfprintk(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %70, i64 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %56, %33, %25
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @nfs_sync_mapping(%struct.address_space*) #1

declare dso_local i32 @invalidate_inode_pages2(%struct.address_space*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @nfs_fscache_wait_on_invalidate(%struct.inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, i32, i64) #1

declare dso_local i64 @NFS_FILEID(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
