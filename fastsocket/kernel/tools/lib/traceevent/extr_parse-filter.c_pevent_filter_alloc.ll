; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { %struct.pevent* }
%struct.pevent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_filter* @pevent_filter_alloc(%struct.pevent* %0) #0 {
  %2 = alloca %struct.pevent*, align 8
  %3 = alloca %struct.event_filter*, align 8
  store %struct.pevent* %0, %struct.pevent** %2, align 8
  %4 = call %struct.event_filter* @malloc_or_die(i32 8)
  store %struct.event_filter* %4, %struct.event_filter** %3, align 8
  %5 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %6 = call i32 @memset(%struct.event_filter* %5, i32 0, i32 8)
  %7 = load %struct.pevent*, %struct.pevent** %2, align 8
  %8 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %9 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %8, i32 0, i32 0
  store %struct.pevent* %7, %struct.pevent** %9, align 8
  %10 = load %struct.pevent*, %struct.pevent** %2, align 8
  %11 = call i32 @pevent_ref(%struct.pevent* %10)
  %12 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  ret %struct.event_filter* %12
}

declare dso_local %struct.event_filter* @malloc_or_die(i32) #1

declare dso_local i32 @memset(%struct.event_filter*, i32, i32) #1

declare dso_local i32 @pevent_ref(%struct.pevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
