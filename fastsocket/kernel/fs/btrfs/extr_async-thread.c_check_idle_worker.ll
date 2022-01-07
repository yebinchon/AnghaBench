; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_check_idle_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_check_idle_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_worker_thread = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_worker_thread*)* @check_idle_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_idle_worker(%struct.btrfs_worker_thread* %0) #0 {
  %2 = alloca %struct.btrfs_worker_thread*, align 8
  %3 = alloca i64, align 8
  store %struct.btrfs_worker_thread* %0, %struct.btrfs_worker_thread** %2, align 8
  %4 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %1
  %9 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %9, i32 0, i32 3
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %13 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 2
  %18 = icmp slt i32 %11, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %8
  %20 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %21 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %27 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %29 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %28, i32 0, i32 2
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %19
  %33 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %34 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %33, i32 0, i32 2
  %35 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = call i32 @list_move(i32* %34, i32* %38)
  br label %40

40:                                               ; preds = %32, %19
  %41 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %42 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %8, %1
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
