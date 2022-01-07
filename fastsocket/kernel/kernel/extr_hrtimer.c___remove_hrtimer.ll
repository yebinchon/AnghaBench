; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c___remove_hrtimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c___remove_hrtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32, i32 }
%struct.hrtimer_clock_base = type { i32, %struct.TYPE_7__*, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@HRTIMER_STATE_ENQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrtimer*, %struct.hrtimer_clock_base*, i64, i32)* @__remove_hrtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__remove_hrtimer(%struct.hrtimer* %0, %struct.hrtimer_clock_base* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hrtimer*, align 8
  %6 = alloca %struct.hrtimer_clock_base*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %5, align 8
  store %struct.hrtimer_clock_base* %1, %struct.hrtimer_clock_base** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %10 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HRTIMER_STATE_ENQUEUED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %35

16:                                               ; preds = %4
  %17 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %6, align 8
  %18 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %21 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %20, i32 0, i32 1
  %22 = icmp eq i32* %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %25 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %24, i32 0, i32 1
  %26 = call i32* @rb_next(i32* %25)
  %27 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %6, align 8
  %28 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %31 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %30, i32 0, i32 1
  %32 = load %struct.hrtimer_clock_base*, %struct.hrtimer_clock_base** %6, align 8
  %33 = getelementptr inbounds %struct.hrtimer_clock_base, %struct.hrtimer_clock_base* %32, i32 0, i32 0
  %34 = call i32 @rb_erase(i32* %31, i32* %33)
  br label %35

35:                                               ; preds = %29, %15
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %39 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32* @rb_next(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
