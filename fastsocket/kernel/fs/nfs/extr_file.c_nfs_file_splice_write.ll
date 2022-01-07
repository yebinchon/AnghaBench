; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_file_splice_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_file_splice_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.file = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.inode* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"NFS splice_write(%s/%s, %lu@%llu)\0A\00", align 1
@NFSIOS_NORMALWRITTENBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* @nfs_file_splice_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_file_splice_write(%struct.pipe_inode_info* %0, %struct.file* %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %18, %struct.dentry** %11, align 8
  %19 = load %struct.dentry*, %struct.dentry** %11, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 2
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %12, align 8
  %22 = load %struct.dentry*, %struct.dentry** %11, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dentry*, %struct.dentry** %11, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31, i64 %32, i64 %34)
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = load i32, i32* @NFSIOS_NORMALWRITTENBYTES, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @nfs_add_stats(%struct.inode* %36, i32 %37, i64 %38)
  %40 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %41 = load %struct.file*, %struct.file** %7, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @generic_file_splice_write(%struct.pipe_inode_info* %40, %struct.file* %41, i64* %42, i64 %43, i32 %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %5
  %49 = load %struct.file*, %struct.file** %7, align 8
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = call i64 @nfs_need_sync_write(%struct.file* %49, %struct.inode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.file*, %struct.file** %7, align 8
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = call i32 @vfs_fsync(%struct.file* %54, %struct.dentry* %55, i32 0)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %48, %5
  %64 = load i64, i64* %13, align 8
  ret i64 %64
}

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i64) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i64) #1

declare dso_local i64 @generic_file_splice_write(%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32) #1

declare dso_local i64 @nfs_need_sync_write(%struct.file*, %struct.inode*) #1

declare dso_local i32 @vfs_fsync(%struct.file*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
