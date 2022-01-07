; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c___perf_session__set_tracepoints_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c___perf_session__set_tracepoints_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32, %struct.perf_evlist* }
%struct.perf_evlist = type { i32 }
%struct.perf_evsel_str_handler = type { i32*, i32 }
%struct.event_format = type { i32 }
%struct.perf_evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__perf_session__set_tracepoints_handlers(%struct.perf_session* %0, %struct.perf_evsel_str_handler* %1, i64 %2) #0 {
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca %struct.perf_evsel_str_handler*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.perf_evlist*, align 8
  %8 = alloca %struct.event_format*, align 8
  %9 = alloca %struct.perf_evsel*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store %struct.perf_evsel_str_handler* %1, %struct.perf_evsel_str_handler** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %15 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %14, i32 0, i32 1
  %16 = load %struct.perf_evlist*, %struct.perf_evlist** %15, align 8
  store %struct.perf_evlist* %16, %struct.perf_evlist** %7, align 8
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %83, %3
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %86

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %13, align 4
  %24 = load %struct.perf_evsel_str_handler*, %struct.perf_evsel_str_handler** %5, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %24, i64 %25
  %27 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @strdup(i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %87

33:                                               ; preds = %21
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 58)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %89

41:                                               ; preds = %33
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  store i8 0, i8* %42, align 1
  %44 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %45 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call %struct.event_format* @pevent_find_event_by_name(i32 %46, i8* %47, i8* %48)
  store %struct.event_format* %49, %struct.event_format** %8, align 8
  %50 = load %struct.event_format*, %struct.event_format** %8, align 8
  %51 = icmp eq %struct.event_format* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %80

53:                                               ; preds = %41
  %54 = load %struct.perf_evlist*, %struct.perf_evlist** %7, align 8
  %55 = load %struct.event_format*, %struct.event_format** %8, align 8
  %56 = getelementptr inbounds %struct.event_format, %struct.event_format* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.perf_evsel* @perf_evlist__find_tracepoint_by_id(%struct.perf_evlist* %54, i32 %57)
  store %struct.perf_evsel* %58, %struct.perf_evsel** %9, align 8
  %59 = load %struct.perf_evsel*, %struct.perf_evsel** %9, align 8
  %60 = icmp eq %struct.perf_evsel* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %80

62:                                               ; preds = %53
  %63 = load i32, i32* @EEXIST, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  %65 = load %struct.perf_evsel*, %struct.perf_evsel** %9, align 8
  %66 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %89

71:                                               ; preds = %62
  %72 = load %struct.perf_evsel_str_handler*, %struct.perf_evsel_str_handler** %5, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %72, i64 %73
  %75 = getelementptr inbounds %struct.perf_evsel_str_handler, %struct.perf_evsel_str_handler* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.perf_evsel*, %struct.perf_evsel** %9, align 8
  %78 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  br label %80

80:                                               ; preds = %71, %61, %52
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @free(i8* %81)
  br label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %17

86:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %89, %86, %32
  %88 = load i32, i32* %13, align 4
  ret i32 %88

89:                                               ; preds = %70, %40
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @free(i8* %90)
  br label %87
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.event_format* @pevent_find_event_by_name(i32, i8*, i8*) #1

declare dso_local %struct.perf_evsel* @perf_evlist__find_tracepoint_by_id(%struct.perf_evlist*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
