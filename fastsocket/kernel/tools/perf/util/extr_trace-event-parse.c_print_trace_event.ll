; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_print_trace_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-parse.c_print_trace_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32 }
%struct.event_format = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ug! no event found for type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_trace_event(%struct.pevent* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.event_format*, align 8
  store %struct.pevent* %0, %struct.pevent** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pevent*, %struct.pevent** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @trace_parse_common_type(%struct.pevent* %11, i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.pevent*, %struct.pevent** %5, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.event_format* @pevent_find_event(%struct.pevent* %14, i32 %15)
  store %struct.event_format* %16, %struct.event_format** %10, align 8
  %17 = load %struct.event_format*, %struct.event_format** %10, align 8
  %18 = icmp ne %struct.event_format* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.event_format*, %struct.event_format** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @event_format__print(%struct.event_format* %23, i32 %24, i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %19
  ret void
}

declare dso_local i32 @trace_parse_common_type(%struct.pevent*, i8*) #1

declare dso_local %struct.event_format* @pevent_find_event(%struct.pevent*, i32) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @event_format__print(%struct.event_format*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
