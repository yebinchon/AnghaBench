; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__show_details.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__show_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { i32, %struct.TYPE_4__*, i64, i32, %struct.hist_entry* }
%struct.TYPE_4__ = type { i32 }
%struct.hist_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.symbol* }
%struct.symbol = type { i8* }
%struct.annotation = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"Showing %s for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"  Events  Pcnt (>=%d%%)\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"%d lines not displayed, maybe increase display entries [e]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*)* @perf_top__show_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__show_details(%struct.perf_top* %0) #0 {
  %2 = alloca %struct.perf_top*, align 8
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.annotation*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_top* %0, %struct.perf_top** %2, align 8
  %7 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %8 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %7, i32 0, i32 4
  %9 = load %struct.hist_entry*, %struct.hist_entry** %8, align 8
  store %struct.hist_entry* %9, %struct.hist_entry** %3, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %11 = icmp ne %struct.hist_entry* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %15 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.symbol*, %struct.symbol** %16, align 8
  store %struct.symbol* %17, %struct.symbol** %5, align 8
  %18 = load %struct.symbol*, %struct.symbol** %5, align 8
  %19 = call %struct.annotation* @symbol__annotation(%struct.symbol* %18)
  store %struct.annotation* %19, %struct.annotation** %4, align 8
  %20 = load %struct.annotation*, %struct.annotation** %4, align 8
  %21 = getelementptr inbounds %struct.annotation, %struct.annotation* %20, i32 0, i32 0
  %22 = call i32 @pthread_mutex_lock(i32* %21)
  %23 = load %struct.annotation*, %struct.annotation** %4, align 8
  %24 = getelementptr inbounds %struct.annotation, %struct.annotation* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %85

28:                                               ; preds = %13
  %29 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %30 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i8* @perf_evsel__name(%struct.TYPE_4__* %31)
  %33 = load %struct.symbol*, %struct.symbol** %5, align 8
  %34 = getelementptr inbounds %struct.symbol, %struct.symbol* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %35)
  %37 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %38 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.symbol*, %struct.symbol** %5, align 8
  %42 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %43 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %47 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %52 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %55 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @symbol__annotate_printf(%struct.symbol* %41, i32 %45, i32 %50, i32 0, i32 %53, i32 %56, i32 4)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %59 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %28
  %63 = load %struct.symbol*, %struct.symbol** %5, align 8
  %64 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %65 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @symbol__annotate_zero_histogram(%struct.symbol* %63, i32 %68)
  br label %78

70:                                               ; preds = %28
  %71 = load %struct.symbol*, %struct.symbol** %5, align 8
  %72 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %73 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @symbol__annotate_decay_histogram(%struct.symbol* %71, i32 %76)
  br label %78

78:                                               ; preds = %70, %62
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %27
  %86 = load %struct.annotation*, %struct.annotation** %4, align 8
  %87 = getelementptr inbounds %struct.annotation, %struct.annotation* %86, i32 0, i32 0
  %88 = call i32 @pthread_mutex_unlock(i32* %87)
  br label %89

89:                                               ; preds = %85, %12
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @perf_evsel__name(%struct.TYPE_4__*) #1

declare dso_local i32 @symbol__annotate_printf(%struct.symbol*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @symbol__annotate_zero_histogram(%struct.symbol*, i32) #1

declare dso_local i32 @symbol__annotate_decay_histogram(%struct.symbol*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
