; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__print_mapped_keys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__print_mapped_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { i32, i32, i32, i32, i64, i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.symbol* }
%struct.symbol = type { i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\0AMapped keys:\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\09[d]     display refresh delay.             \09(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\09[e]     display entries (lines).           \09(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\09[E]     active event counter.              \09(%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\09[f]     profile display filter (count).    \09(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\09[F]     annotate display filter (percent). \09(%d%%)\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\09[s]     annotate symbol.                   \09(%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\09[S]     stop annotation.\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\09[K]     hide kernel_symbols symbols.     \09(%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\09[U]     hide user symbols.               \09(%s)\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"\09[z]     toggle sample zeroing.             \09(%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\09[qQ]    quit.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*)* @perf_top__print_mapped_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__print_mapped_keys(%struct.perf_top* %0) #0 {
  %2 = alloca %struct.perf_top*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.perf_top* %0, %struct.perf_top** %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %6 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %5, i32 0, i32 9
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %11 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %10, i32 0, i32 9
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.symbol*, %struct.symbol** %14, align 8
  store %struct.symbol* %15, %struct.symbol** %4, align 8
  %16 = load %struct.symbol*, %struct.symbol** %4, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %9, %1
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @stdout, align 4
  %23 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %24 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @stdout, align 4
  %28 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %29 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %33 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %32, i32 0, i32 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load i32, i32* @stdout, align 4
  %40 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %41 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @perf_evsel__name(i32 %42)
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %38, %19
  %46 = load i32, i32* @stdout, align 4
  %47 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %48 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @stdout, align 4
  %52 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %53 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @stdout, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %61

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60, %59
  %62 = phi i8* [ %57, %59 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %60 ]
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @stdout, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %66 = load i32, i32* @stdout, align 4
  %67 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %68 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @stdout, align 4
  %75 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %76 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @stdout, align 4
  %83 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %84 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @stdout, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @perf_evsel__name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
