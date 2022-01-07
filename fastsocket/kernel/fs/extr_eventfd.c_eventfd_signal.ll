; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_eventfd.c_eventfd_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventfd_ctx = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eventfd_signal(%struct.eventfd_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eventfd_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.eventfd_ctx* %0, %struct.eventfd_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @ULLONG_MAX, align 4
  %19 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = load i32, i32* @ULLONG_MAX, align 4
  %27 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %12
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %37, i32 0, i32 1
  %39 = call i64 @waitqueue_active(%struct.TYPE_3__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* @POLLIN, align 4
  %45 = call i32 @wake_up_locked_poll(%struct.TYPE_3__* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.eventfd_ctx, %struct.eventfd_ctx* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %9
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @waitqueue_active(%struct.TYPE_3__*) #1

declare dso_local i32 @wake_up_locked_poll(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
