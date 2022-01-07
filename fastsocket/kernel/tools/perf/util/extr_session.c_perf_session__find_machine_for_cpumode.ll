; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__find_machine_for_cpumode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__find_machine_for_cpumode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.perf_session = type { i32 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PERF_RECORD_MISC_CPUMODE_MASK = common dso_local global i64 0, align 8
@perf_guest = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_USER = common dso_local global i64 0, align 8
@PERF_RECORD_MMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.machine* (%struct.perf_session*, %union.perf_event*)* @perf_session__find_machine_for_cpumode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.machine* @perf_session__find_machine_for_cpumode(%struct.perf_session* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %8 = load %union.perf_event*, %union.perf_event** %5, align 8
  %9 = bitcast %union.perf_event* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PERF_RECORD_MISC_CPUMODE_MASK, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* @perf_guest, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @PERF_RECORD_MISC_GUEST_KERNEL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @PERF_RECORD_MISC_GUEST_USER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20, %16
  %25 = load %union.perf_event*, %union.perf_event** %5, align 8
  %26 = bitcast %union.perf_event* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PERF_RECORD_MMAP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %union.perf_event*, %union.perf_event** %5, align 8
  %33 = bitcast %union.perf_event* %32 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  br label %41

36:                                               ; preds = %24
  %37 = load %union.perf_event*, %union.perf_event** %5, align 8
  %38 = bitcast %union.perf_event* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.machine* @perf_session__findnew_machine(%struct.perf_session* %42, i32 %43)
  store %struct.machine* %44, %struct.machine** %3, align 8
  br label %48

45:                                               ; preds = %20, %2
  %46 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %47 = call %struct.machine* @perf_session__find_host_machine(%struct.perf_session* %46)
  store %struct.machine* %47, %struct.machine** %3, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.machine*, %struct.machine** %3, align 8
  ret %struct.machine* %49
}

declare dso_local %struct.machine* @perf_session__findnew_machine(%struct.perf_session*, i32) #1

declare dso_local %struct.machine* @perf_session__find_host_machine(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
