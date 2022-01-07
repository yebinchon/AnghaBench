; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_util.c_trace_event__id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_util.c_trace_event__id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"%s/syscalls/%s/id\00", align 1
@tracing_events_path = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_event__id(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %5, align 4
  %8 = load i32, i32* @tracing_events_path, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @asprintf(i8** %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = call i32 @open(i8* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %22 = call i64 @read(i32 %20, i8* %21, i32 16)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @close(i32 %28)
  br label %30

30:                                               ; preds = %27, %13
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
