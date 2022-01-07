; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_free_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_free_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { %struct.TYPE_2__, i32, %struct.event_format*, %struct.event_format* }
%struct.TYPE_2__ = type { i32, %struct.event_format* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pevent_free_format(%struct.event_format* %0) #0 {
  %2 = alloca %struct.event_format*, align 8
  store %struct.event_format* %0, %struct.event_format** %2, align 8
  %3 = load %struct.event_format*, %struct.event_format** %2, align 8
  %4 = getelementptr inbounds %struct.event_format, %struct.event_format* %3, i32 0, i32 3
  %5 = load %struct.event_format*, %struct.event_format** %4, align 8
  %6 = call i32 @free(%struct.event_format* %5)
  %7 = load %struct.event_format*, %struct.event_format** %2, align 8
  %8 = getelementptr inbounds %struct.event_format, %struct.event_format* %7, i32 0, i32 2
  %9 = load %struct.event_format*, %struct.event_format** %8, align 8
  %10 = call i32 @free(%struct.event_format* %9)
  %11 = load %struct.event_format*, %struct.event_format** %2, align 8
  %12 = getelementptr inbounds %struct.event_format, %struct.event_format* %11, i32 0, i32 1
  %13 = call i32 @free_formats(i32* %12)
  %14 = load %struct.event_format*, %struct.event_format** %2, align 8
  %15 = getelementptr inbounds %struct.event_format, %struct.event_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.event_format*, %struct.event_format** %16, align 8
  %18 = call i32 @free(%struct.event_format* %17)
  %19 = load %struct.event_format*, %struct.event_format** %2, align 8
  %20 = getelementptr inbounds %struct.event_format, %struct.event_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @free_args(i32 %22)
  %24 = load %struct.event_format*, %struct.event_format** %2, align 8
  %25 = call i32 @free(%struct.event_format* %24)
  ret void
}

declare dso_local i32 @free(%struct.event_format*) #1

declare dso_local i32 @free_formats(i32*) #1

declare dso_local i32 @free_args(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
