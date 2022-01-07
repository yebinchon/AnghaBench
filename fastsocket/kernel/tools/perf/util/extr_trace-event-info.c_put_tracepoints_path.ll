; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_put_tracepoints_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_put_tracepoints_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint_path = type { %struct.tracepoint_path*, %struct.tracepoint_path*, %struct.tracepoint_path* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tracepoint_path*)* @put_tracepoints_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_tracepoints_path(%struct.tracepoint_path* %0) #0 {
  %2 = alloca %struct.tracepoint_path*, align 8
  %3 = alloca %struct.tracepoint_path*, align 8
  store %struct.tracepoint_path* %0, %struct.tracepoint_path** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.tracepoint_path*, %struct.tracepoint_path** %2, align 8
  %6 = icmp ne %struct.tracepoint_path* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.tracepoint_path*, %struct.tracepoint_path** %2, align 8
  store %struct.tracepoint_path* %8, %struct.tracepoint_path** %3, align 8
  %9 = load %struct.tracepoint_path*, %struct.tracepoint_path** %2, align 8
  %10 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %9, i32 0, i32 2
  %11 = load %struct.tracepoint_path*, %struct.tracepoint_path** %10, align 8
  store %struct.tracepoint_path* %11, %struct.tracepoint_path** %2, align 8
  %12 = load %struct.tracepoint_path*, %struct.tracepoint_path** %3, align 8
  %13 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %12, i32 0, i32 1
  %14 = load %struct.tracepoint_path*, %struct.tracepoint_path** %13, align 8
  %15 = call i32 @free(%struct.tracepoint_path* %14)
  %16 = load %struct.tracepoint_path*, %struct.tracepoint_path** %3, align 8
  %17 = getelementptr inbounds %struct.tracepoint_path, %struct.tracepoint_path* %16, i32 0, i32 0
  %18 = load %struct.tracepoint_path*, %struct.tracepoint_path** %17, align 8
  %19 = call i32 @free(%struct.tracepoint_path* %18)
  %20 = load %struct.tracepoint_path*, %struct.tracepoint_path** %3, align 8
  %21 = call i32 @free(%struct.tracepoint_path* %20)
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.tracepoint_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
