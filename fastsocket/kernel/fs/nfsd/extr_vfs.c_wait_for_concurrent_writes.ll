; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_wait_for_concurrent_writes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_wait_for_concurrent_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }

@wait_for_concurrent_writes.last_ino = internal global i64 0, align 8
@wait_for_concurrent_writes.last_dev = internal global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"nfsd: write defer %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"nfsd: write resume %d\0A\00", align 1
@I_DIRTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"nfsd: write sync %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @wait_for_concurrent_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_concurrent_writes(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 3
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %29, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* @wait_for_concurrent_writes.last_ino, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load i64, i64* @wait_for_concurrent_writes.last_dev, align 8
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %22, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21, %1
  %30 = load i32, i32* @current, align 4
  %31 = call i32 @task_pid_nr(i32 %30)
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @msleep(i32 10)
  %34 = load i32, i32* @current, align 4
  %35 = call i32 @task_pid_nr(i32 %34)
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %29, %21, %15
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I_DIRTY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32, i32* @current, align 4
  %46 = call i32 @task_pid_nr(i32 %45)
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.file*, %struct.file** %2, align 8
  %49 = load %struct.file*, %struct.file** %2, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @vfs_fsync(%struct.file* %48, %struct.TYPE_6__* %52, i32 0)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %37
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* @wait_for_concurrent_writes.last_ino, align 8
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* @wait_for_concurrent_writes.last_dev, align 8
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vfs_fsync(%struct.file*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
