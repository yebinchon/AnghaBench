; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_btrfs_requeue_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_btrfs_requeue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_work = type { i32, i32, %struct.btrfs_worker_thread* }
%struct.btrfs_worker_thread = type { i32, i32, i32, %struct.TYPE_2__*, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@WORK_QUEUED_BIT = common dso_local global i32 0, align 4
@WORK_HIGH_PRIO_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_requeue_work(%struct.btrfs_work* %0) #0 {
  %2 = alloca %struct.btrfs_work*, align 8
  %3 = alloca %struct.btrfs_worker_thread*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_work* %0, %struct.btrfs_work** %2, align 8
  %6 = load %struct.btrfs_work*, %struct.btrfs_work** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %6, i32 0, i32 2
  %8 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %7, align 8
  store %struct.btrfs_worker_thread* %8, %struct.btrfs_worker_thread** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @WORK_QUEUED_BIT, align 4
  %10 = load %struct.btrfs_work*, %struct.btrfs_work** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %10, i32 0, i32 1
  %12 = call i64 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %86

15:                                               ; preds = %1
  %16 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32, i32* @WORK_HIGH_PRIO_BIT, align 4
  %21 = load %struct.btrfs_work*, %struct.btrfs_work** %2, align 8
  %22 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.btrfs_work*, %struct.btrfs_work** %2, align 8
  %27 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %26, i32 0, i32 0
  %28 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %28, i32 0, i32 8
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  br label %37

31:                                               ; preds = %15
  %32 = load %struct.btrfs_work*, %struct.btrfs_work** %2, align 8
  %33 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %32, i32 0, i32 0
  %34 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %34, i32 0, i32 7
  %36 = call i32 @list_add_tail(i32* %33, i32* %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %39 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %38, i32 0, i32 6
  %40 = call i32 @atomic_inc(i32* %39)
  %41 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %42 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %52 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %54 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %53, i32 0, i32 4
  %55 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %56 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = call i32 @list_move_tail(i32* %54, i32* %58)
  %60 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %61 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %45, %37
  %66 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %67 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  store i32 1, i32* %5, align 4
  %71 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %72 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %78 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @wake_up_process(i32 %79)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %3, align 8
  %83 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %82, i32 0, i32 1
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %81, %14
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
