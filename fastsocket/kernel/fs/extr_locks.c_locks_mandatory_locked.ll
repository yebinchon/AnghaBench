; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_mandatory_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_mandatory_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.inode = type { %struct.file_lock* }
%struct.file_lock = type { i64, %struct.file_lock* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @locks_mandatory_locked(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.file_lock*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = call i32 (...) @lock_kernel()
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.file_lock*, %struct.file_lock** %10, align 8
  store %struct.file_lock* %11, %struct.file_lock** %4, align 8
  br label %12

12:                                               ; preds = %28, %1
  %13 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %14 = icmp ne %struct.file_lock* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %17 = call i32 @IS_POSIX(%struct.file_lock* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %28

20:                                               ; preds = %15
  %21 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %32

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %19
  %29 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %30 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %29, i32 0, i32 1
  %31 = load %struct.file_lock*, %struct.file_lock** %30, align 8
  store %struct.file_lock* %31, %struct.file_lock** %4, align 8
  br label %12

32:                                               ; preds = %26, %12
  %33 = call i32 (...) @unlock_kernel()
  %34 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %35 = icmp ne %struct.file_lock* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  ret i32 %41
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @IS_POSIX(%struct.file_lock*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
