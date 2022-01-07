; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_get_common_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_get_common_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scripting_context = type { i64, %struct.pevent* }
%struct.pevent = type { %struct.event_format** }
%struct.event_format = type { i32 }
%struct.format_field = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scripting_context*, i32*, i32*, i8*)* @get_common_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_common_field(%struct.scripting_context* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scripting_context*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pevent*, align 8
  %11 = alloca %struct.event_format*, align 8
  %12 = alloca %struct.format_field*, align 8
  store %struct.scripting_context* %0, %struct.scripting_context** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.scripting_context*, %struct.scripting_context** %6, align 8
  %14 = getelementptr inbounds %struct.scripting_context, %struct.scripting_context* %13, i32 0, i32 1
  %15 = load %struct.pevent*, %struct.pevent** %14, align 8
  store %struct.pevent* %15, %struct.pevent** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %4
  %20 = load %struct.pevent*, %struct.pevent** %10, align 8
  %21 = getelementptr inbounds %struct.pevent, %struct.pevent* %20, i32 0, i32 0
  %22 = load %struct.event_format**, %struct.event_format*** %21, align 8
  %23 = icmp ne %struct.event_format** %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %58

25:                                               ; preds = %19
  %26 = load %struct.pevent*, %struct.pevent** %10, align 8
  %27 = getelementptr inbounds %struct.pevent, %struct.pevent* %26, i32 0, i32 0
  %28 = load %struct.event_format**, %struct.event_format*** %27, align 8
  %29 = getelementptr inbounds %struct.event_format*, %struct.event_format** %28, i64 0
  %30 = load %struct.event_format*, %struct.event_format** %29, align 8
  store %struct.event_format* %30, %struct.event_format** %11, align 8
  %31 = load %struct.event_format*, %struct.event_format** %11, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call %struct.format_field* @pevent_find_common_field(%struct.event_format* %31, i8* %32)
  store %struct.format_field* %33, %struct.format_field** %12, align 8
  %34 = load %struct.format_field*, %struct.format_field** %12, align 8
  %35 = icmp ne %struct.format_field* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %58

37:                                               ; preds = %25
  %38 = load %struct.format_field*, %struct.format_field** %12, align 8
  %39 = getelementptr inbounds %struct.format_field, %struct.format_field* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.format_field*, %struct.format_field** %12, align 8
  %43 = getelementptr inbounds %struct.format_field, %struct.format_field* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %4
  %47 = load %struct.pevent*, %struct.pevent** %10, align 8
  %48 = load %struct.scripting_context*, %struct.scripting_context** %6, align 8
  %49 = getelementptr inbounds %struct.scripting_context, %struct.scripting_context* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pevent_read_number(%struct.pevent* %47, i64 %54, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %46, %36, %24
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.format_field* @pevent_find_common_field(%struct.event_format*, i8*) #1

declare dso_local i32 @pevent_read_number(%struct.pevent*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
