; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_swevent_overflow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_swevent_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@MAX_INTERRUPTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i64, %struct.perf_sample_data*, %struct.pt_regs*)* @perf_swevent_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_swevent_overflow(%struct.perf_event* %0, i64 %1, %struct.perf_sample_data* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.perf_sample_data*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.hw_perf_event*, align 8
  %10 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.perf_sample_data* %2, %struct.perf_sample_data** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = call i64 @perf_swevent_set_period(%struct.perf_event* %16)
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %9, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_INTERRUPTS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %41

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.perf_sample_data*, %struct.perf_sample_data** %7, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %34 = call i64 @__perf_event_overflow(%struct.perf_event* %30, i32 %31, %struct.perf_sample_data* %32, %struct.pt_regs* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %41

37:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %6, align 8
  br label %26

41:                                               ; preds = %24, %36, %26
  ret void
}

declare dso_local i64 @perf_swevent_set_period(%struct.perf_event*) #1

declare dso_local i64 @__perf_event_overflow(%struct.perf_event*, i32, %struct.perf_sample_data*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
