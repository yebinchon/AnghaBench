; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_check_busy_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_check_busy_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_worker_thread = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_worker_thread*)* @check_busy_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_busy_worker(%struct.btrfs_worker_thread* %0) #0 {
  %2 = alloca %struct.btrfs_worker_thread*, align 8
  %3 = alloca i64, align 8
  store %struct.btrfs_worker_thread* %0, %struct.btrfs_worker_thread** %2, align 8
  %4 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %10 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %9, i32 0, i32 3
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %13 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %11, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %8
  %19 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %26 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %27, i32 0, i32 1
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %18
  %32 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %33 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %32, i32 0, i32 1
  %34 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %35 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i32 @list_move_tail(i32* %33, i32* %37)
  br label %39

39:                                               ; preds = %31, %18
  %40 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %41 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %39, %8, %1
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
