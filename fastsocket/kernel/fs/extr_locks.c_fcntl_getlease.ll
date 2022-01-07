; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_fcntl_getlease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_fcntl_getlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.file_lock* }
%struct.file_lock = type { i32, %struct.file*, %struct.file_lock* }

@F_UNLCK = common dso_local global i32 0, align 4
@F_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcntl_getlease(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load i32, i32* @F_UNLCK, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 (...) @lock_kernel()
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call i32 @time_out_leases(%struct.TYPE_6__* %12)
  %14 = load %struct.file*, %struct.file** %2, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.file_lock*, %struct.file_lock** %20, align 8
  store %struct.file_lock* %21, %struct.file_lock** %3, align 8
  br label %22

22:                                               ; preds = %45, %1
  %23 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %24 = icmp ne %struct.file_lock* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %27 = call i64 @IS_LEASE(%struct.file_lock* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  %32 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 1
  %34 = load %struct.file*, %struct.file** %33, align 8
  %35 = load %struct.file*, %struct.file** %2, align 8
  %36 = icmp eq %struct.file* %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @F_INPROGRESS, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %47 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %46, i32 0, i32 2
  %48 = load %struct.file_lock*, %struct.file_lock** %47, align 8
  store %struct.file_lock* %48, %struct.file_lock** %3, align 8
  br label %22

49:                                               ; preds = %37, %29
  %50 = call i32 (...) @unlock_kernel()
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @time_out_leases(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_LEASE(%struct.file_lock*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
