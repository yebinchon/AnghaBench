; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_nsec_printout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-stat.c_nsec_printout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@csv_output = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s%.6f%s%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s%18.6f%s%-25s\00", align 1
@no_aggr = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"CPU%*d%s\00", align 1
@csv_sep = common dso_local global i8* null, align 8
@output = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@SOFTWARE = common dso_local global i32 0, align 4
@SW_TASK_CLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c" # %8.3f CPUs utilized          \00", align 1
@walltime_nsecs_stats = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"                                   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.perf_evsel*, double)* @nsec_printout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsec_printout(i32 %0, %struct.perf_evsel* %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.perf_evsel* %1, %struct.perf_evsel** %5, align 8
  store double %2, double* %6, align 8
  %10 = load double, double* %6, align 8
  %11 = fdiv double %10, 1.000000e+06
  store double %11, double* %7, align 8
  %12 = bitcast [16 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = load i64, i64* @csv_output, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)
  store i8* %16, i8** %9, align 8
  %17 = load i64, i64* @no_aggr, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %21 = load i64, i64* @csv_output, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -4
  %25 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %26 = call %struct.TYPE_4__* @perf_evsel__cpus(%struct.perf_evsel* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** @csv_sep, align 8
  %34 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %19, %3
  %36 = load i32, i32* @output, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %39 = load double, double* %7, align 8
  %40 = load i8*, i8** @csv_sep, align 8
  %41 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %42 = call i32 @perf_evsel__name(%struct.perf_evsel* %41)
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* %37, i8* %38, double %39, i8* %40, i32 %42)
  %44 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %45 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load i32, i32* @output, align 4
  %50 = load i8*, i8** @csv_sep, align 8
  %51 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %52 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %55)
  br label %57

57:                                               ; preds = %48, %35
  %58 = load i64, i64* @csv_output, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %76

61:                                               ; preds = %57
  %62 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %63 = load i32, i32* @SOFTWARE, align 4
  %64 = load i32, i32* @SW_TASK_CLOCK, align 4
  %65 = call i64 @perf_evsel__match(%struct.perf_evsel* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* @output, align 4
  %69 = load double, double* %6, align 8
  %70 = call double @avg_stats(i32* @walltime_nsecs_stats)
  %71 = fdiv double %69, %70
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), double %71)
  br label %76

73:                                               ; preds = %61
  %74 = load i32, i32* @output, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %60, %73, %67
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i8*) #2

declare dso_local %struct.TYPE_4__* @perf_evsel__cpus(%struct.perf_evsel*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @perf_evsel__name(%struct.perf_evsel*) #2

declare dso_local i64 @perf_evsel__match(%struct.perf_evsel*, i32, i32) #2

declare dso_local double @avg_stats(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
