; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_run_one_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_run_one_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32, i32, i32, double, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"#%-3ld: %0.3f, \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ravg: %0.2f, \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cpu: %0.2f / %0.2f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" (%ld sleep corrections)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*)* @run_one_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_one_test(%struct.perf_sched* %0) #0 {
  %2 = alloca %struct.perf_sched*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %2, align 8
  %8 = call i32 (...) @get_nsecs()
  store i32 %8, i32* %3, align 4
  %9 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %10 = call i32 @wait_for_tasks(%struct.perf_sched* %9)
  %11 = call i32 (...) @get_nsecs()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %17 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %21 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %25 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %28 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %42

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %45 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %49 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %55 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %58 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 9
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %60, %61
  %63 = sdiv i32 %62, 10
  %64 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %65 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %67 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %70, 1.000000e+06
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %68, double %71)
  %73 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %74 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, 1.000000e+06
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), double %77)
  %79 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %80 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %79, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to double
  %83 = fdiv double %82, 1.000000e+06
  %84 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %85 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to double
  %88 = fdiv double %87, 1.000000e+06
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), double %83, double %88)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %92 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %91, i32 0, i32 4
  %93 = load double, double* %92, align 8
  %94 = fcmp une double %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %56
  %96 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %97 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %96, i32 0, i32 4
  %98 = load double, double* %97, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), double %98)
  br label %100

100:                                              ; preds = %95, %56
  %101 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %102 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %101, i32 0, i32 4
  store double 0.000000e+00, double* %102, align 8
  ret void
}

declare dso_local i32 @get_nsecs(...) #1

declare dso_local i32 @wait_for_tasks(%struct.perf_sched*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
