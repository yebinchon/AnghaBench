; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_report_lock_contended_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-lock.c_report_lock_contended_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32, i32 }
%struct.lock_stat = type { i32, i32 }
%struct.thread_stat = type { i32 }
%struct.lock_seq_stat = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"lockdep_addr\00", align 1
@bad_hist = common dso_local global i32* null, align 8
@BROKEN_CONTENDED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Unknown state of lock sequence found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_sample*)* @report_lock_contended_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_lock_contended_event(%struct.perf_evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lock_stat*, align 8
  %8 = alloca %struct.thread_stat*, align 8
  %9 = alloca %struct.lock_seq_stat*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %12 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %14 = call i8* @perf_evsel__strval(%struct.perf_evsel* %12, %struct.perf_sample* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %10, align 8
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %16 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %17 = call i32 @perf_evsel__intval(%struct.perf_evsel* %15, %struct.perf_sample* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = call i32 @memcpy(i8** %6, i32* %11, i32 8)
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.lock_stat* @lock_stat_findnew(i8* %19, i8* %20)
  store %struct.lock_stat* %21, %struct.lock_stat** %7, align 8
  %22 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %23 = icmp ne %struct.lock_stat* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %27 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %80

31:                                               ; preds = %25
  %32 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %33 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.thread_stat* @thread_stat_findnew(i32 %34)
  store %struct.thread_stat* %35, %struct.thread_stat** %8, align 8
  %36 = load %struct.thread_stat*, %struct.thread_stat** %8, align 8
  %37 = icmp ne %struct.thread_stat* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %80

39:                                               ; preds = %31
  %40 = load %struct.thread_stat*, %struct.thread_stat** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call %struct.lock_seq_stat* @get_seq(%struct.thread_stat* %40, i8* %41)
  store %struct.lock_seq_stat* %42, %struct.lock_seq_stat** %9, align 8
  %43 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %44 = icmp ne %struct.lock_seq_stat* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %80

46:                                               ; preds = %39
  %47 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %48 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %65 [
    i32 128, label %50
    i32 132, label %51
    i32 129, label %52
    i32 133, label %52
    i32 130, label %52
    i32 131, label %52
  ]

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %80

51:                                               ; preds = %46
  br label %67

52:                                               ; preds = %46, %46, %46, %46
  %53 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %54 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load i32*, i32** @bad_hist, align 8
  %56 = load i64, i64* @BROKEN_CONTENDED, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %61 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %60, i32 0, i32 2
  %62 = call i32 @list_del(i32* %61)
  %63 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %64 = call i32 @free(%struct.lock_seq_stat* %63)
  br label %79

65:                                               ; preds = %46
  %66 = call i32 @BUG_ON(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %51
  %68 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %69 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %68, i32 0, i32 0
  store i32 131, i32* %69, align 4
  %70 = load %struct.lock_stat*, %struct.lock_stat** %7, align 8
  %71 = getelementptr inbounds %struct.lock_stat, %struct.lock_stat* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %75 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.lock_seq_stat*, %struct.lock_seq_stat** %9, align 8
  %78 = getelementptr inbounds %struct.lock_seq_stat, %struct.lock_seq_stat* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %67, %52
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %50, %45, %38, %30, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i8* @perf_evsel__strval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @perf_evsel__intval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

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
