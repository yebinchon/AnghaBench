; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_destroy_mempool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_destroy_mempool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpc_buffer_mempool = common dso_local global i64 0, align 8
@rpc_task_mempool = common dso_local global i64 0, align 8
@rpc_task_slabp = common dso_local global i64 0, align 8
@rpc_buffer_slabp = common dso_local global i64 0, align 8
@delay_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_destroy_mempool() #0 {
  %1 = call i32 (...) @rpciod_stop()
  %2 = load i64, i64* @rpc_buffer_mempool, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @rpc_buffer_mempool, align 8
  %6 = call i32 @mempool_destroy(i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @rpc_task_mempool, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, i64* @rpc_task_mempool, align 8
  %12 = call i32 @mempool_destroy(i64 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i64, i64* @rpc_task_slabp, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* @rpc_task_slabp, align 8
  %18 = call i32 @kmem_cache_destroy(i64 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* @rpc_buffer_slabp, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @rpc_buffer_slabp, align 8
  %24 = call i32 @kmem_cache_destroy(i64 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 @rpc_destroy_wait_queue(i32* @delay_queue)
  ret void
}

declare dso_local i32 @rpciod_stop(...) #1

declare dso_local i32 @mempool_destroy(i64) #1

declare dso_local i32 @kmem_cache_destroy(i64) #1

declare dso_local i32 @rpc_destroy_wait_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
