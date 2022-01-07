; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c___add_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c___add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32 }
%struct.cpu_map = type { i32 }
%struct.perf_evsel = type { i32, i32, %struct.cpu_map* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head**, i32*, %struct.perf_event_attr*, i8*, %struct.cpu_map*)* @__add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_event(%struct.list_head** %0, i32* %1, %struct.perf_event_attr* %2, i8* %3, %struct.cpu_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.perf_event_attr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cpu_map*, align 8
  %12 = alloca %struct.perf_evsel*, align 8
  %13 = alloca %struct.list_head*, align 8
  store %struct.list_head** %0, %struct.list_head*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.perf_event_attr* %2, %struct.perf_event_attr** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.cpu_map* %4, %struct.cpu_map** %11, align 8
  %14 = load %struct.list_head**, %struct.list_head*** %7, align 8
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8
  store %struct.list_head* %15, %struct.list_head** %13, align 8
  %16 = load %struct.list_head*, %struct.list_head** %13, align 8
  %17 = icmp ne %struct.list_head* %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %5
  %19 = call %struct.list_head* @malloc(i32 4)
  store %struct.list_head* %19, %struct.list_head** %13, align 8
  %20 = load %struct.list_head*, %struct.list_head** %13, align 8
  %21 = icmp ne %struct.list_head* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %61

25:                                               ; preds = %18
  %26 = load %struct.list_head*, %struct.list_head** %13, align 8
  %27 = call i32 @INIT_LIST_HEAD(%struct.list_head* %26)
  br label %28

28:                                               ; preds = %25, %5
  %29 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %30 = call i32 @event_attr_init(%struct.perf_event_attr* %29)
  %31 = load %struct.perf_event_attr*, %struct.perf_event_attr** %9, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = call %struct.perf_evsel* @perf_evsel__new(%struct.perf_event_attr* %31, i32 %33)
  store %struct.perf_evsel* %35, %struct.perf_evsel** %12, align 8
  %36 = load %struct.perf_evsel*, %struct.perf_evsel** %12, align 8
  %37 = icmp ne %struct.perf_evsel* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load %struct.list_head*, %struct.list_head** %13, align 8
  %40 = call i32 @free(%struct.list_head* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %61

43:                                               ; preds = %28
  %44 = load %struct.cpu_map*, %struct.cpu_map** %11, align 8
  %45 = load %struct.perf_evsel*, %struct.perf_evsel** %12, align 8
  %46 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %45, i32 0, i32 2
  store %struct.cpu_map* %44, %struct.cpu_map** %46, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strdup(i8* %50)
  %52 = load %struct.perf_evsel*, %struct.perf_evsel** %12, align 8
  %53 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.perf_evsel*, %struct.perf_evsel** %12, align 8
  %56 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %55, i32 0, i32 0
  %57 = load %struct.list_head*, %struct.list_head** %13, align 8
  %58 = call i32 @list_add_tail(i32* %56, %struct.list_head* %57)
  %59 = load %struct.list_head*, %struct.list_head** %13, align 8
  %60 = load %struct.list_head**, %struct.list_head*** %7, align 8
  store %struct.list_head* %59, %struct.list_head** %60, align 8
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %54, %38, %22
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.list_head* @malloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @event_attr_init(%struct.perf_event_attr*) #1

declare dso_local %struct.perf_evsel* @perf_evsel__new(%struct.perf_event_attr*, i32) #1

declare dso_local i32 @free(%struct.list_head*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
