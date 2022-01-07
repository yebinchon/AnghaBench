; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_..session.h_perf_session__findnew_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_..session.h_perf_session__findnew_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.perf_session = type { i32, %struct.machine }

@HOST_KERNEL_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.machine* (%struct.perf_session*, i64)* @perf_session__findnew_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.machine* @perf_session__findnew_machine(%struct.perf_session* %0, i64 %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca i64, align 8
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HOST_KERNEL_ID, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %11 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %10, i32 0, i32 1
  store %struct.machine* %11, %struct.machine** %3, align 8
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %14 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.machine* @machines__findnew(i32* %14, i64 %15)
  store %struct.machine* %16, %struct.machine** %3, align 8
  br label %17

17:                                               ; preds = %12, %9
  %18 = load %struct.machine*, %struct.machine** %3, align 8
  ret %struct.machine* %18
}

declare dso_local %struct.machine* @machines__findnew(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
