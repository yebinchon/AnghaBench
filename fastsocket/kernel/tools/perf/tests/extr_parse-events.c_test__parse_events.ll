; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__parse_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_parse-events.c_test__parse_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test__events = common dso_local global i32 0, align 4
@test__events_pmu = common dso_local global i32 0, align 4
@test__terms = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test__parse_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @test__events, align 4
  %7 = load i32, i32* @test__events, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = call i32 (i32, i32, ...) bitcast (i32 (...)* @test_events to i32 (i32, i32, ...)*)(i32 %6, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %5
  br label %15

15:                                               ; preds = %14
  %16 = call i64 (...) @test_pmu()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @test__events_pmu, align 4
  %21 = load i32, i32* @test__events_pmu, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 (i32, i32, ...) bitcast (i32 (...)* @test_events to i32 (i32, i32, ...)*)(i32 %20, i32 %22)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %19
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29, %15
  %31 = call i64 (...) @test_pmu()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = call i32 (...) @test_pmu_events()
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %1, align 4
  br label %51

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, i32* @test__terms, align 4
  %42 = load i32, i32* @test__terms, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = call i32 @test_terms(i32 %41, i32 %43)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %37
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @test_events(...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @test_pmu(...) #1

declare dso_local i32 @test_pmu_events(...) #1

declare dso_local i32 @test_terms(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
