; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-annotate.c_perf_evsel__add_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-annotate.c_perf_evsel__add_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.perf_sample = type { i64 }
%struct.addr_location = type { i32, %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.perf_annotate = type { i32* }
%struct.hist_entry = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.annotation = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@PERF_RECORD_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_sample*, %struct.addr_location*, %struct.perf_annotate*)* @perf_evsel__add_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__add_sample(%struct.perf_evsel* %0, %struct.perf_sample* %1, %struct.addr_location* %2, %struct.perf_annotate* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca %struct.addr_location*, align 8
  %9 = alloca %struct.perf_annotate*, align 8
  %10 = alloca %struct.hist_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.annotation*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %6, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %7, align 8
  store %struct.addr_location* %2, %struct.addr_location** %8, align 8
  store %struct.perf_annotate* %3, %struct.perf_annotate** %9, align 8
  %13 = load %struct.perf_annotate*, %struct.perf_annotate** %9, align 8
  %14 = getelementptr inbounds %struct.perf_annotate, %struct.perf_annotate* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %4
  %18 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %19 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = icmp eq %struct.TYPE_12__* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = load %struct.perf_annotate*, %struct.perf_annotate** %9, align 8
  %24 = getelementptr inbounds %struct.perf_annotate, %struct.perf_annotate* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %27 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32* %25, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %22, %17
  %34 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %35 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %40 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %44 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %51 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = call i32 @rb_erase(i32* %42, i32* %55)
  %57 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %58 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = call i32 @symbol__delete(%struct.TYPE_12__* %59)
  br label %61

61:                                               ; preds = %38, %33
  store i32 0, i32* %5, align 4
  br label %124

62:                                               ; preds = %22, %4
  %63 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %64 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %63, i32 0, i32 0
  %65 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %66 = call %struct.hist_entry* @__hists__add_entry(%struct.TYPE_13__* %64, %struct.addr_location* %65, i32* null, i32 1)
  store %struct.hist_entry* %66, %struct.hist_entry** %10, align 8
  %67 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %68 = icmp eq %struct.hist_entry* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %124

72:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  %73 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %74 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %107

78:                                               ; preds = %72
  %79 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %80 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call %struct.annotation* @symbol__annotation(i32* %82)
  store %struct.annotation* %83, %struct.annotation** %12, align 8
  %84 = load %struct.annotation*, %struct.annotation** %12, align 8
  %85 = getelementptr inbounds %struct.annotation, %struct.annotation* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %90 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @symbol__alloc_hist(i32* %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %124

98:                                               ; preds = %88, %78
  %99 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %100 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %101 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %104 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @hist_entry__inc_addr_samples(%struct.hist_entry* %99, i32 %102, i32 %105)
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %98, %72
  %108 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %109 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %112 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %110
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %120 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %119, i32 0, i32 0
  %121 = load i32, i32* @PERF_RECORD_SAMPLE, align 4
  %122 = call i32 @hists__inc_nr_events(%struct.TYPE_13__* %120, i32 %121)
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %107, %95, %69, %61
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @symbol__delete(%struct.TYPE_12__*) #1

declare dso_local %struct.hist_entry* @__hists__add_entry(%struct.TYPE_13__*, %struct.addr_location*, i32*, i32) #1

declare dso_local %struct.annotation* @symbol__annotation(i32*) #1

declare dso_local i64 @symbol__alloc_hist(i32*) #1

declare dso_local i32 @hist_entry__inc_addr_samples(%struct.hist_entry*, i32, i32) #1

declare dso_local i32 @hists__inc_nr_events(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
