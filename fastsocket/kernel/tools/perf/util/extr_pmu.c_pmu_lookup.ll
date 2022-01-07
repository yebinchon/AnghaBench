; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pmu.c_pmu_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_pmu.c_pmu_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_pmu = type { i32, i32, i32, i32, i32, i32 }

@format = common dso_local global i32 0, align 4
@aliases = common dso_local global i32 0, align 4
@pmus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_pmu* (i8*)* @pmu_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_pmu* @pmu_lookup(i8* %0) #0 {
  %2 = alloca %struct.perf_pmu*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_pmu*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @format, align 4
  %7 = call i32 @LIST_HEAD(i32 %6)
  %8 = load i32, i32* @aliases, align 4
  %9 = call i32 @LIST_HEAD(i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @pmu_format(i8* %10, i32* @format)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.perf_pmu* null, %struct.perf_pmu** %2, align 8
  br label %57

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @pmu_aliases(i8* %15, i32* @aliases)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.perf_pmu* null, %struct.perf_pmu** %2, align 8
  br label %57

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @pmu_type(i8* %20, i32* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.perf_pmu* null, %struct.perf_pmu** %2, align 8
  br label %57

24:                                               ; preds = %19
  %25 = call %struct.perf_pmu* @zalloc(i32 24)
  store %struct.perf_pmu* %25, %struct.perf_pmu** %4, align 8
  %26 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %27 = icmp ne %struct.perf_pmu* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store %struct.perf_pmu* null, %struct.perf_pmu** %2, align 8
  br label %57

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @pmu_cpumask(i8* %30)
  %32 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %33 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %35 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %34, i32 0, i32 4
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %38 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %37, i32 0, i32 3
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %41 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %40, i32 0, i32 4
  %42 = call i32 @list_splice(i32* @format, i32* %41)
  %43 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %44 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %43, i32 0, i32 3
  %45 = call i32 @list_splice(i32* @aliases, i32* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strdup(i8* %46)
  %48 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %49 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %52 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  %54 = getelementptr inbounds %struct.perf_pmu, %struct.perf_pmu* %53, i32 0, i32 0
  %55 = call i32 @list_add_tail(i32* %54, i32* @pmus)
  %56 = load %struct.perf_pmu*, %struct.perf_pmu** %4, align 8
  store %struct.perf_pmu* %56, %struct.perf_pmu** %2, align 8
  br label %57

57:                                               ; preds = %29, %28, %23, %18, %13
  %58 = load %struct.perf_pmu*, %struct.perf_pmu** %2, align 8
  ret %struct.perf_pmu* %58
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @pmu_format(i8*, i32*) #1

declare dso_local i64 @pmu_aliases(i8*, i32*) #1

declare dso_local i64 @pmu_type(i8*, i32*) #1

declare dso_local %struct.perf_pmu* @zalloc(i32) #1

declare dso_local i32 @pmu_cpumask(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
