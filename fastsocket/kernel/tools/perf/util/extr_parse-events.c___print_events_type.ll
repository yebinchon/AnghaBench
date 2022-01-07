; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c___print_events_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c___print_events_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_symbol = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"%s OR %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"  %-50s [%s]\0A\00", align 1
@event_type_descriptors = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.event_symbol*, i32)* @__print_events_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__print_events_type(i64 %0, %struct.event_symbol* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.event_symbol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.event_symbol* %1, %struct.event_symbol** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %41, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.event_symbol*, %struct.event_symbol** %5, align 8
  %15 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %21 = load %struct.event_symbol*, %struct.event_symbol** %5, align 8
  %22 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.event_symbol*, %struct.event_symbol** %5, align 8
  %25 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %26)
  br label %34

28:                                               ; preds = %13
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %30 = load %struct.event_symbol*, %struct.event_symbol** %5, align 8
  %31 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %29, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %28, %19
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %36 = load i8**, i8*** @event_type_descriptors, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %35, i8* %39)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load %struct.event_symbol*, %struct.event_symbol** %5, align 8
  %45 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %44, i32 1
  store %struct.event_symbol* %45, %struct.event_symbol** %5, align 8
  br label %9

46:                                               ; preds = %9
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
