; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_report_lock_acquire_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_report_lock_acquire_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32, i32 }
%struct.lock_stat = type { i32, i32, i32, i32, i32 }
%struct.thread_stat = type { i32 }
%struct.lock_seq_stat = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"lockdep_addr\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@TRY_LOCK = common dso_local global i32 0, align 4
@READ_LOCK = common dso_local global i32 0, align 4
@bad_hist = common dso_local global i32* null, align 8
@BROKEN_ACQUIRE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Unknown state of lock sequence found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_sample*)* @report_lock_acquire_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_lock_acquire_event(%struct.perf_evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_stat*, align 8
  %8 = alloca %struct.thread_stat*, align 8
  %9 = alloca %struct.lock_seq_stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %14 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %15 = call i8* @perf_evsel__strval(%struct.perf_evsel* %13, %struct.perf_sample* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %10, align 8
  %16 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %18 = call i8* @perf_evsel__intval(%struct.perf_evsel* %16, %struct.perf_sample* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %11, align 8
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %20 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %21 = call i8* @perf_evsel__intval(%struct.perf_evsel* %19, %struct.perf_sample* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = call i32 @memcpy(i8** %6, i8** %11, i32 8)
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call %struct.lock_stat* @lock_stat_findnew(i8* %24, i8* %25)
  store %struct.lock_stat* %26, %struct.lock_stat** %7, align 8
  %27 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %28 = icmp ne %struct.lock_stat* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %133

30:                                               ; preds = %2
  %31 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %32 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %133

36:                                               ; preds = %30
  %37 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %38 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.thread_stat* @thread_stat_findnew(i32 %39)
  store %struct.thread_stat* %40, %struct.thread_stat** %8, align 8
  %41 = load %struct.thread_stat*, %struct.thread_stat** %8, align 8
  %42 = icmp ne %struct.thread_stat* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %133

44:                                               ; preds = %36
  %45 = load %struct.thread_stat*, %struct.thread_stat** %8, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call %struct.lock_seq_stat* @get_seq(%struct.thread_stat* %45, i8* %46)
  store %struct.lock_seq_stat* %47, %struct.lock_seq_stat** %9, align 8
  %48 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %49 = icmp ne %struct.lock_seq_stat* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %133

51:                                               ; preds = %44
  %52 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %53 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %120 [
    i32 128, label %55
    i32 129, label %55
    i32 130, label %91
    i32 133, label %106
    i32 132, label %106
    i32 131, label %106
  ]

55:                                               ; preds = %51, %51
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %60 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %59, i32 0, i32 0
  store i32 132, i32* %60, align 4
  br label %90

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @TRY_LOCK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %68 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @READ_LOCK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %78 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %83 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %82, i32 0, i32 0
  store i32 130, i32* %83, align 4
  %84 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %85 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %87 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %81, %58
  br label %122

91:                                               ; preds = %51
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @READ_LOCK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %98 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %102 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %132

105:                                              ; preds = %91
  br label %107

106:                                              ; preds = %51, %51, %51
  br label %107

107:                                              ; preds = %106, %105
  %108 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %109 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  %110 = load i32*, i32** @bad_hist, align 8
  %111 = load i64, i64* @BROKEN_ACQUIRE, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %116 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %115, i32 0, i32 3
  %117 = call i32 @list_del(i32* %116)
  %118 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %119 = call i32 @free(%struct.lock_seq_stat* %118)
  br label %132

120:                                              ; preds = %51
  %121 = call i32 @BUG_ON(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %90
  %123 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %124 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %128 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %131 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %122, %107, %96
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %50, %43, %35, %29
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i8* @perf_evsel__strval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i8* @perf_evsel__intval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local %struct.lock_stat* @lock_stat_findnew(i8*, i8*) #1

declare dso_local %struct.thread_stat* @thread_stat_findnew(i32) #1

declare dso_local %struct.lock_seq_stat* @get_seq(%struct.thread_stat*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free(%struct.lock_seq_stat*) #1

declare dso_local i32 @BUG_ON(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
