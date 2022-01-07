; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/scripts/python/Perf-Trace-Util/extr_......utilmap.h_map_groups__find_function_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/scripts/python/Perf-Trace-Util/extr_......utilmap.h_map_groups__find_function_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map_groups = type { i32 }
%struct.map = type { i32 }

@MAP__FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (%struct.map_groups*, i8*, %struct.map**, i32)* @map_groups__find_function_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @map_groups__find_function_by_name(%struct.map_groups* %0, i8* %1, %struct.map** %2, i32 %3) #0 {
  %5 = alloca %struct.map_groups*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.map**, align 8
  %8 = alloca i32, align 4
  store %struct.map_groups* %0, %struct.map_groups** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.map** %2, %struct.map*** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %10 = load i32, i32* @MAP__FUNCTION, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.map**, %struct.map*** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.symbol* @map_groups__find_symbol_by_name(%struct.map_groups* %9, i32 %10, i8* %11, %struct.map** %12, i32 %13)
  ret %struct.symbol* %14
}

declare dso_local %struct.symbol* @map_groups__find_symbol_by_name(%struct.map_groups*, i32, i8*, %struct.map**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
