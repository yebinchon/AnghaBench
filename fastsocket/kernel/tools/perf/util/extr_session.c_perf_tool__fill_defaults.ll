; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_tool__fill_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_perf_tool__fill_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@process_event_sample_stub = common dso_local global i8* null, align 8
@process_event_stub = common dso_local global i8* null, align 8
@perf_event__process_lost = common dso_local global i32* null, align 8
@process_event_synth_attr_stub = common dso_local global i32* null, align 8
@process_event_type_stub = common dso_local global i32* null, align 8
@process_event_synth_tracing_data_stub = common dso_local global i32* null, align 8
@process_finished_round_stub = common dso_local global i8* null, align 8
@process_finished_round = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_tool*)* @perf_tool__fill_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_tool__fill_defaults(%struct.perf_tool* %0) #0 {
  %2 = alloca %struct.perf_tool*, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %2, align 8
  %3 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %4 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %3, i32 0, i32 14
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8*, i8** @process_event_sample_stub, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %11 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %10, i32 0, i32 14
  store i32* %9, i32** %11, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %14 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %13, i32 0, i32 13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** @process_event_stub, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %21 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %20, i32 0, i32 13
  store i32* %19, i32** %21, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %24 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %23, i32 0, i32 12
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** @process_event_stub, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %31 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %30, i32 0, i32 12
  store i32* %29, i32** %31, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %34 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %33, i32 0, i32 11
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** @process_event_stub, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %41 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %40, i32 0, i32 11
  store i32* %39, i32** %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %44 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %43, i32 0, i32 10
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** @process_event_stub, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %51 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %50, i32 0, i32 10
  store i32* %49, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %54 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %53, i32 0, i32 9
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32*, i32** @perf_event__process_lost, align 8
  %59 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %60 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %59, i32 0, i32 9
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %63 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** @process_event_sample_stub, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %70 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %69, i32 0, i32 8
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %73 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %72, i32 0, i32 7
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** @process_event_stub, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %80 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %79, i32 0, i32 7
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %83 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i8*, i8** @process_event_stub, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %90 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %89, i32 0, i32 6
  store i32* %88, i32** %90, align 8
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %93 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32*, i32** @process_event_synth_attr_stub, align 8
  %98 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %99 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %98, i32 0, i32 5
  store i32* %97, i32** %99, align 8
  br label %100

100:                                              ; preds = %96, %91
  %101 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %102 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32*, i32** @process_event_type_stub, align 8
  %107 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %108 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %107, i32 0, i32 4
  store i32* %106, i32** %108, align 8
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %111 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32*, i32** @process_event_synth_tracing_data_stub, align 8
  %116 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %117 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %116, i32 0, i32 3
  store i32* %115, i32** %117, align 8
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %120 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** @process_finished_round_stub, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %127 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %130 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %148

133:                                              ; preds = %128
  %134 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %135 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32*, i32** @process_finished_round, align 8
  %140 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %141 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %140, i32 0, i32 0
  store i32* %139, i32** %141, align 8
  br label %147

142:                                              ; preds = %133
  %143 = load i8*, i8** @process_finished_round_stub, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.perf_tool*, %struct.perf_tool** %2, align 8
  %146 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %145, i32 0, i32 0
  store i32* %144, i32** %146, align 8
  br label %147

147:                                              ; preds = %142, %138
  br label %148

148:                                              ; preds = %147, %128
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
