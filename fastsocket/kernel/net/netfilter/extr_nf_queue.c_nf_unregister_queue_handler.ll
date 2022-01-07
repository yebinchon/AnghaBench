; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_unregister_queue_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_unregister_queue_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_handler = type { i32 }

@queue_handler = common dso_local global %struct.nf_queue_handler** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@queue_handler_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_unregister_queue_handler(i64 %0, %struct.nf_queue_handler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.nf_queue_handler*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.nf_queue_handler* %1, %struct.nf_queue_handler** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.nf_queue_handler** %7)
  %9 = icmp uge i64 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = call i32 @mutex_lock(i32* @queue_handler_mutex)
  %15 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.nf_queue_handler*, %struct.nf_queue_handler** %15, i64 %16
  %18 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %17, align 8
  %19 = icmp ne %struct.nf_queue_handler* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.nf_queue_handler*, %struct.nf_queue_handler** %21, i64 %22
  %24 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %23, align 8
  %25 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %5, align 8
  %26 = icmp ne %struct.nf_queue_handler* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = call i32 @mutex_unlock(i32* @queue_handler_mutex)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %20, %13
  %32 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.nf_queue_handler*, %struct.nf_queue_handler** %32, i64 %33
  %35 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %34, align 8
  %36 = call i32 @rcu_assign_pointer(%struct.nf_queue_handler* %35, i32* null)
  %37 = call i32 @mutex_unlock(i32* @queue_handler_mutex)
  %38 = call i32 (...) @synchronize_rcu()
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %27, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @ARRAY_SIZE(%struct.nf_queue_handler**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.nf_queue_handler*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
