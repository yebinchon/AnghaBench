; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_btrfs_queue_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_btrfs_queue_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_workers = type { i32, i32, i32, i64 }
%struct.btrfs_work = type { i32, i32, i32 }
%struct.btrfs_worker_thread = type { i32, i32, i32, i32, i32 }

@WORK_QUEUED_BIT = common dso_local global i32 0, align 4
@WORK_HIGH_PRIO_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_queue_worker(%struct.btrfs_workers* %0, %struct.btrfs_work* %1) #0 {
  %3 = alloca %struct.btrfs_workers*, align 8
  %4 = alloca %struct.btrfs_work*, align 8
  %5 = alloca %struct.btrfs_worker_thread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.btrfs_workers* %0, %struct.btrfs_workers** %3, align 8
  store %struct.btrfs_work* %1, %struct.btrfs_work** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @WORK_QUEUED_BIT, align 4
  %9 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %9, i32 0, i32 1
  %11 = call i64 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %16 = call %struct.btrfs_worker_thread* @find_worker(%struct.btrfs_workers* %15)
  store %struct.btrfs_worker_thread* %16, %struct.btrfs_worker_thread** %5, align 8
  %17 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %18 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %14
  %22 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* @WORK_HIGH_PRIO_BIT, align 4
  %26 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %31, i32 0, i32 2
  %33 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %33, i32 0, i32 2
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %38 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %37, i32 0, i32 2
  %39 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %40 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %39, i32 0, i32 1
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %44 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %50

46:                                               ; preds = %14
  %47 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %48 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %5, align 8
  %52 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %51, i32 0, i32 1
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load i32, i32* @WORK_HIGH_PRIO_BIT, align 4
  %56 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %57 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %56, i32 0, i32 1
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %62 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %61, i32 0, i32 0
  %63 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %63, i32 0, i32 4
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  br label %72

66:                                               ; preds = %50
  %67 = load %struct.btrfs_work*, %struct.btrfs_work** %4, align 8
  %68 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %67, i32 0, i32 0
  %69 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %69, i32 0, i32 3
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %5, align 8
  %74 = call i32 @check_busy_worker(%struct.btrfs_worker_thread* %73)
  %75 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %5, align 8
  %76 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %72
  %81 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %5, align 8
  %82 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %5, align 8
  %87 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wake_up_process(i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %5, align 8
  %92 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %91, i32 0, i32 1
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %90, %13
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.btrfs_worker_thread* @find_worker(%struct.btrfs_workers*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @check_busy_worker(%struct.btrfs_worker_thread*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
