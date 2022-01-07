; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_register_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_register_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_desc = type { i64, i64, i32 }
%struct.perf_sched = type { i64, %struct.task_desc**, %struct.task_desc** }

@MAX_PID = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"registered task #%ld, PID %ld (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_desc* (%struct.perf_sched*, i64, i8*)* @register_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_desc* @register_pid(%struct.perf_sched* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.task_desc*, align 8
  %5 = alloca %struct.perf_sched*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.task_desc*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @MAX_PID, align 8
  %11 = icmp uge i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %15 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %14, i32 0, i32 2
  %16 = load %struct.task_desc**, %struct.task_desc*** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %16, i64 %17
  %19 = load %struct.task_desc*, %struct.task_desc** %18, align 8
  store %struct.task_desc* %19, %struct.task_desc** %8, align 8
  %20 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %21 = icmp ne %struct.task_desc* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  store %struct.task_desc* %23, %struct.task_desc** %4, align 8
  br label %90

24:                                               ; preds = %3
  %25 = call %struct.task_desc* @zalloc(i32 24)
  store %struct.task_desc* %25, %struct.task_desc** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %28 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %30 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %33 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %35 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strcpy(i32 %36, i8* %37)
  %39 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %40 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %41 = call i32 @add_sched_event_sleep(%struct.perf_sched* %39, %struct.task_desc* %40, i32 0, i32 0)
  %42 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %43 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %44 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %43, i32 0, i32 2
  %45 = load %struct.task_desc**, %struct.task_desc*** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %45, i64 %46
  store %struct.task_desc* %42, %struct.task_desc** %47, align 8
  %48 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %49 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %53 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %52, i32 0, i32 1
  %54 = load %struct.task_desc**, %struct.task_desc*** %53, align 8
  %55 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %56 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call %struct.task_desc** @realloc(%struct.task_desc** %54, i32 %59)
  %61 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %62 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %61, i32 0, i32 1
  store %struct.task_desc** %60, %struct.task_desc*** %62, align 8
  %63 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %64 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %63, i32 0, i32 1
  %65 = load %struct.task_desc**, %struct.task_desc*** %64, align 8
  %66 = icmp ne %struct.task_desc** %65, null
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %71 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %72 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %71, i32 0, i32 1
  %73 = load %struct.task_desc**, %struct.task_desc*** %72, align 8
  %74 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  %75 = getelementptr inbounds %struct.task_desc, %struct.task_desc* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.task_desc*, %struct.task_desc** %73, i64 %76
  store %struct.task_desc* %70, %struct.task_desc** %77, align 8
  %78 = load i64, i64* @verbose, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %24
  %81 = load %struct.perf_sched*, %struct.perf_sched** %5, align 8
  %82 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %84, i64 %85, i8* %86)
  br label %88

88:                                               ; preds = %80, %24
  %89 = load %struct.task_desc*, %struct.task_desc** %8, align 8
  store %struct.task_desc* %89, %struct.task_desc** %4, align 8
  br label %90

90:                                               ; preds = %88, %22
  %91 = load %struct.task_desc*, %struct.task_desc** %4, align 8
  ret %struct.task_desc* %91
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.task_desc* @zalloc(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @add_sched_event_sleep(%struct.perf_sched*, %struct.task_desc*, i32, i32) #1

declare dso_local %struct.task_desc** @realloc(%struct.task_desc**, i32) #1

declare dso_local i32 @printf(i8*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
