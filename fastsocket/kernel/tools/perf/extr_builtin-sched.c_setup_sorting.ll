; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_setup_sorting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-sched.c_setup_sorting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i32, i32, i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown --sort key: `%s'\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*, %struct.option*, i8**)* @setup_sorting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_sorting(%struct.perf_sched* %0, %struct.option* %1, i8** %2) #0 {
  %4 = alloca %struct.perf_sched*, align 8
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %4, align 8
  store %struct.option* %1, %struct.option** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load %struct.perf_sched*, %struct.perf_sched** %4, align 8
  %11 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @strdup(i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i8* @strtok_r(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %32, %3
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.perf_sched*, %struct.perf_sched** %4, align 8
  %22 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %21, i32 0, i32 1
  %23 = call i64 @sort_dimension__add(i8* %20, i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8**, i8*** %6, align 8
  %29 = load %struct.option*, %struct.option** %5, align 8
  %30 = call i32 @usage_with_options(i8** %28, %struct.option* %29)
  br label %31

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %31
  %33 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i8* %33, i8** %8, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load %struct.perf_sched*, %struct.perf_sched** %4, align 8
  %38 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %37, i32 0, i32 0
  %39 = call i64 @sort_dimension__add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  ret void
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @sort_dimension__add(i8*, i32*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
