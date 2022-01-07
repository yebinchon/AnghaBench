; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_evsel-tp-sched.c_test__perf_evsel__tp_sched_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_evsel-tp-sched.c_test__perf_evsel__tp_sched_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sched_switch\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"perf_evsel__new\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"prev_comm\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"prev_pid\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"prev_prio\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"prev_state\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"next_comm\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"next_pid\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"next_prio\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"sched_wakeup\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"target_cpu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test__perf_evsel__tp_sched_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.perf_evsel*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.perf_evsel* @perf_evsel__newtp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.perf_evsel* %4, %struct.perf_evsel** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %6 = icmp eq %struct.perf_evsel* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %74

9:                                                ; preds = %0
  %10 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %11 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 16, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %16 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 4, i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %21 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 4, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %26 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 8, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %31 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 16, i32 1)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %36 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 4, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %41 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 4, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %46 = call i32 @perf_evsel__delete(%struct.perf_evsel* %45)
  %47 = call %struct.perf_evsel* @perf_evsel__newtp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store %struct.perf_evsel* %47, %struct.perf_evsel** %2, align 8
  %48 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %49 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 16, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %54 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 4, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %59 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %64 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 4, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load %struct.perf_evsel*, %struct.perf_evsel** %2, align 8
  %69 = call i64 @perf_evsel__test_field(%struct.perf_evsel* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 4, i32 1)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load i32, i32* %3, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %72, %7
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local %struct.perf_evsel* @perf_evsel__newtp(i8*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @perf_evsel__test_field(%struct.perf_evsel*, i8*, i32, i32) #1

declare dso_local i32 @perf_evsel__delete(%struct.perf_evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
