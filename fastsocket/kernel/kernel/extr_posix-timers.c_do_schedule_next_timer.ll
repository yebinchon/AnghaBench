; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_do_schedule_next_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-timers.c_do_schedule_next_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i64, i32, i32 }
%struct.k_itimer = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_schedule_next_timer(%struct.siginfo* %0) #0 {
  %2 = alloca %struct.siginfo*, align 8
  %3 = alloca %struct.k_itimer*, align 8
  %4 = alloca i64, align 8
  store %struct.siginfo* %0, %struct.siginfo** %2, align 8
  %5 = load %struct.siginfo*, %struct.siginfo** %2, align 8
  %6 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.k_itimer* @lock_timer(i32 %7, i64* %4)
  store %struct.k_itimer* %8, %struct.k_itimer** %3, align 8
  %9 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %10 = icmp ne %struct.k_itimer* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %13 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.siginfo*, %struct.siginfo** %2, align 8
  %16 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %21 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %26 = call i32 @posix_cpu_timer_schedule(%struct.k_itimer* %25)
  br label %30

27:                                               ; preds = %19
  %28 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %29 = call i32 @schedule_next_timer(%struct.k_itimer* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %32 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.siginfo*, %struct.siginfo** %2, align 8
  %35 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 8
  br label %40

40:                                               ; preds = %30, %11, %1
  %41 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %42 = icmp ne %struct.k_itimer* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.k_itimer*, %struct.k_itimer** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @unlock_timer(%struct.k_itimer* %44, i64 %45)
  br label %47

47:                                               ; preds = %43, %40
  ret void
}

declare dso_local %struct.k_itimer* @lock_timer(i32, i64*) #1

declare dso_local i32 @posix_cpu_timer_schedule(%struct.k_itimer*) #1

declare dso_local i32 @schedule_next_timer(%struct.k_itimer*) #1

declare dso_local i32 @unlock_timer(%struct.k_itimer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
