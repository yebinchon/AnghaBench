; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_file_fsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_file_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.inode* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_open_context = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"NFS: fsync file(%s/%s) datasync %d\0A\00", align 1
@NFSIOS_VFSFSYNC = common dso_local global i32 0, align 4
@NFS_CONTEXT_ERROR_WRITE = common dso_local global i32 0, align 4
@FLUSH_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dentry*, i32)* @nfs_file_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_file_fsync(%struct.file* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_open_context*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call %struct.nfs_open_context* @nfs_file_open_context(%struct.file* %12)
  store %struct.nfs_open_context* %13, %struct.nfs_open_context** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load i32, i32* @NFSIOS_VFSFSYNC, align 4
  %31 = call i32 @nfs_inc_stats(%struct.inode* %29, i32 %30)
  %32 = load i32, i32* @NFS_CONTEXT_ERROR_WRITE, align 4
  %33 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %33, i32 0, i32 1
  %35 = call i32 @test_and_clear_bit(i32 %32, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = load i32, i32* @FLUSH_SYNC, align 4
  %38 = call i32 @nfs_commit_inode(%struct.inode* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @NFS_CONTEXT_ERROR_WRITE, align 4
  %40 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %41 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %40, i32 0, i32 1
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %49 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %48, i32 0, i32 0
  %50 = call i32 @xchg(i32* %49, i32 0)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %47, %3
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %54, %51
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = call i32 @pnfs_layoutcommit_inode(%struct.inode* %66, i32 1)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %65, %62, %59
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local %struct.nfs_open_context* @nfs_file_open_context(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs_commit_inode(%struct.inode*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @pnfs_layoutcommit_inode(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
