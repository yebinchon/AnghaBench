; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_ioport_event_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_ioport_event_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.event_key = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"kvm:kvm_pio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*)* @ioport_event_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioport_event_begin(%struct.perf_evsel* %0, %struct.perf_sample* %1, %struct.event_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.event_key*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store %struct.event_key* %2, %struct.event_key** %7, align 8
  %8 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %9 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strcmp(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %15 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %16 = load %struct.event_key*, %struct.event_key** %7, align 8
  %17 = call i32 @ioport_event_get_key(%struct.perf_evsel* %14, %struct.perf_sample* %15, %struct.event_key* %16)
  store i32 1, i32* %4, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ioport_event_get_key(%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
