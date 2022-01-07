; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_find_common_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_find_common_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_field = type { i32, %struct.format_field* }
%struct.event_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.format_field* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.format_field* @pevent_find_common_field(%struct.event_format* %0, i8* %1) #0 {
  %3 = alloca %struct.event_format*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.format_field*, align 8
  store %struct.event_format* %0, %struct.event_format** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.event_format*, %struct.event_format** %3, align 8
  %7 = getelementptr inbounds %struct.event_format, %struct.event_format* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.format_field*, %struct.format_field** %8, align 8
  store %struct.format_field* %9, %struct.format_field** %5, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.format_field*, %struct.format_field** %5, align 8
  %12 = icmp ne %struct.format_field* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.format_field*, %struct.format_field** %5, align 8
  %15 = getelementptr inbounds %struct.format_field, %struct.format_field* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.format_field*, %struct.format_field** %5, align 8
  %24 = getelementptr inbounds %struct.format_field, %struct.format_field* %23, i32 0, i32 1
  %25 = load %struct.format_field*, %struct.format_field** %24, align 8
  store %struct.format_field* %25, %struct.format_field** %5, align 8
  br label %10

26:                                               ; preds = %20, %10
  %27 = load %struct.format_field*, %struct.format_field** %5, align 8
  ret %struct.format_field* %27
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
