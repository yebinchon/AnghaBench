; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__create_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evlist.c_perf_evlist__create_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32*, i32* }
%struct.perf_target = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__create_maps(%struct.perf_evlist* %0, %struct.perf_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_evlist*, align 8
  %5 = alloca %struct.perf_target*, align 8
  store %struct.perf_evlist* %0, %struct.perf_evlist** %4, align 8
  store %struct.perf_target* %1, %struct.perf_target** %5, align 8
  %6 = load %struct.perf_target*, %struct.perf_target** %5, align 8
  %7 = getelementptr inbounds %struct.perf_target, %struct.perf_target* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.perf_target*, %struct.perf_target** %5, align 8
  %10 = getelementptr inbounds %struct.perf_target, %struct.perf_target* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.perf_target*, %struct.perf_target** %5, align 8
  %13 = getelementptr inbounds %struct.perf_target, %struct.perf_target* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @thread_map__new_str(i32 %8, i32 %11, i32 %14)
  %16 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %17 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %19 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

23:                                               ; preds = %2
  %24 = load %struct.perf_target*, %struct.perf_target** %5, align 8
  %25 = call i64 @perf_target__has_task(%struct.perf_target* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = call i8* (...) @cpu_map__dummy_new()
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %31 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  br label %54

32:                                               ; preds = %23
  %33 = load %struct.perf_target*, %struct.perf_target** %5, align 8
  %34 = call i32 @perf_target__has_cpu(%struct.perf_target* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load %struct.perf_target*, %struct.perf_target** %5, align 8
  %38 = getelementptr inbounds %struct.perf_target, %struct.perf_target* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = call i8* (...) @cpu_map__dummy_new()
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %45 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  br label %53

46:                                               ; preds = %36, %32
  %47 = load %struct.perf_target*, %struct.perf_target** %5, align 8
  %48 = getelementptr inbounds %struct.perf_target, %struct.perf_target* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @cpu_map__new(i32 %49)
  %51 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %52 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %56 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %66

61:                                               ; preds = %59
  %62 = load %struct.perf_evlist*, %struct.perf_evlist** %4, align 8
  %63 = getelementptr inbounds %struct.perf_evlist, %struct.perf_evlist* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @thread_map__delete(i32* %64)
  store i32 -1, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %60, %22
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32* @thread_map__new_str(i32, i32, i32) #1

declare dso_local i64 @perf_target__has_task(%struct.perf_target*) #1

declare dso_local i8* @cpu_map__dummy_new(...) #1

declare dso_local i32 @perf_target__has_cpu(%struct.perf_target*) #1

declare dso_local i32* @cpu_map__new(i32) #1

declare dso_local i32 @thread_map__delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
