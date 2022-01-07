; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_posix_test_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_posix_test_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.file_lock* }
%struct.file_lock = type { i32, i64, i32, %struct.file_lock* }

@F_UNLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @posix_test_lock(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %6 = call i32 (...) @lock_kernel()
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.file_lock*, %struct.file_lock** %13, align 8
  store %struct.file_lock* %14, %struct.file_lock** %5, align 8
  br label %15

15:                                               ; preds = %30, %2
  %16 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %17 = icmp ne %struct.file_lock* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %20 = call i32 @IS_POSIX(%struct.file_lock* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %30

23:                                               ; preds = %18
  %24 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %25 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %26 = call i64 @posix_locks_conflict(%struct.file_lock* %24, %struct.file_lock* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %34

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %22
  %31 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 3
  %33 = load %struct.file_lock*, %struct.file_lock** %32, align 8
  store %struct.file_lock* %33, %struct.file_lock** %5, align 8
  br label %15

34:                                               ; preds = %28, %15
  %35 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %36 = icmp ne %struct.file_lock* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %39 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %40 = call i32 @__locks_copy_lock(%struct.file_lock* %38, %struct.file_lock* %39)
  %41 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %42 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %47 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @pid_vnr(i64 %48)
  %50 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %45, %37
  br label %57

53:                                               ; preds = %34
  %54 = load i32, i32* @F_UNLCK, align 4
  %55 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @IS_POSIX(%struct.file_lock*) #1

declare dso_local i64 @posix_locks_conflict(%struct.file_lock*, %struct.file_lock*) #1

declare dso_local i32 @__locks_copy_lock(%struct.file_lock*, %struct.file_lock*) #1

declare dso_local i32 @pid_vnr(i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
