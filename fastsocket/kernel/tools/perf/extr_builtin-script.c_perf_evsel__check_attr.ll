; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_perf_evsel__check_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-script.c_perf_evsel__check_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_evsel = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32 }
%struct.perf_session = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"record -R\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@PERF_OUTPUT_IP = common dso_local global i32 0, align 4
@no_callchain = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@PERF_OUTPUT_ADDR = common dso_local global i32 0, align 4
@SYM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [127 x i8] c"Display of symbols requested but neither sample IP nor sample address\0Ais selected. Hence, no addresses to convert to symbols.\0A\00", align 1
@SYMOFFSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"Display of offsets requested but symbol is notselected.\0A\00", align 1
@DSO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [119 x i8] c"Display of DSO requested but neither sample IP nor sample address\0Ais selected. Hence, no addresses to convert to DSO.\0A\00", align 1
@PID = common dso_local global i32 0, align 4
@TID = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"TID\00", align 1
@PERF_OUTPUT_TID = common dso_local global i32 0, align 4
@PERF_OUTPUT_PID = common dso_local global i32 0, align 4
@TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@PERF_OUTPUT_TIME = common dso_local global i32 0, align 4
@CPU = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@PERF_OUTPUT_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_session*)* @perf_evsel__check_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__check_attr(%struct.perf_evsel* %0, %struct.perf_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store %struct.perf_session* %1, %struct.perf_session** %5, align 8
  %7 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %8 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %7, i32 0, i32 0
  store %struct.perf_event_attr* %8, %struct.perf_event_attr** %6, align 8
  %9 = load i32, i32* @TRACE, align 4
  %10 = call i64 @PRINT_FIELD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %14 = call i32 @perf_session__has_traces(%struct.perf_session* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %147

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @IP, align 4
  %21 = call i64 @PRINT_FIELD(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %25 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %26 = load i32, i32* @PERF_OUTPUT_IP, align 4
  %27 = call i64 @perf_evsel__check_stype(%struct.perf_evsel* %24, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %147

32:                                               ; preds = %23
  %33 = load i32, i32* @no_callchain, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %37 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  br label %43

43:                                               ; preds = %42, %35, %32
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* @ADDR, align 4
  %46 = call i64 @PRINT_FIELD(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %50 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %51 = load i32, i32* @PERF_OUTPUT_ADDR, align 4
  %52 = call i64 @perf_evsel__check_stype(%struct.perf_evsel* %49, i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %147

57:                                               ; preds = %48, %44
  %58 = load i32, i32* @SYM, align 4
  %59 = call i64 @PRINT_FIELD(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* @IP, align 4
  %63 = call i64 @PRINT_FIELD(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ADDR, align 4
  %67 = call i64 @PRINT_FIELD(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %147

73:                                               ; preds = %65, %61, %57
  %74 = load i32, i32* @SYMOFFSET, align 4
  %75 = call i64 @PRINT_FIELD(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* @SYM, align 4
  %79 = call i64 @PRINT_FIELD(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %147

85:                                               ; preds = %77, %73
  %86 = load i32, i32* @DSO, align 4
  %87 = call i64 @PRINT_FIELD(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i32, i32* @IP, align 4
  %91 = call i64 @PRINT_FIELD(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @ADDR, align 4
  %95 = call i64 @PRINT_FIELD(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %147

101:                                              ; preds = %93, %89, %85
  %102 = load i32, i32* @PID, align 4
  %103 = call i64 @PRINT_FIELD(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @TID, align 4
  %107 = call i64 @PRINT_FIELD(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %105, %101
  %110 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %111 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %112 = load i32, i32* @PERF_OUTPUT_TID, align 4
  %113 = load i32, i32* @PERF_OUTPUT_PID, align 4
  %114 = or i32 %112, %113
  %115 = call i64 @perf_evsel__check_stype(%struct.perf_evsel* %110, i32 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %147

120:                                              ; preds = %109, %105
  %121 = load i32, i32* @TIME, align 4
  %122 = call i64 @PRINT_FIELD(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %126 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %127 = load i32, i32* @PERF_OUTPUT_TIME, align 4
  %128 = call i64 @perf_evsel__check_stype(%struct.perf_evsel* %125, i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %147

133:                                              ; preds = %124, %120
  %134 = load i32, i32* @CPU, align 4
  %135 = call i64 @PRINT_FIELD(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %139 = load i32, i32* @PERF_SAMPLE_CPU, align 4
  %140 = load i32, i32* @PERF_OUTPUT_CPU, align 4
  %141 = call i64 @perf_evsel__check_stype(%struct.perf_evsel* %138, i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %147

146:                                              ; preds = %137, %133
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %143, %130, %117, %97, %81, %69, %54, %29, %16
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @PRINT_FIELD(i32) #1

declare dso_local i32 @perf_session__has_traces(%struct.perf_session*, i8*) #1

declare dso_local i64 @perf_evsel__check_stype(%struct.perf_evsel*, i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
