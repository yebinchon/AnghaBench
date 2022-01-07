; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map_groups__find_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map_groups__find_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map_groups = type { i32 }
%struct.map = type { i32 (%struct.map*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @map_groups__find_symbol(%struct.map_groups* %0, i32 %1, i32 %2, %struct.map** %3, i32 %4) #0 {
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.map_groups*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.map**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.map*, align 8
  store %struct.map_groups* %0, %struct.map_groups** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.map** %3, %struct.map*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.map_groups*, %struct.map_groups** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.map* @map_groups__find(%struct.map_groups* %13, i32 %14, i32 %15)
  store %struct.map* %16, %struct.map** %12, align 8
  %17 = load %struct.map*, %struct.map** %12, align 8
  %18 = icmp ne %struct.map* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %5
  %20 = load %struct.map**, %struct.map*** %10, align 8
  %21 = icmp ne %struct.map** %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.map*, %struct.map** %12, align 8
  %24 = load %struct.map**, %struct.map*** %10, align 8
  store %struct.map* %23, %struct.map** %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.map*, %struct.map** %12, align 8
  %27 = load %struct.map*, %struct.map** %12, align 8
  %28 = getelementptr inbounds %struct.map, %struct.map* %27, i32 0, i32 0
  %29 = load i32 (%struct.map*, i32)*, i32 (%struct.map*, i32)** %28, align 8
  %30 = load %struct.map*, %struct.map** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %29(%struct.map* %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.symbol* @map__find_symbol(%struct.map* %26, i32 %32, i32 %33)
  store %struct.symbol* %34, %struct.symbol** %6, align 8
  br label %36

35:                                               ; preds = %5
  store %struct.symbol* null, %struct.symbol** %6, align 8
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.symbol*, %struct.symbol** %6, align 8
  ret %struct.symbol* %37
}

declare dso_local %struct.map* @map_groups__find(%struct.map_groups*, i32, i32) #1

declare dso_local %struct.symbol* @map__find_symbol(%struct.map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
