; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_thread__find_addr_location.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_thread__find_addr_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.machine = type { i32 }
%struct.addr_location = type { i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread__find_addr_location(%struct.thread* %0, %struct.machine* %1, i32 %2, i32 %3, i32 %4, %struct.addr_location* %5, i32 %6) #0 {
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.addr_location*, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.machine* %1, %struct.machine** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.addr_location* %5, %struct.addr_location** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load %struct.thread*, %struct.thread** %8, align 8
  %16 = load %struct.machine*, %struct.machine** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %21 = call i32 @thread__find_addr_map(%struct.thread* %15, %struct.machine* %16, i32 %17, i32 %18, i32 %19, %struct.addr_location* %20)
  %22 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %23 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %7
  %27 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %31 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i32* @map__find_symbol(i32* %29, i32 %32, i32 %33)
  %35 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %36 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  br label %40

37:                                               ; preds = %7
  %38 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %39 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %26
  ret void
}

declare dso_local i32 @thread__find_addr_map(%struct.thread*, %struct.machine*, i32, i32, i32, %struct.addr_location*) #1

declare dso_local i32* @map__find_symbol(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
