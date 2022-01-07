; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map__clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_map.c_map__clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @map__clone(%struct.map* %0) #0 {
  %2 = alloca %struct.map*, align 8
  %3 = alloca %struct.map*, align 8
  %4 = alloca %struct.map*, align 8
  store %struct.map* %0, %struct.map** %3, align 8
  %5 = call %struct.map* @malloc(i32 4)
  store %struct.map* %5, %struct.map** %4, align 8
  %6 = load %struct.map*, %struct.map** %4, align 8
  %7 = icmp ne %struct.map* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.map* null, %struct.map** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.map*, %struct.map** %4, align 8
  %11 = load %struct.map*, %struct.map** %3, align 8
  %12 = call i32 @memcpy(%struct.map* %10, %struct.map* %11, i32 4)
  %13 = load %struct.map*, %struct.map** %4, align 8
  store %struct.map* %13, %struct.map** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.map*, %struct.map** %2, align 8
  ret %struct.map* %15
}

declare dso_local %struct.map* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.map*, %struct.map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
