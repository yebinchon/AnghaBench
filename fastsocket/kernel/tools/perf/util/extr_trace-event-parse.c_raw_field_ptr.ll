; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_raw_field_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_raw_field_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.format_field = type { i32, i32 }

@FIELD_IS_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @raw_field_ptr(%struct.event_format* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.format_field*, align 8
  %9 = alloca i32, align 4
  store %struct.event_format* %0, %struct.event_format** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.event_format*, %struct.event_format** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.format_field* @pevent_find_any_field(%struct.event_format* %10, i8* %11)
  store %struct.format_field* %12, %struct.format_field** %8, align 8
  %13 = load %struct.format_field*, %struct.format_field** %8, align 8
  %14 = icmp ne %struct.format_field* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %45

16:                                               ; preds = %3
  %17 = load %struct.format_field*, %struct.format_field** %8, align 8
  %18 = getelementptr inbounds %struct.format_field, %struct.format_field* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FIELD_IS_DYNAMIC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.format_field*, %struct.format_field** %8, align 8
  %26 = getelementptr inbounds %struct.format_field, %struct.format_field* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %24, i64 %28
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 65535
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  store i8* %37, i8** %4, align 8
  br label %45

38:                                               ; preds = %16
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.format_field*, %struct.format_field** %8, align 8
  %41 = getelementptr inbounds %struct.format_field, %struct.format_field* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %39, i64 %43
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %38, %23, %15
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local %struct.format_field* @pevent_find_any_field(%struct.event_format*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
