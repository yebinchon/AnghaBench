; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__mmap_read_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__mmap_read_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.perf_session* }
%struct.perf_session = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.perf_sample = type { i32 }
%struct.perf_evsel = type { i32 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.machine = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Can't parse sample, err = %d\0A\00", align 1
@PERF_RECORD_MISC_CPUMODE_MASK = common dso_local global i32 0, align 4
@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@PERF_RECORD_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*, i32)* @perf_top__mmap_read_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__mmap_read_idx(%struct.perf_top* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_top*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_sample, align 4
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca %struct.perf_session*, align 8
  %8 = alloca %union.perf_event*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %13 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %12, i32 0, i32 9
  %14 = load %struct.perf_session*, %struct.perf_session** %13, align 8
  store %struct.perf_session* %14, %struct.perf_session** %7, align 8
  br label %15

15:                                               ; preds = %146, %105, %85, %72, %30, %2
  %16 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %17 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %union.perf_event* @perf_evlist__mmap_read(i32 %18, i32 %19)
  store %union.perf_event* %20, %union.perf_event** %8, align 8
  %21 = icmp ne %union.perf_event* %20, null
  br i1 %21, label %22, label %147

22:                                               ; preds = %15
  %23 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %24 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = load %union.perf_event*, %union.perf_event** %8, align 8
  %27 = call i32 @perf_evlist__parse_sample(i32 %25, %union.perf_event* %26, %struct.perf_sample* %5)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %15

33:                                               ; preds = %22
  %34 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %35 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.perf_evsel* @perf_evlist__id2evsel(i32 %36, i32 %38)
  store %struct.perf_evsel* %39, %struct.perf_evsel** %6, align 8
  %40 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %41 = icmp ne %struct.perf_evsel* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %union.perf_event*, %union.perf_event** %8, align 8
  %45 = bitcast %union.perf_event* %44 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PERF_RECORD_MISC_CPUMODE_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load %union.perf_event*, %union.perf_event** %8, align 8
  %51 = bitcast %union.perf_event* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %33
  %57 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %58 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %33
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %105 [
    i32 128, label %63
    i32 129, label %76
    i32 131, label %89
    i32 130, label %100
  ]

63:                                               ; preds = %61
  %64 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %65 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %69 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %15

73:                                               ; preds = %63
  %74 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %75 = call %struct.machine* @perf_session__find_host_machine(%struct.perf_session* %74)
  store %struct.machine* %75, %struct.machine** %9, align 8
  br label %106

76:                                               ; preds = %61
  %77 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %78 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %82 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %15

86:                                               ; preds = %76
  %87 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %88 = call %struct.machine* @perf_session__find_host_machine(%struct.perf_session* %87)
  store %struct.machine* %88, %struct.machine** %9, align 8
  br label %106

89:                                               ; preds = %61
  %90 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %91 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %95 = load %union.perf_event*, %union.perf_event** %8, align 8
  %96 = bitcast %union.perf_event* %95 to %struct.TYPE_5__*
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.machine* @perf_session__find_machine(%struct.perf_session* %94, i32 %98)
  store %struct.machine* %99, %struct.machine** %9, align 8
  br label %106

100:                                              ; preds = %61
  %101 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %102 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %61, %100
  br label %15

106:                                              ; preds = %89, %86, %73
  %107 = load %union.perf_event*, %union.perf_event** %8, align 8
  %108 = bitcast %union.perf_event* %107 to %struct.TYPE_6__*
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load %struct.perf_top*, %struct.perf_top** %3, align 8
  %115 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %114, i32 0, i32 0
  %116 = load %union.perf_event*, %union.perf_event** %8, align 8
  %117 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %118 = load %struct.machine*, %struct.machine** %9, align 8
  %119 = call i32 @perf_event__process_sample(i32* %115, %union.perf_event* %116, %struct.perf_evsel* %117, %struct.perf_sample* %5, %struct.machine* %118)
  br label %146

120:                                              ; preds = %106
  %121 = load %union.perf_event*, %union.perf_event** %8, align 8
  %122 = bitcast %union.perf_event* %121 to %struct.TYPE_6__*
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PERF_RECORD_MAX, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  %128 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %129 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %128, i32 0, i32 0
  %130 = load %union.perf_event*, %union.perf_event** %8, align 8
  %131 = bitcast %union.perf_event* %130 to %struct.TYPE_6__*
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @hists__inc_nr_events(i32* %129, i64 %133)
  %135 = load %struct.machine*, %struct.machine** %9, align 8
  %136 = load %union.perf_event*, %union.perf_event** %8, align 8
  %137 = call i32 @machine__process_event(%struct.machine* %135, %union.perf_event* %136)
  br label %145

138:                                              ; preds = %120
  %139 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %140 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %138, %127
  br label %146

146:                                              ; preds = %145, %113
  br label %15

147:                                              ; preds = %15
  ret void
}

declare dso_local %union.perf_event* @perf_evlist__mmap_read(i32, i32) #1

declare dso_local i32 @perf_evlist__parse_sample(i32, %union.perf_event*, %struct.perf_sample*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.perf_evsel* @perf_evlist__id2evsel(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.machine* @perf_session__find_host_machine(%struct.perf_session*) #1

declare dso_local %struct.machine* @perf_session__find_machine(%struct.perf_session*, i32) #1

declare dso_local i32 @perf_event__process_sample(i32*, %union.perf_event*, %struct.perf_evsel*, %struct.perf_sample*, %struct.machine*) #1

declare dso_local i32 @hists__inc_nr_events(i32*, i64) #1

declare dso_local i32 @machine__process_event(%struct.machine*, %union.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
