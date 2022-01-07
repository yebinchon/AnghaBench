; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache-index.c_nfs_fscache_inode_check_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache-index.c_nfs_fscache_inode_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fscache_inode_auxdata = type { i32, i32, i32, i32 }
%struct.nfs_inode = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @nfs_fscache_inode_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_fscache_inode_check_aux(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_fscache_inode_auxdata, align 4
  %9 = alloca %struct.nfs_inode*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nfs_inode*
  store %struct.nfs_inode* %11, %struct.nfs_inode** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %16, i32* %4, align 4
  br label %58

17:                                               ; preds = %3
  %18 = call i32 @memset(%struct.nfs_fscache_inode_auxdata* %8, i32 0, i32 16)
  %19 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %20 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %8, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %25 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %8, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %30 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %35 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %34, i32 0, i32 1
  %36 = call %struct.TYPE_7__* @NFS_SERVER(%struct.TYPE_8__* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %49

44:                                               ; preds = %17
  %45 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %46 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %17
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @memcmp(i8* %50, %struct.nfs_fscache_inode_auxdata* %8, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %54, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.nfs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @NFS_SERVER(%struct.TYPE_8__*) #1

declare dso_local i64 @memcmp(i8*, %struct.nfs_fscache_inode_auxdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
