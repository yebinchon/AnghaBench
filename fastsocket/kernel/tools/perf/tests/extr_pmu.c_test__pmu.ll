; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_pmu.c_test__pmu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_pmu.c_test__pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32 }

@formats = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test__pmu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event_attr, align 4
  %6 = call i8* (...) @test_format_dir_get()
  store i8* %6, i8** %2, align 8
  %7 = load i32, i32* @formats, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = call %struct.list_head* (...) @test_terms_list()
  store %struct.list_head* %9, %struct.list_head** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %54

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %15
  %17 = call i32 @memset(%struct.perf_event_attr* %5, i32 0, i32 12)
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @perf_pmu__format_parse(i8* %18, i32* @formats)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %50

23:                                               ; preds = %16
  %24 = load %struct.list_head*, %struct.list_head** %3, align 8
  %25 = call i32 @perf_pmu__config_terms(i32* @formats, %struct.perf_event_attr* %5, %struct.list_head* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %50

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  %32 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, -4611686018427213789
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %50

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, -9223301668110597819
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %50

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 288230376688852231
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %50

49:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %42, %36, %28, %22
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @test_format_dir_put(i8* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %50, %12
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i8* @test_format_dir_get(...) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.list_head* @test_terms_list(...) #1

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i32 @perf_pmu__format_parse(i8*, i32*) #1

declare dso_local i32 @perf_pmu__config_terms(i32*, %struct.perf_event_attr*, %struct.list_head*) #1

declare dso_local i32 @test_format_dir_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
