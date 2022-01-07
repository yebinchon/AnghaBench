; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%union.perf_event = type { i32 }
%struct.perf_sample = type { i32, i32, i32 }
%struct.perf_evsel = type { i32, %struct.perf_event_attr }
%struct.perf_event_attr = type { i64 }
%struct.machine = type { i32 }
%struct.addr_location = type { %struct.thread* }
%struct.thread = type { i32 }

@output = common dso_local global %struct.TYPE_4__* null, align 8
@TRACE = common dso_local global i32 0, align 4
@ADDR = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SYM = common dso_local global i32 0, align 4
@DSO = common dso_local global i32 0, align 4
@SYMOFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine*, %struct.addr_location*)* @process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_event(%union.perf_event* %0, %struct.perf_sample* %1, %struct.perf_evsel* %2, %struct.machine* %3, %struct.addr_location* %4) #0 {
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.perf_evsel*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca %struct.addr_location*, align 8
  %11 = alloca %struct.perf_event_attr*, align 8
  %12 = alloca %struct.thread*, align 8
  store %union.perf_event* %0, %union.perf_event** %6, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %7, align 8
  store %struct.perf_evsel* %2, %struct.perf_evsel** %8, align 8
  store %struct.machine* %3, %struct.machine** %9, align 8
  store %struct.addr_location* %4, %struct.addr_location** %10, align 8
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %14 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %13, i32 0, i32 1
  store %struct.perf_event_attr* %14, %struct.perf_event_attr** %11, align 8
  %15 = load %struct.addr_location*, %struct.addr_location** %10, align 8
  %16 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 0
  %17 = load %struct.thread*, %struct.thread** %16, align 8
  store %struct.thread* %17, %struct.thread** %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @output, align 8
  %19 = load %struct.perf_event_attr*, %struct.perf_event_attr** %11, align 8
  %20 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %96

27:                                               ; preds = %5
  %28 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %29 = load %struct.thread*, %struct.thread** %12, align 8
  %30 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %31 = call i32 @print_sample_start(%struct.perf_sample* %28, %struct.thread* %29, %struct.perf_evsel* %30)
  %32 = load %struct.perf_event_attr*, %struct.perf_event_attr** %11, align 8
  %33 = call i64 @is_bts_event(%struct.perf_event_attr* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %union.perf_event*, %union.perf_event** %6, align 8
  %37 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %38 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %39 = load %struct.machine*, %struct.machine** %9, align 8
  %40 = load %struct.thread*, %struct.thread** %12, align 8
  %41 = call i32 @print_sample_bts(%union.perf_event* %36, %struct.perf_sample* %37, %struct.perf_evsel* %38, %struct.machine* %39, %struct.thread* %40)
  br label %96

42:                                               ; preds = %27
  %43 = load i32, i32* @TRACE, align 4
  %44 = call i64 @PRINT_FIELD(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %48 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %51 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %54 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %57 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @event_format__print(i32 %49, i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %46, %42
  %61 = load i32, i32* @ADDR, align 4
  %62 = call i64 @PRINT_FIELD(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %union.perf_event*, %union.perf_event** %6, align 8
  %66 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %67 = load %struct.machine*, %struct.machine** %9, align 8
  %68 = load %struct.thread*, %struct.thread** %12, align 8
  %69 = load %struct.perf_event_attr*, %struct.perf_event_attr** %11, align 8
  %70 = call i32 @print_sample_addr(%union.perf_event* %65, %struct.perf_sample* %66, %struct.machine* %67, %struct.thread* %68, %struct.perf_event_attr* %69)
  br label %71

71:                                               ; preds = %64, %60
  %72 = load i32, i32* @IP, align 4
  %73 = call i64 @PRINT_FIELD(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 0), align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %82

80:                                               ; preds = %75
  %81 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %78
  %83 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %84 = load %union.perf_event*, %union.perf_event** %6, align 8
  %85 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %86 = load %struct.machine*, %struct.machine** %9, align 8
  %87 = load i32, i32* @SYM, align 4
  %88 = call i64 @PRINT_FIELD(i32 %87)
  %89 = load i32, i32* @DSO, align 4
  %90 = call i64 @PRINT_FIELD(i32 %89)
  %91 = load i32, i32* @SYMOFFSET, align 4
  %92 = call i64 @PRINT_FIELD(i32 %91)
  %93 = call i32 @perf_evsel__print_ip(%struct.perf_evsel* %83, %union.perf_event* %84, %struct.perf_sample* %85, %struct.machine* %86, i64 %88, i64 %90, i64 %92)
  br label %94

94:                                               ; preds = %82, %71
  %95 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %35, %26
  ret void
}

declare dso_local i32 @print_sample_start(%struct.perf_sample*, %struct.thread*, %struct.perf_evsel*) #1

declare dso_local i64 @is_bts_event(%struct.perf_event_attr*) #1

declare dso_local i32 @print_sample_bts(%union.perf_event*, %struct.perf_sample*, %struct.perf_evsel*, %struct.machine*, %struct.thread*) #1

declare dso_local i64 @PRINT_FIELD(i32) #1

declare dso_local i32 @event_format__print(i32, i32, i32, i32) #1

declare dso_local i32 @print_sample_addr(%union.perf_event*, %struct.perf_sample*, %struct.machine*, %struct.thread*, %struct.perf_event_attr*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @perf_evsel__print_ip(%struct.perf_evsel*, %union.perf_event*, %struct.perf_sample*, %struct.machine*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
