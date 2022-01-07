; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_parse_events_add_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_parse_events_add_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32, i32 }

@MAX_NAME_LEN = common dso_local global i32 0, align 4
@perf_evsel__hw_cache = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@perf_evsel__hw_cache_op = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@perf_evsel__hw_cache_result = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_READ = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_ACCESS = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_add_cache(%struct.list_head** %0, i32* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.perf_event_attr, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i8*], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.list_head** %0, %struct.list_head*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load i32, i32* @MAX_NAME_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %13, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 0
  %28 = load i8*, i8** %10, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  %30 = load i8*, i8** %11, align 8
  store i8* %30, i8** %29, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @perf_evsel__hw_cache, align 4
  %33 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %34 = call i32 @parse_aliases(i8* %31, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %130

40:                                               ; preds = %5
  %41 = load i32, i32* @MAX_NAME_LEN, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @snprintf(i8* %26, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %102, %40
  %45 = load i32, i32* %19, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  br i1 %54, label %55, label %105

55:                                               ; preds = %53
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x i8*], [2 x i8*]* %18, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %22, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %26, i64 %61
  %63 = load i32, i32* @MAX_NAME_LEN, align 4
  %64 = load i32, i32* %20, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i8*, i8** %22, align 8
  %67 = call i32 @snprintf(i8* %62, i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %89

72:                                               ; preds = %55
  %73 = load i8*, i8** %22, align 8
  %74 = load i32, i32* @perf_evsel__hw_cache_op, align 4
  %75 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %76 = call i32 @parse_aliases(i8* %73, i32 %74, i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @perf_evsel__is_cache_op_valid(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %130

87:                                               ; preds = %79
  br label %102

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %55
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i8*, i8** %22, align 8
  %94 = load i32, i32* @perf_evsel__hw_cache_result, align 4
  %95 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %96 = call i32 @parse_aliases(i8* %93, i32 %94, i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %102

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %89
  br label %102

102:                                              ; preds = %101, %99, %87
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  br label %44

105:                                              ; preds = %53
  %106 = load i32, i32* %16, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* %17, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  store i32 %114, i32* %17, align 4
  br label %115

115:                                              ; preds = %113, %110
  %116 = call i32 @memset(%struct.perf_event_attr* %12, i32 0, i32 8)
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = shl i32 %118, 8
  %120 = or i32 %117, %119
  %121 = load i32, i32* %17, align 4
  %122 = shl i32 %121, 16
  %123 = or i32 %120, %122
  %124 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  %126 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = load %struct.list_head**, %struct.list_head*** %7, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @add_event(%struct.list_head** %127, i32* %128, %struct.perf_event_attr* %12, i8* %26)
  store i32 %129, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %130

130:                                              ; preds = %115, %84, %37
  %131 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_aliases(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @perf_evsel__is_cache_op_valid(i32, i32) #2

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #2

declare dso_local i32 @add_event(%struct.list_head**, i32*, %struct.perf_event_attr*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
