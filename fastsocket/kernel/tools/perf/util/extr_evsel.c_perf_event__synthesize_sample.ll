; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_event__synthesize_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_perf_event__synthesize_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.perf_sample = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%union.u64_swap = type { i8** }
%struct.TYPE_4__ = type { i32 }

@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_STREAM_ID = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_sample(%union.perf_event* %0, i32 %1, %struct.perf_sample* %2, i32 %3) #0 {
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %union.u64_swap, align 8
  store %union.perf_event* %0, %union.perf_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %union.perf_event*, %union.perf_event** %5, align 8
  %12 = bitcast %union.perf_event* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %21 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load %union.perf_event*, %union.perf_event** %5, align 8
  %24 = bitcast %union.perf_event* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %19, %4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %28
  %34 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %35 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %34, i32 0, i32 7
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast %union.u64_swap* %10 to i8***
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %41 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %40, i32 0, i32 6
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast %union.u64_swap* %10 to i8***
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %33
  %49 = bitcast %union.u64_swap* %10 to i8***
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @bswap_32(i8* %52)
  %54 = bitcast %union.u64_swap* %10 to i8***
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %53, i8** %56, align 8
  %57 = bitcast %union.u64_swap* %10 to i8***
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @bswap_32(i8* %60)
  %62 = bitcast %union.u64_swap* %10 to i8***
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  store i8* %61, i8** %64, align 8
  %65 = bitcast %union.u64_swap* %10 to i32*
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @bswap_64(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = bitcast %union.u64_swap* %10 to i32*
  store i32 %68, i32* %69, align 8
  br label %70

70:                                               ; preds = %48, %33
  %71 = bitcast %union.u64_swap* %10 to i32*
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %9, align 8
  br label %76

76:                                               ; preds = %70, %28
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %83 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %9, align 8
  br label %88

88:                                               ; preds = %81, %76
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %95 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %9, align 8
  br label %100

100:                                              ; preds = %93, %88
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @PERF_SAMPLE_ID, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %107 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %9, align 8
  br label %112

112:                                              ; preds = %105, %100
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @PERF_SAMPLE_STREAM_ID, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %119 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %9, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %9, align 8
  br label %124

124:                                              ; preds = %117, %112
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %158

129:                                              ; preds = %124
  %130 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %131 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %130, i32 0, i32 5
  %132 = load i8*, i8** %131, align 8
  %133 = bitcast %union.u64_swap* %10 to i8***
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %129
  %139 = bitcast %union.u64_swap* %10 to i8***
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @bswap_32(i8* %142)
  %144 = bitcast %union.u64_swap* %10 to i8***
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  store i8* %143, i8** %146, align 8
  %147 = bitcast %union.u64_swap* %10 to i32*
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @bswap_64(i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = bitcast %union.u64_swap* %10 to i32*
  store i32 %150, i32* %151, align 8
  br label %152

152:                                              ; preds = %138, %129
  %153 = bitcast %union.u64_swap* %10 to i32*
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %9, align 8
  br label %158

158:                                              ; preds = %152, %124
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %165 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %9, align 8
  br label %170

170:                                              ; preds = %163, %158
  ret i32 0
}

declare dso_local i8* @bswap_32(i8*) #1

declare dso_local i8* @bswap_64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
