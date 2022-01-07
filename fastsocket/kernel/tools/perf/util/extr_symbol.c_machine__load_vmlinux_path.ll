; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__load_vmlinux_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__load_vmlinux_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { %struct.map** }
%struct.map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__load_vmlinux_path(%struct.machine* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.map*, align 8
  %8 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.machine*, %struct.machine** %4, align 8
  %10 = getelementptr inbounds %struct.machine, %struct.machine* %9, i32 0, i32 0
  %11 = load %struct.map**, %struct.map*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.map*, %struct.map** %11, i64 %13
  %15 = load %struct.map*, %struct.map** %14, align 8
  store %struct.map* %15, %struct.map** %7, align 8
  %16 = load %struct.map*, %struct.map** %7, align 8
  %17 = getelementptr inbounds %struct.map, %struct.map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.map*, %struct.map** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dso__load_vmlinux_path(i32 %18, %struct.map* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.map*, %struct.map** %7, align 8
  %26 = getelementptr inbounds %struct.map, %struct.map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dso__set_loaded(i32 %27, i32 %28)
  %30 = load %struct.map*, %struct.map** %7, align 8
  %31 = call i32 @map__reloc_vmlinux(%struct.map* %30)
  br label %32

32:                                               ; preds = %24, %3
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local i32 @dso__load_vmlinux_path(i32, %struct.map*, i32) #1

declare dso_local i32 @dso__set_loaded(i32, i32) #1

declare dso_local i32 @map__reloc_vmlinux(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
