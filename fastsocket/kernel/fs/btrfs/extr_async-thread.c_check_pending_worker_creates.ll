; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_check_pending_worker_creates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_check_pending_worker_creates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_worker_thread = type { %struct.btrfs_workers* }
%struct.btrfs_workers = type { i64, i64, i64, i32, i32, i64 }
%struct.worker_start = type { %struct.TYPE_2__, %struct.btrfs_workers* }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@start_new_worker_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_worker_thread*)* @check_pending_worker_creates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pending_worker_creates(%struct.btrfs_worker_thread* %0) #0 {
  %2 = alloca %struct.btrfs_worker_thread*, align 8
  %3 = alloca %struct.btrfs_workers*, align 8
  %4 = alloca %struct.worker_start*, align 8
  %5 = alloca i64, align 8
  store %struct.btrfs_worker_thread* %0, %struct.btrfs_worker_thread** %2, align 8
  %6 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %6, i32 0, i32 0
  %8 = load %struct.btrfs_workers*, %struct.btrfs_workers** %7, align 8
  store %struct.btrfs_workers* %8, %struct.btrfs_workers** %3, align 8
  %9 = call i32 (...) @rmb()
  %10 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %75

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call %struct.worker_start* @kzalloc(i32 16, i32 %16)
  store %struct.worker_start* %17, %struct.worker_start** %4, align 8
  %18 = load %struct.worker_start*, %struct.worker_start** %4, align 8
  %19 = icmp ne %struct.worker_start* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %75

21:                                               ; preds = %15
  %22 = load i32, i32* @start_new_worker_func, align 4
  %23 = load %struct.worker_start*, %struct.worker_start** %4, align 8
  %24 = getelementptr inbounds %struct.worker_start, %struct.worker_start* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %27 = load %struct.worker_start*, %struct.worker_start** %4, align 8
  %28 = getelementptr inbounds %struct.worker_start, %struct.worker_start* %27, i32 0, i32 1
  store %struct.btrfs_workers* %26, %struct.btrfs_workers** %28, align 8
  %29 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %29, i32 0, i32 3
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %21
  br label %68

38:                                               ; preds = %21
  %39 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %42 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %45 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %49 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %68

53:                                               ; preds = %38
  %54 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %55 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %59 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %58, i32 0, i32 3
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %63 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.worker_start*, %struct.worker_start** %4, align 8
  %66 = getelementptr inbounds %struct.worker_start, %struct.worker_start* %65, i32 0, i32 0
  %67 = call i32 @btrfs_queue_worker(i32 %64, %struct.TYPE_2__* %66)
  br label %75

68:                                               ; preds = %52, %37
  %69 = load %struct.worker_start*, %struct.worker_start** %4, align 8
  %70 = call i32 @kfree(%struct.worker_start* %69)
  %71 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %72 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %71, i32 0, i32 3
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %68, %53, %20, %14
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local %struct.worker_start* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @btrfs_queue_worker(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.worker_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
