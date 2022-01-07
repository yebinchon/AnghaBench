; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__record_precise_ip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__record_precise_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.symbol* }
%struct.symbol = type { i32 }
%struct.hist_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.symbol* }
%struct.TYPE_10__ = type { i32, i32 (%struct.TYPE_10__*, i32)* }
%struct.annotation = type { i32, i32* }

@use_browser = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Not enough memory for annotating '%s' symbol!\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*, %struct.hist_entry*, i32, i32)* @perf_top__record_precise_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__record_precise_ip(%struct.perf_top* %0, %struct.hist_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.perf_top*, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.annotation*, align 8
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %5, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %13 = icmp eq %struct.hist_entry* %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %4
  %15 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.symbol*, %struct.symbol** %17, align 8
  %19 = icmp eq %struct.symbol* %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %14
  %21 = load %struct.perf_top*, %struct.perf_top** %5, align 8
  %22 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load %struct.perf_top*, %struct.perf_top** %5, align 8
  %27 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.symbol*, %struct.symbol** %30, align 8
  %32 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %33 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.symbol*, %struct.symbol** %34, align 8
  %36 = icmp ne %struct.symbol* %31, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %25, %20
  %38 = load i32, i32* @use_browser, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %14, %4
  br label %115

41:                                               ; preds = %37, %25
  %42 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %43 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %struct.symbol*, %struct.symbol** %44, align 8
  store %struct.symbol* %45, %struct.symbol** %10, align 8
  %46 = load %struct.symbol*, %struct.symbol** %10, align 8
  %47 = call %struct.annotation* @symbol__annotation(%struct.symbol* %46)
  store %struct.annotation* %47, %struct.annotation** %9, align 8
  %48 = load %struct.annotation*, %struct.annotation** %9, align 8
  %49 = getelementptr inbounds %struct.annotation, %struct.annotation* %48, i32 0, i32 0
  %50 = call i64 @pthread_mutex_trylock(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %115

53:                                               ; preds = %41
  %54 = load %struct.annotation*, %struct.annotation** %9, align 8
  %55 = getelementptr inbounds %struct.annotation, %struct.annotation* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.symbol*, %struct.symbol** %10, align 8
  %60 = call i64 @symbol__alloc_hist(%struct.symbol* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load %struct.annotation*, %struct.annotation** %9, align 8
  %64 = getelementptr inbounds %struct.annotation, %struct.annotation* %63, i32 0, i32 0
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  %66 = load %struct.symbol*, %struct.symbol** %10, align 8
  %67 = getelementptr inbounds %struct.symbol, %struct.symbol* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = call i32 @sleep(i32 1)
  br label %115

71:                                               ; preds = %58, %53
  %72 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %73 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %76, align 8
  %78 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %79 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 %77(%struct.TYPE_10__* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.symbol*, %struct.symbol** %10, align 8
  %85 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %86 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @symbol__inc_addr_samples(%struct.symbol* %84, %struct.TYPE_10__* %88, i32 %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load %struct.annotation*, %struct.annotation** %9, align 8
  %93 = getelementptr inbounds %struct.annotation, %struct.annotation* %92, i32 0, i32 0
  %94 = call i32 @pthread_mutex_unlock(i32* %93)
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @ERANGE, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %71
  %100 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %101 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %109 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load %struct.symbol*, %struct.symbol** %10, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @ui__warn_map_erange(%struct.TYPE_10__* %111, %struct.symbol* %112, i32 %113)
  br label %115

115:                                              ; preds = %40, %52, %62, %107, %99, %71
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i64 @pthread_mutex_trylock(i32*) #1

declare dso_local i64 @symbol__alloc_hist(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @symbol__inc_addr_samples(%struct.symbol*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ui__warn_map_erange(%struct.TYPE_10__*, %struct.symbol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
