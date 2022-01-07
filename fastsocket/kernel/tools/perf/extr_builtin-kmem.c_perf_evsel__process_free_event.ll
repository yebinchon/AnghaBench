; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kmem.c_perf_evsel__process_free_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-kmem.c_perf_evsel__process_free_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i64 }
%struct.alloc_stat = type { i16, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@root_alloc_stat = common dso_local global i32 0, align 4
@ptr_cmp = common dso_local global i32 0, align 4
@root_caller_stat = common dso_local global i32 0, align 4
@callsite_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, %struct.perf_sample*)* @perf_evsel__process_free_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__process_free_event(%struct.perf_evsel* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_evsel*, align 8
  %5 = alloca %struct.perf_sample*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.alloc_stat*, align 8
  %8 = alloca %struct.alloc_stat*, align 8
  store %struct.perf_evsel* %0, %struct.perf_evsel** %4, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %5, align 8
  %9 = load %struct.perf_evsel*, %struct.perf_evsel** %4, align 8
  %10 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %11 = call i64 @perf_evsel__intval(%struct.perf_evsel* %9, %struct.perf_sample* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @ptr_cmp, align 4
  %14 = call %struct.alloc_stat* @search_alloc_stat(i64 %12, i32 0, i32* @root_alloc_stat, i32 %13)
  store %struct.alloc_stat* %14, %struct.alloc_stat** %7, align 8
  %15 = load %struct.alloc_stat*, %struct.alloc_stat** %7, align 8
  %16 = icmp ne %struct.alloc_stat* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.perf_sample*, %struct.perf_sample** %5, align 8
  %20 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i16
  %23 = sext i16 %22 to i32
  %24 = load %struct.alloc_stat*, %struct.alloc_stat** %7, align 8
  %25 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 4
  %27 = sext i16 %26 to i32
  %28 = icmp ne i32 %23, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %18
  %30 = load %struct.alloc_stat*, %struct.alloc_stat** %7, align 8
  %31 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.alloc_stat*, %struct.alloc_stat** %7, align 8
  %35 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @callsite_cmp, align 4
  %38 = call %struct.alloc_stat* @search_alloc_stat(i64 0, i32 %36, i32* @root_caller_stat, i32 %37)
  store %struct.alloc_stat* %38, %struct.alloc_stat** %8, align 8
  %39 = load %struct.alloc_stat*, %struct.alloc_stat** %8, align 8
  %40 = icmp ne %struct.alloc_stat* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %50

42:                                               ; preds = %29
  %43 = load %struct.alloc_stat*, %struct.alloc_stat** %8, align 8
  %44 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %18
  %48 = load %struct.alloc_stat*, %struct.alloc_stat** %7, align 8
  %49 = getelementptr inbounds %struct.alloc_stat, %struct.alloc_stat* %48, i32 0, i32 0
  store i16 -1, i16* %49, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %41, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @perf_evsel__intval(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local %struct.alloc_stat* @search_alloc_stat(i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
