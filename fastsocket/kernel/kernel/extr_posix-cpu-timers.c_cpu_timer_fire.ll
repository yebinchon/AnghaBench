; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_cpu_timer_fire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_cpu_timer_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { i32, %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*)* @cpu_timer_fire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_timer_fire(%struct.k_itimer* %0) #0 {
  %2 = alloca %struct.k_itimer*, align 8
  store %struct.k_itimer* %0, %struct.k_itimer** %2, align 8
  %3 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %4 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %12 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wake_up_process(i32 %13)
  %15 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %16 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %22 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %30 = call i64 @posix_timer_event(%struct.k_itimer* %29, i32 0)
  %31 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %32 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %48

36:                                               ; preds = %20
  %37 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %38 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %39 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = call i64 @posix_timer_event(%struct.k_itimer* %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.k_itimer*, %struct.k_itimer** %2, align 8
  %46 = call i32 @posix_cpu_timer_schedule(%struct.k_itimer* %45)
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i64 @posix_timer_event(%struct.k_itimer*, i32) #1

declare dso_local i32 @posix_cpu_timer_schedule(%struct.k_itimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
