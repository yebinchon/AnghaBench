; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__fprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"PERF_RECORD_%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_event__fprintf(%union.perf_event* %0, i32* %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %union.perf_event*, %union.perf_event** %3, align 8
  %8 = bitcast %union.perf_event* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @perf_event__name(i32 %10)
  %12 = call i64 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i64 %12, i64* %5, align 8
  %13 = load %union.perf_event*, %union.perf_event** %3, align 8
  %14 = bitcast %union.perf_event* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %35 [
    i32 131, label %17
    i32 129, label %23
    i32 130, label %23
    i32 128, label %29
  ]

17:                                               ; preds = %2
  %18 = load %union.perf_event*, %union.perf_event** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @perf_event__fprintf_comm(%union.perf_event* %18, i32* %19)
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  br label %40

23:                                               ; preds = %2, %2
  %24 = load %union.perf_event*, %union.perf_event** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @perf_event__fprintf_task(%union.perf_event* %24, i32* %25)
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %40

29:                                               ; preds = %2
  %30 = load %union.perf_event*, %union.perf_event** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @perf_event__fprintf_mmap(%union.perf_event* %30, i32* %31)
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %5, align 8
  br label %40

35:                                               ; preds = %2
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %35, %29, %23, %17
  %41 = load i64, i64* %5, align 8
  ret i64 %41
}

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @perf_event__name(i32) #1

declare dso_local i64 @perf_event__fprintf_comm(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_task(%union.perf_event*, i32*) #1

declare dso_local i64 @perf_event__fprintf_mmap(%union.perf_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
