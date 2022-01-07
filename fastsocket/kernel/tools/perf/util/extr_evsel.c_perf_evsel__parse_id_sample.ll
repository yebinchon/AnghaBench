; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__parse_id_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_evsel__parse_id_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.perf_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.perf_sample = type { i32, i32, i32, i8*, i8*, i8* }
%union.u64_swap = type { i8** }
%struct.TYPE_6__ = type { i32 }

@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %union.perf_event*, %struct.perf_sample*)* @perf_evsel__parse_id_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__parse_id_sample(%struct.perf_evsel* %0, %union.perf_event* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.u64_swap, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %6, align 8
  %11 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %12 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %union.perf_event*, %union.perf_event** %5, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_5__*
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %20 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %union.perf_event*, %union.perf_event** %5, align 8
  %23 = bitcast %union.perf_event* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 4
  %28 = udiv i64 %27, 4
  %29 = sub i64 %28, 1
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  store i32* %31, i32** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %3
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.u64_swap* %10 to i32*
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = bitcast %union.u64_swap* %10 to i32*
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @bswap_64(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = bitcast %union.u64_swap* %10 to i32*
  store i32 %46, i32* %47, align 8
  %48 = bitcast %union.u64_swap* %10 to i8***
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @bswap_32(i8* %51)
  %53 = bitcast %union.u64_swap* %10 to i8***
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %42, %36
  %57 = bitcast %union.u64_swap* %10 to i8***
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %62 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 -1
  store i32* %64, i32** %8, align 8
  br label %65

65:                                               ; preds = %56, %3
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %74 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 -1
  store i32* %76, i32** %8, align 8
  br label %77

77:                                               ; preds = %70, %65
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %86 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 -1
  store i32* %88, i32** %8, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %98 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 -1
  store i32* %100, i32** %8, align 8
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %147

106:                                              ; preds = %101
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %union.u64_swap* %10 to i32*
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %106
  %113 = bitcast %union.u64_swap* %10 to i32*
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @bswap_64(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = bitcast %union.u64_swap* %10 to i32*
  store i32 %116, i32* %117, align 8
  %118 = bitcast %union.u64_swap* %10 to i8***
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @bswap_32(i8* %121)
  %123 = bitcast %union.u64_swap* %10 to i8***
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  store i8* %122, i8** %125, align 8
  %126 = bitcast %union.u64_swap* %10 to i8***
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @bswap_32(i8* %129)
  %131 = bitcast %union.u64_swap* %10 to i8***
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 1
  store i8* %130, i8** %133, align 8
  br label %134

134:                                              ; preds = %112, %106
  %135 = bitcast %union.u64_swap* %10 to i8***
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %140 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = bitcast %union.u64_swap* %10 to i8***
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %146 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %134, %101
  ret i32 0
}

declare dso_local i8* @bswap_64(i32) #1

declare dso_local i8* @bswap_32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
