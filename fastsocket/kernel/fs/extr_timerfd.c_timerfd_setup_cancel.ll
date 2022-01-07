; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_timerfd.c_timerfd_setup_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_timerfd.c_timerfd_setup_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timerfd_ctx = type { i64, i32, i32 }

@CLOCK_REALTIME = common dso_local global i64 0, align 8
@TFD_TIMER_ABSTIME = common dso_local global i32 0, align 4
@TFD_TIMER_CANCEL_ON_SET = common dso_local global i32 0, align 4
@cancel_lock = common dso_local global i32 0, align 4
@cancel_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timerfd_ctx*, i32)* @timerfd_setup_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timerfd_setup_cancel(%struct.timerfd_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.timerfd_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.timerfd_ctx* %0, %struct.timerfd_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CLOCK_REALTIME, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TFD_TIMER_ABSTIME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TFD_TIMER_CANCEL_ON_SET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = call i32 @spin_lock(i32* @cancel_lock)
  %29 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %29, i32 0, i32 2
  %31 = call i32 @list_add_rcu(i32* %30, i32* @cancel_list)
  %32 = call i32 @spin_unlock(i32* @cancel_lock)
  br label %33

33:                                               ; preds = %25, %20
  br label %43

34:                                               ; preds = %15, %10, %2
  %35 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.timerfd_ctx, %struct.timerfd_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.timerfd_ctx*, %struct.timerfd_ctx** %3, align 8
  %41 = call i32 @timerfd_remove_cancel(%struct.timerfd_ctx* %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %33
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @timerfd_remove_cancel(%struct.timerfd_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
