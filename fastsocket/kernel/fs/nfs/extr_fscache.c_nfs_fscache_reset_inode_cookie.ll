; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_reset_inode_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_reset_inode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_inode = type { %struct.fscache_cookie* }
%struct.fscache_cookie = type { i32 }
%struct.nfs_server = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@nfs_fscache_inode_object_def = common dso_local global i32 0, align 4
@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"NFS: revalidation new cookie (0x%p/0x%p/0x%p/0x%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_fscache_reset_inode_cookie(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nfs_inode*, align 8
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.nfs_inode* @NFS_I(%struct.inode* %6)
  store %struct.nfs_inode* %7, %struct.nfs_inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %8)
  store %struct.nfs_server* %9, %struct.nfs_server** %4, align 8
  %10 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %10, i32 0, i32 0
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %11, align 8
  store %struct.fscache_cookie* %12, %struct.fscache_cookie** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call i32 @nfs_fscache_inode_lock(%struct.inode* %13)
  %15 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %15, i32 0, i32 0
  %17 = load %struct.fscache_cookie*, %struct.fscache_cookie** %16, align 8
  %18 = icmp ne %struct.fscache_cookie* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %20, i32 0, i32 0
  %22 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %23 = call i32 @fscache_relinquish_cookie(%struct.fscache_cookie* %22, i32 1)
  %24 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %30 = call %struct.fscache_cookie* @fscache_acquire_cookie(i32 %28, i32* @nfs_fscache_inode_object_def, %struct.nfs_inode* %29)
  %31 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %32 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %31, i32 0, i32 0
  store %struct.fscache_cookie* %30, %struct.fscache_cookie** %32, align 8
  %33 = load i32, i32* @FSCACHE, align 4
  %34 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %35 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %36 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %37 = load %struct.nfs_inode*, %struct.nfs_inode** %3, align 8
  %38 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %37, i32 0, i32 0
  %39 = load %struct.fscache_cookie*, %struct.fscache_cookie** %38, align 8
  %40 = call i32 @dfprintk(i32 %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.nfs_server* %34, %struct.nfs_inode* %35, %struct.fscache_cookie* %36, %struct.fscache_cookie* %39)
  br label %41

41:                                               ; preds = %19, %1
  %42 = load %struct.inode*, %struct.inode** %2, align 8
  %43 = call i32 @nfs_fscache_inode_unlock(%struct.inode* %42)
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_inode_lock(%struct.inode*) #1

declare dso_local i32 @fscache_relinquish_cookie(%struct.fscache_cookie*, i32) #1

declare dso_local %struct.fscache_cookie* @fscache_acquire_cookie(i32, i32*, %struct.nfs_inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.nfs_server*, %struct.nfs_inode*, %struct.fscache_cookie*, %struct.fscache_cookie*) #1

declare dso_local i32 @nfs_fscache_inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
