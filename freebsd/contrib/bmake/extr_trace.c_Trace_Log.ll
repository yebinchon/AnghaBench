; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_trace.c_Trace_Log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_trace.c_Trace_Log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.timeval = type { i64, i64 }

@trfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"%lld.%06ld %d %s %d %s\00", align 1
@jobTokensRunning = common dso_local global i32 0, align 4
@evname = common dso_local global i32* null, align 8
@trpid = common dso_local global i32 0, align 4
@trwd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" %s %d %x %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Trace_Log(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.timeval, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32*, i32** @trfile, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %50

9:                                                ; preds = %2
  %10 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %11 = load i32*, i32** @trfile, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @jobTokensRunning, align 4
  %17 = load i32*, i32** @evname, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @trpid, align 4
  %22 = load i32, i32* @trwd, align 4
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %15, i32 %16, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %9
  %27 = load i32*, i32** @trfile, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %35, i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %26, %9
  %46 = load i32*, i32** @trfile, align 8
  %47 = call i32 @fputc(i8 signext 10, i32* %46)
  %48 = load i32*, i32** @trfile, align 8
  %49 = call i32 @fflush(i32* %48)
  br label %50

50:                                               ; preds = %45, %8
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
