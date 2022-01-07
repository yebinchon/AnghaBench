; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_llseek_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_llseek_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.nfs_open_dir_context*, %struct.TYPE_5__ }
%struct.nfs_open_dir_context = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.inode* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32 }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NFS: llseek dir(%s/%s, %lld, %d)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @nfs_llseek_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_llseek_dir(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nfs_open_dir_context*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %18, align 8
  store %struct.nfs_open_dir_context* %19, %struct.nfs_open_dir_context** %9, align 8
  %20 = load i32, i32* @FILE, align 4
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dfprintk(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i64 %31, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %49 [
    i32 1, label %38
    i32 0, label %44
  ]

38:                                               ; preds = %3
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %3, %38
  %45 = load i64, i64* %5, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %52

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %3, %48
  %50 = load i64, i64* @EINVAL, align 8
  %51 = sub nsw i64 0, %50
  store i64 %51, i64* %5, align 8
  br label %67

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %9, align 8
  %63 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %9, align 8
  %65 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %58, %52
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
