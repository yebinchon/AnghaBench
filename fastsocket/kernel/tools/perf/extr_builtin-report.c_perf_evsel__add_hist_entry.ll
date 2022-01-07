; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-report.c_perf_evsel__add_hist_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-report.c_perf_evsel__add_hist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.perf_evsel = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.addr_location = type { i32, i32 }
%struct.perf_sample = type { i32, i64 }
%struct.machine = type { i32 }
%struct.symbol = type { i32 }
%struct.hist_entry = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.annotation = type { i32* }

@sort__has_parent = common dso_local global i64 0, align 8
@symbol_conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@callchain_cursor = common dso_local global i32 0, align 4
@use_browser = common dso_local global i32 0, align 4
@sort__has_sym = common dso_local global i64 0, align 8
@PERF_RECORD_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.addr_location*, %struct.perf_sample*, %struct.machine*)* @perf_evsel__add_hist_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__add_hist_entry(%struct.perf_evsel* %0, %struct.addr_location* %1, %struct.perf_sample* %2, %struct.machine* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca %struct.addr_location*, align 8
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hist_entry*, align 8
  %13 = alloca %struct.annotation*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %6, align 8
  store %struct.addr_location* %1, %struct.addr_location** %7, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %8, align 8
  store %struct.machine* %3, %struct.machine** %9, align 8
  store %struct.symbol* null, %struct.symbol** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* @sort__has_parent, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16, %4
  %20 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %21 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.machine*, %struct.machine** %9, align 8
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %27 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %31 = call i32 @machine__resolve_callchain(%struct.machine* %25, %struct.perf_evsel* %26, i32 %29, %struct.perf_sample* %30, %struct.symbol** %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %128

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %19, %16
  %38 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %39 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %38, i32 0, i32 0
  %40 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %41 = load %struct.symbol*, %struct.symbol** %10, align 8
  %42 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %43 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.hist_entry* @__hists__add_entry(%struct.TYPE_9__* %39, %struct.addr_location* %40, %struct.symbol* %41, i32 %44)
  store %struct.hist_entry* %45, %struct.hist_entry** %12, align 8
  %46 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %47 = icmp eq %struct.hist_entry* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %128

51:                                               ; preds = %37
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %56 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %59 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @callchain_append(i32 %57, i32* @callchain_cursor, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %128

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %51
  %68 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %69 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %112

73:                                               ; preds = %67
  %74 = load i32, i32* @use_browser, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %112

76:                                               ; preds = %73
  %77 = load i64, i64* @sort__has_sym, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %76
  %80 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %81 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call %struct.annotation* @symbol__annotation(i32* %83)
  store %struct.annotation* %84, %struct.annotation** %13, align 8
  %85 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %86 = icmp ne %struct.perf_evsel* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  %91 = load %struct.annotation*, %struct.annotation** %13, align 8
  %92 = getelementptr inbounds %struct.annotation, %struct.annotation* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %79
  %96 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %97 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @symbol__alloc_hist(i32* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %126

103:                                              ; preds = %95, %79
  %104 = load %struct.hist_entry*, %struct.hist_entry** %12, align 8
  %105 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %106 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.addr_location*, %struct.addr_location** %7, align 8
  %109 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @hist_entry__inc_addr_samples(%struct.hist_entry* %104, i32 %107, i32 %110)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %103, %76, %73, %67
  %113 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %114 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %117 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %115
  store i32 %121, i32* %119, align 4
  %122 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %123 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %122, i32 0, i32 0
  %124 = load i32, i32* @PERF_RECORD_SAMPLE, align 4
  %125 = call i32 @hists__inc_nr_events(%struct.TYPE_9__* %123, i32 %124)
  br label %126

126:                                              ; preds = %112, %102
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %64, %48, %34
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @machine__resolve_callchain(%struct.machine*, %struct.perf_evsel*, i32, %struct.perf_sample*, %struct.symbol**) #1

declare dso_local %struct.hist_entry* @__hists__add_entry(%struct.TYPE_9__*, %struct.addr_location*, %struct.symbol*, i32) #1

declare dso_local i32 @callchain_append(i32, i32*, i32) #1

declare dso_local %struct.annotation* @symbol__annotation(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @symbol__alloc_hist(i32*) #1

declare dso_local i32 @hist_entry__inc_addr_samples(%struct.hist_entry*, i32, i32) #1

declare dso_local i32 @hists__inc_nr_events(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
