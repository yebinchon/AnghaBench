; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache-index.c_nfs_fscache_inode_get_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_fscache-index.c_nfs_fscache_inode_get_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fscache_inode_auxdata = type { i32, i32, i32, i32 }
%struct.nfs_inode = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @nfs_fscache_inode_get_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_fscache_inode_get_aux(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_fscache_inode_auxdata, align 4
  %8 = alloca %struct.nfs_inode*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.nfs_inode*
  store %struct.nfs_inode* %10, %struct.nfs_inode** %8, align 8
  %11 = call i32 @memset(%struct.nfs_fscache_inode_auxdata* %7, i32 0, i32 16)
  %12 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %13 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %7, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %18 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %7, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %23 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %7, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %28 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %27, i32 0, i32 1
  %29 = call %struct.TYPE_7__* @NFS_SERVER(%struct.TYPE_8__* %28)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.nfs_inode*, %struct.nfs_inode** %8, align 8
  %39 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.nfs_fscache_inode_auxdata, %struct.nfs_fscache_inode_auxdata* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %3
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 16
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 16, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memcpy(i8* %48, %struct.nfs_fscache_inode_auxdata* %7, i32 %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.nfs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @NFS_SERVER(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i8*, %struct.nfs_fscache_inode_auxdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
