; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_try_worker_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_try_worker_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_worker_thread = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_worker_thread*)* @try_worker_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_worker_shutdown(%struct.btrfs_worker_thread* %0) #0 {
  %2 = alloca %struct.btrfs_worker_thread*, align 8
  %3 = alloca i32, align 4
  store %struct.btrfs_worker_thread* %0, %struct.btrfs_worker_thread** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %5 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %13 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %58

18:                                               ; preds = %1
  %19 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %25 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %23
  %29 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %30 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %29, i32 0, i32 2
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %28
  %34 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %35 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %34, i32 0, i32 5
  %36 = call i64 @list_empty(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %40 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %39, i32 0, i32 4
  %41 = call i64 @list_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %45 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %44, i32 0, i32 3
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  %49 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %50 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %49, i32 0, i32 2
  %51 = call i32 @list_del_init(i32* %50)
  %52 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %53 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %48, %43, %38, %33, %28, %23, %18, %1
  %59 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %60 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %65 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %2, align 8
  %71 = call i32 @put_worker(%struct.btrfs_worker_thread* %70)
  br label %72

72:                                               ; preds = %69, %58
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @put_worker(%struct.btrfs_worker_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
