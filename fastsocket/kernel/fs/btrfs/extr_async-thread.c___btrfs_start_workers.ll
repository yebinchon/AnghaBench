; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c___btrfs_start_workers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c___btrfs_start_workers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_workers = type { i64, i32, i64, i32, i32 }
%struct.btrfs_worker_thread = type { i32, i32, i32, %struct.btrfs_workers*, i32, i32, i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@worker_loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"btrfs-%s-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_workers*)* @__btrfs_start_workers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_start_workers(%struct.btrfs_workers* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_workers*, align 8
  %4 = alloca %struct.btrfs_worker_thread*, align 8
  %5 = alloca i32, align 4
  store %struct.btrfs_workers* %0, %struct.btrfs_workers** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call %struct.btrfs_worker_thread* @kzalloc(i32 48, i32 %6)
  store %struct.btrfs_worker_thread* %7, %struct.btrfs_worker_thread** %4, align 8
  %8 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %9 = icmp ne %struct.btrfs_worker_thread* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %87

13:                                               ; preds = %1
  %14 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %14, i32 0, i32 8
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %17, i32 0, i32 7
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %20, i32 0, i32 1
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %23, i32 0, i32 6
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %26, i32 0, i32 5
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %29, i32 0, i32 4
  %31 = call i32 @atomic_set(i32* %30, i32 1)
  %32 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %33 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %34 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %33, i32 0, i32 3
  store %struct.btrfs_workers* %32, %struct.btrfs_workers** %34, align 8
  %35 = load i32, i32* @worker_loop, align 4
  %36 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %37 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %38 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %41 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 @kthread_run(i32 %35, %struct.btrfs_worker_thread* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %43)
  %45 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %46 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %48 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %13
  %53 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %54 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %58 = call i32 @kfree(%struct.btrfs_worker_thread* %57)
  br label %87

59:                                               ; preds = %13
  %60 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %61 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %60, i32 0, i32 1
  %62 = call i32 @spin_lock_irq(i32* %61)
  %63 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %64 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %63, i32 0, i32 1
  %65 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %66 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %65, i32 0, i32 3
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %69 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %71 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %75 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %79 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @WARN_ON(i32 %82)
  %84 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %85 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock_irq(i32* %85)
  store i32 0, i32* %2, align 4
  br label %99

87:                                               ; preds = %52, %10
  %88 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %89 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %88, i32 0, i32 1
  %90 = call i32 @spin_lock_irq(i32* %89)
  %91 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %92 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.btrfs_workers*, %struct.btrfs_workers** %3, align 8
  %96 = getelementptr inbounds %struct.btrfs_workers, %struct.btrfs_workers* %95, i32 0, i32 1
  %97 = call i32 @spin_unlock_irq(i32* %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %87, %59
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.btrfs_worker_thread* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kthread_run(i32, %struct.btrfs_worker_thread*, i8*, i32, i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_worker_thread*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
