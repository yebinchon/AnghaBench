; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_ctx_remove_wait_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_ctx_remove_wait_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventfd_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@POLLOUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eventfd_ctx_remove_wait_queue(%struct.eventfd_ctx* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.eventfd_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.eventfd_ctx* %0, %struct.eventfd_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = call i32 @eventfd_ctx_do_read(%struct.eventfd_ctx* %13, i64* %14)
  %16 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %16, i32 0, i32 0
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @__remove_wait_queue(%struct.TYPE_4__* %17, i32* %18)
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %24, i32 0, i32 0
  %26 = call i64 @waitqueue_active(%struct.TYPE_4__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* @POLLOUT, align 4
  %32 = call i32 @wake_up_locked_poll(%struct.TYPE_4__* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23, %3
  %34 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  ret i32 %47
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @eventfd_ctx_do_read(%struct.eventfd_ctx*, i64*) #1

declare dso_local i32 @__remove_wait_queue(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @waitqueue_active(%struct.TYPE_4__*) #1

declare dso_local i32 @wake_up_locked_poll(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
