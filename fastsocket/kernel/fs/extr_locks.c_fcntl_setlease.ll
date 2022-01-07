; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_fcntl_setlease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_fcntl_setlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i64, i64, i32 }

@F_UNLCK = common dso_local global i64 0, align 8
@F_INPROGRESS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcntl_setlease(i32 %0, %struct.file* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file_lock, align 8
  %9 = alloca %struct.file_lock*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.file* %1, %struct.file** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.file_lock* %8, %struct.file_lock** %9, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %10, align 8
  %18 = call i32 @locks_init_lock(%struct.file_lock* %8)
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @lease_init(%struct.file* %19, i64 %20, %struct.file_lock* %8)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %67

26:                                               ; preds = %3
  %27 = call i32 (...) @lock_kernel()
  %28 = load %struct.file*, %struct.file** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @vfs_setlease(%struct.file* %28, i64 %29, %struct.file_lock** %9)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @F_UNLCK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %26
  br label %64

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.file*, %struct.file** %6, align 8
  %41 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %42 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %41, i32 0, i32 2
  %43 = call i32 @fasync_helper(i32 %39, %struct.file* %40, i32 1, i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load i64, i64* @F_UNLCK, align 8
  %48 = load i64, i64* @F_INPROGRESS, align 8
  %49 = or i64 %47, %48
  %50 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* @jiffies, align 8
  %53 = sub nsw i64 %52, 10
  %54 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %55 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = call i32 @time_out_leases(%struct.inode* %56)
  br label %64

58:                                               ; preds = %38
  %59 = load %struct.file*, %struct.file** %6, align 8
  %60 = load i32, i32* @current, align 4
  %61 = call i32 @task_pid(i32 %60)
  %62 = load i32, i32* @PIDTYPE_PID, align 4
  %63 = call i32 @__f_setown(%struct.file* %59, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %58, %46, %37
  %65 = call i32 (...) @unlock_kernel()
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @locks_init_lock(%struct.file_lock*) #1

declare dso_local i32 @lease_init(%struct.file*, i64, %struct.file_lock*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @vfs_setlease(%struct.file*, i64, %struct.file_lock**) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @time_out_leases(%struct.inode*) #1

declare dso_local i32 @__f_setown(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
