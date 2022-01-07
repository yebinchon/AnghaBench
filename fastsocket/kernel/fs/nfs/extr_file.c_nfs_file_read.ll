; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_file_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.inode* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32 }
%struct.iovec = type { i32 }

@O_DIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"NFS: read(%s/%s, %lu@%lu)\0A\00", align 1
@NFSIOS_NORMALREADBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*, %struct.iovec*, i64, i64)* @nfs_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_file_read(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %15 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  store %struct.dentry* %19, %struct.dentry** %10, align 8
  %20 = load %struct.dentry*, %struct.dentry** %10, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 2
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %11, align 8
  %23 = load %struct.iovec*, %struct.iovec** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @iov_length(%struct.iovec* %23, i64 %24)
  store i64 %25, i64* %13, align 8
  %26 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %27 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @O_DIRECT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %36 = load %struct.iovec*, %struct.iovec** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @nfs_file_direct_read(%struct.kiocb* %35, %struct.iovec* %36, i64 %37, i64 %38)
  store i64 %39, i64* %5, align 8
  br label %75

40:                                               ; preds = %4
  %41 = load %struct.dentry*, %struct.dentry** %10, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %50, i64 %51, i64 %52)
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %56 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nfs_revalidate_mapping(%struct.inode* %54, i32 %59)
  store i64 %60, i64* %12, align 8
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = load i32, i32* @NFSIOS_NORMALREADBYTES, align 4
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @nfs_add_stats(%struct.inode* %61, i32 %62, i64 %63)
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %40
  %68 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %69 = load %struct.iovec*, %struct.iovec** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @generic_file_aio_read(%struct.kiocb* %68, %struct.iovec* %69, i64 %70, i64 %71)
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %67, %40
  %74 = load i64, i64* %12, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %73, %34
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i64 @nfs_file_direct_read(%struct.kiocb*, %struct.iovec*, i64, i64) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i64, i64) #1

declare dso_local i64 @nfs_revalidate_mapping(%struct.inode*, i32) #1

declare dso_local i32 @nfs_add_stats(%struct.inode*, i32, i64) #1

declare dso_local i64 @generic_file_aio_read(%struct.kiocb*, %struct.iovec*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
