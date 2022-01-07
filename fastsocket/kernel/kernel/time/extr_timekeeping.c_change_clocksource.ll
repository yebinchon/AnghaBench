; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_change_clocksource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timekeeping.c_change_clocksource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.clocksource* }
%struct.clocksource = type { i64 (%struct.clocksource*)*, i32 (%struct.clocksource*)* }

@timekeeper = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @change_clocksource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_clocksource(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.clocksource*, align 8
  %4 = alloca %struct.clocksource*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.clocksource*
  store %struct.clocksource* %7, %struct.clocksource** %3, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @write_seqlock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i64 %8)
  %10 = call i32 (...) @timekeeping_forward_now()
  %11 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %12 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %11, i32 0, i32 0
  %13 = load i64 (%struct.clocksource*)*, i64 (%struct.clocksource*)** %12, align 8
  %14 = icmp ne i64 (%struct.clocksource*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %17 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %16, i32 0, i32 0
  %18 = load i64 (%struct.clocksource*)*, i64 (%struct.clocksource*)** %17, align 8
  %19 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %20 = call i64 %18(%struct.clocksource* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15, %1
  %23 = load %struct.clocksource*, %struct.clocksource** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 1), align 8
  store %struct.clocksource* %23, %struct.clocksource** %4, align 8
  %24 = load %struct.clocksource*, %struct.clocksource** %3, align 8
  %25 = call i32 @timekeeper_setup_internals(%struct.clocksource* %24)
  %26 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %27 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %26, i32 0, i32 1
  %28 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %27, align 8
  %29 = icmp ne i32 (%struct.clocksource*)* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %32 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %31, i32 0, i32 1
  %33 = load i32 (%struct.clocksource*)*, i32 (%struct.clocksource*)** %32, align 8
  %34 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %35 = call i32 %33(%struct.clocksource* %34)
  br label %36

36:                                               ; preds = %30, %22
  br label %37

37:                                               ; preds = %36, %15
  %38 = call i32 @timekeeping_update(i32 1)
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @write_sequnlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timekeeper, i32 0, i32 0), i64 %39)
  ret i32 0
}

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @timekeeping_forward_now(...) #1

declare dso_local i32 @timekeeper_setup_internals(%struct.clocksource*) #1

declare dso_local i32 @timekeeping_update(i32) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
