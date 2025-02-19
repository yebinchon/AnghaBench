; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_thread_pool.c_thread_pool_worker_make_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_thread_pool.c_thread_pool_worker_make_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_pool_worker = type { i32, i64, i32, %struct.thread_pool* }
%struct.thread_pool = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_pool_worker*)* @thread_pool_worker_make_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_pool_worker_make_ready(%struct.thread_pool_worker* %0) #0 {
  %2 = alloca %struct.thread_pool_worker*, align 8
  %3 = alloca %struct.thread_pool*, align 8
  store %struct.thread_pool_worker* %0, %struct.thread_pool_worker** %2, align 8
  %4 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %2, align 8
  %5 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %4, i32 0, i32 3
  %6 = load %struct.thread_pool*, %struct.thread_pool** %5, align 8
  store %struct.thread_pool* %6, %struct.thread_pool** %3, align 8
  %7 = load %struct.thread_pool*, %struct.thread_pool** %3, align 8
  %8 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %2, align 8
  %11 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  %15 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %2, align 8
  %16 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %15, i32 0, i32 0
  %17 = load %struct.thread_pool*, %struct.thread_pool** %3, align 8
  %18 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %17, i32 0, i32 3
  %19 = call i32 @list_move_tail(i32* %16, i32* %18)
  %20 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %2, align 8
  %21 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.thread_pool*, %struct.thread_pool** %3, align 8
  %23 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.thread_pool*, %struct.thread_pool** %3, align 8
  %26 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %25, i32 0, i32 2
  %27 = call i32 @wake_up(i32* %26)
  br label %41

28:                                               ; preds = %1
  %29 = load %struct.thread_pool*, %struct.thread_pool** %3, align 8
  %30 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %2, align 8
  %34 = getelementptr inbounds %struct.thread_pool_worker, %struct.thread_pool_worker* %33, i32 0, i32 0
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.thread_pool*, %struct.thread_pool** %3, align 8
  %37 = getelementptr inbounds %struct.thread_pool, %struct.thread_pool* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.thread_pool_worker*, %struct.thread_pool_worker** %2, align 8
  %40 = call i32 @thread_pool_exit_worker(%struct.thread_pool_worker* %39)
  br label %41

41:                                               ; preds = %28, %14
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @thread_pool_exit_worker(%struct.thread_pool_worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
