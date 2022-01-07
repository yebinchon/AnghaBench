; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__preprocess_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_session__preprocess_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%union.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.perf_sample = type { i64, i32 }

@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"call-chain problem with event, skipping it.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_session*, %union.perf_event*, %struct.perf_sample*)* @perf_session__preprocess_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__preprocess_sample(%struct.perf_session* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %5, align 8
  store %union.perf_event* %1, %union.perf_event** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  %8 = load %union.perf_event*, %union.perf_event** %6, align 8
  %9 = bitcast %union.perf_event* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %16 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @perf_evlist__sample_type(i32 %17)
  %19 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %52

23:                                               ; preds = %14
  %24 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %25 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %union.perf_event*, %union.perf_event** %6, align 8
  %28 = call i32 @ip_callchain__valid(i32 %26, %union.perf_event* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %23
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %33 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %39 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %42 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %40
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %30, %22
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @perf_evlist__sample_type(i32) #1

declare dso_local i32 @ip_callchain__valid(i32, %union.perf_event*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
