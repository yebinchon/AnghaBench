; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_print_sample_bts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_print_sample_bts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32 }
%struct.perf_evsel = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32 }
%struct.machine = type { i32 }
%struct.thread = type { i32 }

@IP = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SYM = common dso_local global i32 0, align 4
@DSO = common dso_local global i32 0, align 4
@SYMOFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine*, %struct.thread*)* @print_sample_bts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sample_bts(%union.perf_event* %0, %struct.perf_sample* %1, %struct.perf_evsel* %2, %struct.machine* %3, %struct.thread* %4) #0 {
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.perf_evsel*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.perf_event_attr*, align 8
  store %union.perf_event* %0, %union.perf_event** %6, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %7, align 8
  store %struct.perf_evsel* %2, %struct.perf_evsel** %8, align 8
  store %struct.machine* %3, %struct.machine** %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  %12 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %13 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %12, i32 0, i32 0
  store %struct.perf_event_attr* %13, %struct.perf_event_attr** %11, align 8
  %14 = load i32, i32* @IP, align 4
  %15 = call i64 @PRINT_FIELD(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %5
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %24

22:                                               ; preds = %17
  %23 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %26 = load %union.perf_event*, %union.perf_event** %6, align 8
  %27 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %28 = load %struct.machine*, %struct.machine** %9, align 8
  %29 = load i32, i32* @SYM, align 4
  %30 = call i64 @PRINT_FIELD(i32 %29)
  %31 = load i32, i32* @DSO, align 4
  %32 = call i64 @PRINT_FIELD(i32 %31)
  %33 = load i32, i32* @SYMOFFSET, align 4
  %34 = call i64 @PRINT_FIELD(i32 %33)
  %35 = call i32 @perf_evsel__print_ip(%struct.perf_evsel* %25, %union.perf_event* %26, %struct.perf_sample* %27, %struct.machine* %28, i64 %30, i64 %32, i64 %34)
  br label %36

36:                                               ; preds = %24, %5
  %37 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @ADDR, align 4
  %39 = call i64 @PRINT_FIELD(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %union.perf_event*, %union.perf_event** %6, align 8
  %43 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %44 = load %struct.machine*, %struct.machine** %9, align 8
  %45 = load %struct.thread*, %struct.thread** %10, align 8
  %46 = load %struct.perf_event_attr*, %struct.perf_event_attr** %11, align 8
  %47 = call i32 @print_sample_addr(%union.perf_event* %42, %struct.perf_sample* %43, %struct.machine* %44, %struct.thread* %45, %struct.perf_event_attr* %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @PRINT_FIELD(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @perf_evsel__print_ip(%struct.perf_evsel*, %union.perf_event*, %struct.perf_sample*, %struct.machine*, i64, i64, i64) #1

declare dso_local i32 @print_sample_addr(%union.perf_event*, %struct.perf_sample*, %struct.machine*, %struct.thread*, %struct.perf_event_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
