; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_sample_addr_correlates_sym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_sample_addr_correlates_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i64, i64 }

@PERF_TYPE_SOFTWARE = common dso_local global i64 0, align 8
@PERF_COUNT_SW_PAGE_FAULTS = common dso_local global i64 0, align 8
@PERF_COUNT_SW_PAGE_FAULTS_MIN = common dso_local global i64 0, align 8
@PERF_COUNT_SW_PAGE_FAULTS_MAJ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event_attr*)* @sample_addr_correlates_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sample_addr_correlates_sym(%struct.perf_event_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event_attr*, align 8
  store %struct.perf_event_attr* %0, %struct.perf_event_attr** %3, align 8
  %4 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %5 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PERF_TYPE_SOFTWARE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PERF_COUNT_SW_PAGE_FAULTS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %17 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PERF_COUNT_SW_PAGE_FAULTS_MIN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PERF_COUNT_SW_PAGE_FAULTS_MAJ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15, %9
  store i32 1, i32* %2, align 4
  br label %34

28:                                               ; preds = %21, %1
  %29 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %30 = call i64 @is_bts_event(%struct.perf_event_attr* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @is_bts_event(%struct.perf_event_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
