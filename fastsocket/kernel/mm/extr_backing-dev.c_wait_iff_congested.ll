; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_wait_iff_congested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_backing-dev.c_wait_iff_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@wait = common dso_local global i32 0, align 4
@congestion_wqh = common dso_local global i32* null, align 8
@nr_bdi_congested = common dso_local global i32* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wait_iff_congested(%struct.zone* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.zone* %0, %struct.zone** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DEFINE_WAIT(i32 %11)
  %13 = load i32*, i32** @congestion_wqh, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** @nr_bdi_congested, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load %struct.zone*, %struct.zone** %4, align 8
  %25 = call i32 @zone_is_reclaim_congested(%struct.zone* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23, %3
  %28 = call i32 (...) @cond_resched()
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %30, %31
  %33 = sub i64 %29, %32
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %36, %27
  br label %46

38:                                               ; preds = %23
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %41 = call i32 @prepare_to_wait(i32* %39, i32* @wait, i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @io_schedule_timeout(i64 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @finish_wait(i32* %44, i32* @wait)
  br label %46

46:                                               ; preds = %38, %37
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @zone_is_reclaim_congested(%struct.zone*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @io_schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
