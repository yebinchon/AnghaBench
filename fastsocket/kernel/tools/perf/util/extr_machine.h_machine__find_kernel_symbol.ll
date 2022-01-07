; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.h_machine__find_kernel_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.h_machine__find_kernel_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.machine = type { i32 }
%struct.map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol* (%struct.machine*, i32, i32, %struct.map**, i32)* @machine__find_kernel_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol* @machine__find_kernel_symbol(%struct.machine* %0, i32 %1, i32 %2, %struct.map** %3, i32 %4) #0 {
  %6 = alloca %struct.machine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.map**, align 8
  %10 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.map** %3, %struct.map*** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.machine*, %struct.machine** %6, align 8
  %12 = getelementptr inbounds %struct.machine, %struct.machine* %11, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.map**, %struct.map*** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.symbol* @map_groups__find_symbol(i32* %12, i32 %13, i32 %14, %struct.map** %15, i32 %16)
  ret %struct.symbol* %17
}

declare dso_local %struct.symbol* @map_groups__find_symbol(i32*, i32, i32, %struct.map**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
