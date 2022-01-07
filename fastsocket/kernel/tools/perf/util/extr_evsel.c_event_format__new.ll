; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_event_format__new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_event_format__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s/%s/%s/format\00", align 1
@tracing_events_path = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_format* @event_format__new(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.event_format*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.event_format* null, %struct.event_format** %12, align 8
  %13 = load i32, i32* @tracing_events_path, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @asprintf(i8** %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14, i8* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %74

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %71

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %58, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i64, i64* @BUFSIZ, align 8
  %33 = load i64, i64* %11, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %11, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i8* @realloc(i8* %35, i64 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %66

41:                                               ; preds = %31
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %41, %27
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = load i64, i64* @BUFSIZ, align 8
  %49 = call i32 @read(i32 %44, i8* %47, i64 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %66

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %27, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @pevent_parse_format(%struct.event_format** %12, i8* %62, i64 %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %52, %40
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @close(i32 %69)
  br label %71

71:                                               ; preds = %66, %25
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %71, %18
  %75 = load %struct.event_format*, %struct.event_format** %12, align 8
  ret %struct.event_format* %75
}

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @pevent_parse_format(%struct.event_format**, i8*, i64, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
