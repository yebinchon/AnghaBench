; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_register_queue_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_register_queue_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_handler = type { i32 }

@queue_handler = common dso_local global %struct.nf_queue_handler** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@queue_handler_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_register_queue_handler(i64 %0, %struct.nf_queue_handler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.nf_queue_handler*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.nf_queue_handler* %1, %struct.nf_queue_handler** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %9 = call i64 @ARRAY_SIZE(%struct.nf_queue_handler** %8)
  %10 = icmp uge i64 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = call i32 @mutex_lock(i32* @queue_handler_mutex)
  %16 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.nf_queue_handler*, %struct.nf_queue_handler** %16, i64 %17
  %19 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %18, align 8
  %20 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %5, align 8
  %21 = icmp eq %struct.nf_queue_handler* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.nf_queue_handler*, %struct.nf_queue_handler** %26, i64 %27
  %29 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %28, align 8
  %30 = icmp ne %struct.nf_queue_handler* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %41

34:                                               ; preds = %25
  %35 = load %struct.nf_queue_handler**, %struct.nf_queue_handler*** @queue_handler, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.nf_queue_handler*, %struct.nf_queue_handler** %35, i64 %36
  %38 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %37, align 8
  %39 = load %struct.nf_queue_handler*, %struct.nf_queue_handler** %5, align 8
  %40 = call i32 @rcu_assign_pointer(%struct.nf_queue_handler* %38, %struct.nf_queue_handler* %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %31
  br label %42

42:                                               ; preds = %41, %22
  %43 = call i32 @mutex_unlock(i32* @queue_handler_mutex)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @ARRAY_SIZE(%struct.nf_queue_handler**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.nf_queue_handler*, %struct.nf_queue_handler*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
