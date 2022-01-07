; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_unregister_queue_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_unregister_queue_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_handler = type { i32 }

@queue_handler_mutex = common dso_local global i32 0, align 4
@queue_handler = common dso_local global %struct.nf_queue_handler** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_unregister_queue_handlers(%struct.nf_queue_handler* %0) #0 {
  %2 = alloca %struct.nf_queue_handler*, align 8
  %3 = alloca i64, align 8
  store %struct.nf_queue_handler* %0, %struct.nf_queue_handler** %2, align 8
  %4 = call i32 @mutex_lock(i32* @queue_handler_mutex)
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.nf_queue_handler** %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.nf_queue_handler*, %struct.nf_queue_handler** %11, i64 %12
  %14 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %13, align 8
  %15 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %2, align 8
  %16 = icmp eq %struct.nf_queue_handler* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.nf_queue_handler*, %struct.nf_queue_handler** %18, i64 %19
  %21 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %20, align 8
  %22 = call i32 @rcu_assign_pointer(%struct.nf_queue_handler* %21, i32* null)
  br label %23

23:                                               ; preds = %17, %10
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %5

27:                                               ; preds = %5
  %28 = call i32 @mutex_unlock(i32* @queue_handler_mutex)
  %29 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.nf_queue_handler**) #1

declare dso_local i32 @rcu_assign_pointer(%struct.nf_queue_handler*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
