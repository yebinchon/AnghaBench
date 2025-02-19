; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c_hrtimer_get_remaining.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c_hrtimer_get_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }
%struct.hrtimer_clock_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hrtimer_get_remaining(%struct.hrtimer* %0) #0 {
  %2 = alloca %struct.hrtimer*, align 8
  %3 = alloca %struct.hrtimer_clock_base*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %2, align 8
  %6 = load %struct.hrtimer*, %struct.hrtimer** %2, align 8
  %7 = call %struct.hrtimer_clock_base* @lock_hrtimer_base(%struct.hrtimer* %6, i64* %4)
  store %struct.hrtimer_clock_base* %7, %struct.hrtimer_clock_base** %3, align 8
  %8 = load %struct.hrtimer*, %struct.hrtimer** %2, align 8
  %9 = call i32 @hrtimer_expires_remaining(%struct.hrtimer* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.hrtimer*, %struct.hrtimer** %2, align 8
  %11 = call i32 @unlock_hrtimer_base(%struct.hrtimer* %10, i64* %4)
  %12 = load i32, i32* %5, align 4
  ret i32 %12
}

declare dso_local %struct.hrtimer_clock_base* @lock_hrtimer_base(%struct.hrtimer*, i64*) #1

declare dso_local i32 @hrtimer_expires_remaining(%struct.hrtimer*) #1

declare dso_local i32 @unlock_hrtimer_base(%struct.hrtimer*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
