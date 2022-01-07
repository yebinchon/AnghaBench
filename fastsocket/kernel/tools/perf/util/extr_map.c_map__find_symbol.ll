; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map__find_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map__find_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @map__find_symbol(%struct.map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.map* %0, %struct.map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.map*, %struct.map** %5, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i64 @map__load(%struct.map* %8, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.symbol* null, %struct.symbol** %4, align 8
  br label %22

13:                                               ; preds = %3
  %14 = load %struct.map*, %struct.map** %5, align 8
  %15 = getelementptr inbounds %struct.map, %struct.map* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.map*, %struct.map** %5, align 8
  %18 = getelementptr inbounds %struct.map, %struct.map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.symbol* @dso__find_symbol(i32 %16, i32 %19, i32 %20)
  store %struct.symbol* %21, %struct.symbol** %4, align 8
  br label %22

22:                                               ; preds = %13, %12
  %23 = load %struct.symbol*, %struct.symbol** %4, align 8
  ret %struct.symbol* %23
}

declare dso_local i64 @map__load(%struct.map*, i32) #1

declare dso_local %struct.symbol* @dso__find_symbol(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
