; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c___show_available_funcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c___show_available_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32, i32 }

@filter_available_functions = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to load map.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map*)* @__show_available_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__show_available_funcs(%struct.map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.map*, align 8
  store %struct.map* %0, %struct.map** %3, align 8
  %4 = load %struct.map*, %struct.map** %3, align 8
  %5 = load i32, i32* @filter_available_functions, align 4
  %6 = call i64 @map__load(%struct.map* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.map*, %struct.map** %3, align 8
  %14 = getelementptr inbounds %struct.map, %struct.map* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.map*, %struct.map** %3, align 8
  %17 = getelementptr inbounds %struct.map, %struct.map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dso__sorted_by_name(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %12
  %22 = load %struct.map*, %struct.map** %3, align 8
  %23 = getelementptr inbounds %struct.map, %struct.map* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.map*, %struct.map** %3, align 8
  %26 = getelementptr inbounds %struct.map, %struct.map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dso__sort_by_name(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %12
  %30 = load %struct.map*, %struct.map** %3, align 8
  %31 = getelementptr inbounds %struct.map, %struct.map* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.map*, %struct.map** %3, align 8
  %34 = getelementptr inbounds %struct.map, %struct.map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @dso__fprintf_symbols_by_name(i32 %32, i32 %35, i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @map__load(%struct.map*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dso__sorted_by_name(i32, i32) #1

declare dso_local i32 @dso__sort_by_name(i32, i32) #1

declare dso_local i32 @dso__fprintf_symbols_by_name(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
