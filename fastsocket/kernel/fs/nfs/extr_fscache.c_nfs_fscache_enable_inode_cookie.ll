; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_enable_inode_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache.c_nfs_fscache_enable_inode_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nfs_inode = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@NFS_OPTION_FSCACHE = common dso_local global i32 0, align 4
@nfs_fscache_inode_object_def = common dso_local global i32 0, align 4
@FSCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"NFS: get FH cookie (0x%p/0x%p/0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @nfs_fscache_enable_inode_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_fscache_enable_inode_cookie(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load %struct.super_block*, %struct.super_block** %6, align 8
  store %struct.super_block* %7, %struct.super_block** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.nfs_inode* @NFS_I(%struct.inode* %8)
  store %struct.nfs_inode* %9, %struct.nfs_inode** %4, align 8
  %10 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call i32 @NFS_FSCACHE(%struct.inode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %1
  br label %43

19:                                               ; preds = %14
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call %struct.TYPE_2__* @NFS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NFS_OPTION_FSCACHE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = call %struct.TYPE_2__* @NFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %33 = call i64 @fscache_acquire_cookie(i32 %31, i32* @nfs_fscache_inode_object_def, %struct.nfs_inode* %32)
  %34 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @FSCACHE, align 4
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %39 = load %struct.nfs_inode*, %struct.nfs_inode** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dfprintk(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.super_block* %37, %struct.nfs_inode* %38, i64 %41)
  br label %43

43:                                               ; preds = %18, %27, %19
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @NFS_FSCACHE(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @NFS_SB(%struct.super_block*) #1

declare dso_local i64 @fscache_acquire_cookie(i32, i32*, %struct.nfs_inode*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.super_block*, %struct.nfs_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
