; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_mmio_event_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kvm.c_mmio_event_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.event_key = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"kvm:kvm_mmio\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@KVM_TRACE_MMIO_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*)* @mmio_event_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_event_end(%struct.perf_evsel* %0, %struct.perf_sample* %1, %struct.event_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.event_key*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %5, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %6, align 8
  store %struct.event_key* %2, %struct.event_key** %7, align 8
  %8 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %9 = call i64 @kvm_entry_event(%struct.perf_evsel* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %30

12:                                               ; preds = %3
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %20 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %21 = call i64 @perf_evsel__intval(%struct.perf_evsel* %19, %struct.perf_sample* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @KVM_TRACE_MMIO_READ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %26 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %27 = load %struct.event_key*, %struct.event_key** %7, align 8
  %28 = call i32 @mmio_event_get_key(%struct.perf_evsel* %25, %struct.perf_sample* %26, %struct.event_key* %27)
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %18, %12
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %24, %11
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @kvm_entry_event(%struct.perf_evsel*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @perf_evsel__intval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @mmio_event_get_key(%struct.perf_evsel*, %struct.perf_sample*, %struct.event_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
