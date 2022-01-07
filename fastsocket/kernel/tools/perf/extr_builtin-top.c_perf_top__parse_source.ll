; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__parse_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__parse_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { %struct.hist_entry* }
%struct.hist_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.map*, %struct.symbol* }
%struct.map = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.symbol = type { i32 }
%struct.annotation = type { i32, i32* }

@DSO_BINARY_TYPE__KALLSYMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Can't annotate %s: No vmlinux file was found in the path\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Not enough memory for annotating '%s' symbol!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_top*, %struct.hist_entry*)* @perf_top__parse_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_top__parse_source(%struct.perf_top* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_top*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.annotation*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  store i32 -1, i32* %9, align 4
  %10 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %11 = icmp ne %struct.hist_entry* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.symbol*, %struct.symbol** %15, align 8
  %17 = icmp ne %struct.symbol* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %85

19:                                               ; preds = %12
  %20 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %21 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.symbol*, %struct.symbol** %22, align 8
  store %struct.symbol* %23, %struct.symbol** %6, align 8
  %24 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %25 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.map*, %struct.map** %26, align 8
  store %struct.map* %27, %struct.map** %8, align 8
  %28 = load %struct.map*, %struct.map** %8, align 8
  %29 = getelementptr inbounds %struct.map, %struct.map* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DSO_BINARY_TYPE__KALLSYMS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %19
  %36 = load %struct.symbol*, %struct.symbol** %6, align 8
  %37 = getelementptr inbounds %struct.symbol, %struct.symbol* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 @sleep(i32 1)
  store i32 -1, i32* %3, align 4
  br label %85

41:                                               ; preds = %19
  %42 = load %struct.symbol*, %struct.symbol** %6, align 8
  %43 = call %struct.annotation* @symbol__annotation(%struct.symbol* %42)
  store %struct.annotation* %43, %struct.annotation** %7, align 8
  %44 = load %struct.annotation*, %struct.annotation** %7, align 8
  %45 = getelementptr inbounds %struct.annotation, %struct.annotation* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.annotation*, %struct.annotation** %7, align 8
  %50 = getelementptr inbounds %struct.annotation, %struct.annotation* %49, i32 0, i32 0
  %51 = call i32 @pthread_mutex_lock(i32* %50)
  br label %76

52:                                               ; preds = %41
  %53 = load %struct.annotation*, %struct.annotation** %7, align 8
  %54 = getelementptr inbounds %struct.annotation, %struct.annotation* %53, i32 0, i32 0
  %55 = call i32 @pthread_mutex_lock(i32* %54)
  %56 = load %struct.symbol*, %struct.symbol** %6, align 8
  %57 = call i64 @symbol__alloc_hist(%struct.symbol* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load %struct.annotation*, %struct.annotation** %7, align 8
  %61 = getelementptr inbounds %struct.annotation, %struct.annotation* %60, i32 0, i32 0
  %62 = call i32 @pthread_mutex_unlock(i32* %61)
  %63 = load %struct.symbol*, %struct.symbol** %6, align 8
  %64 = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = call i32 @sleep(i32 1)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %85

69:                                               ; preds = %52
  %70 = load %struct.symbol*, %struct.symbol** %6, align 8
  %71 = load %struct.map*, %struct.map** %8, align 8
  %72 = call i32 @symbol__annotate(%struct.symbol* %70, %struct.map* %71, i32 0)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %78 = load %struct.perf_top*, %struct.perf_top** %4, align 8
  %79 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %78, i32 0, i32 0
  store %struct.hist_entry* %77, %struct.hist_entry** %79, align 8
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.annotation*, %struct.annotation** %7, align 8
  %82 = getelementptr inbounds %struct.annotation, %struct.annotation* %81, i32 0, i32 0
  %83 = call i32 @pthread_mutex_unlock(i32* %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %59, %35, %18
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @symbol__alloc_hist(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @symbol__annotate(%struct.symbol*, %struct.map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
