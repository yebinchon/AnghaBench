; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_thread.c_thread__insert_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_thread.c_thread__insert_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.map = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread__insert_map(%struct.thread* %0, %struct.map* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.map*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.map* %1, %struct.map** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 0
  %7 = load %struct.map*, %struct.map** %4, align 8
  %8 = load i32, i32* @verbose, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @map_groups__fixup_overlappings(i32* %6, %struct.map* %7, i32 %8, i32 %9)
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.map*, %struct.map** %4, align 8
  %14 = call i32 @map_groups__insert(i32* %12, %struct.map* %13)
  ret void
}

declare dso_local i32 @map_groups__fixup_overlappings(i32*, %struct.map*, i32, i32) #1

declare dso_local i32 @map_groups__insert(i32*, %struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
