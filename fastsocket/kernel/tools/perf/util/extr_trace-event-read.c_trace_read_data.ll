; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_trace_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_trace_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.pevent_record = type { i32 }
%struct.pevent = type { i32 }

@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pevent_record* @trace_read_data(%struct.pevent* %0, i32 %1) #0 {
  %3 = alloca %struct.pevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pevent_record*, align 8
  store %struct.pevent* %0, %struct.pevent** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pevent*, %struct.pevent** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.pevent_record* @trace_peek_data(%struct.pevent* %6, i32 %7)
  store %struct.pevent_record* %8, %struct.pevent_record** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.pevent_record*, %struct.pevent_record** %5, align 8
  ret %struct.pevent_record* %14
}

declare dso_local %struct.pevent_record* @trace_peek_data(%struct.pevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
