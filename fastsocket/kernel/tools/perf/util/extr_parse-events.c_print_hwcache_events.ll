; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_print_hwcache_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_print_hwcache_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"  %-50s [%s]\0A\00", align 1
@event_type_descriptors = common dso_local global i8** null, align 8
@PERF_TYPE_HW_CACHE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_hwcache_events(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %68, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %64, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @perf_evsel__is_cache_op_valid(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %64

25:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %60, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %35 = call i32 @__perf_evsel__hw_cache_type_op_res_name(i32 %31, i32 %32, i32 %33, i8* %34, i32 64)
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strglobmatch(i8* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %60

44:                                               ; preds = %38, %30
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %57

50:                                               ; preds = %44
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %52 = load i8**, i8*** @event_type_descriptors, align 8
  %53 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %26

63:                                               ; preds = %26
  br label %64

64:                                               ; preds = %63, %24
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %15

67:                                               ; preds = %15
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %10

71:                                               ; preds = %10
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @perf_evsel__is_cache_op_valid(i32, i32) #1

declare dso_local i32 @__perf_evsel__hw_cache_type_op_res_name(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strglobmatch(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
