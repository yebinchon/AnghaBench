; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_schedule_next_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_schedule_next_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.hrtimer }
%struct.TYPE_8__ = type { i64 }
%struct.hrtimer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*)* @schedule_next_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_next_timer(%struct.k_itimer* %0) #0 {
  %2 = alloca %struct.k_itimer*, align 8
  %3 = alloca %struct.hrtimer*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %2, align 8
  %4 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %5 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store %struct.hrtimer* %7, %struct.hrtimer** %3, align 8
  %8 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %9 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %18 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %19 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (...)*, i32 (...)** %21, align 8
  %23 = call i32 (...) %22()
  %24 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %25 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @hrtimer_forward(%struct.hrtimer* %17, i32 %23, i64 %29)
  %31 = trunc i64 %30 to i32
  %32 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %33 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %37 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %40 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %42 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %44 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %48 = call i32 @hrtimer_restart(%struct.hrtimer* %47)
  br label %49

49:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @hrtimer_forward(%struct.hrtimer*, i32, i64) #1

declare dso_local i32 @hrtimer_restart(%struct.hrtimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
