; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__load_kallsyms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__load_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32, %struct.map** }
%struct.map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__load_kallsyms(%struct.machine* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.machine*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.map*, align 8
  %10 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.machine*, %struct.machine** %5, align 8
  %12 = getelementptr inbounds %struct.machine, %struct.machine* %11, i32 0, i32 1
  %13 = load %struct.map**, %struct.map*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.map*, %struct.map** %13, i64 %15
  %17 = load %struct.map*, %struct.map** %16, align 8
  store %struct.map* %17, %struct.map** %9, align 8
  %18 = load %struct.map*, %struct.map** %9, align 8
  %19 = getelementptr inbounds %struct.map, %struct.map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.map*, %struct.map** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dso__load_kallsyms(i32 %20, i8* %21, %struct.map* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load %struct.map*, %struct.map** %9, align 8
  %29 = getelementptr inbounds %struct.map, %struct.map* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dso__set_loaded(i32 %30, i32 %31)
  %33 = load %struct.machine*, %struct.machine** %5, align 8
  %34 = getelementptr inbounds %struct.machine, %struct.machine* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @__map_groups__fixup_end(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %4
  %38 = load i32, i32* %10, align 4
  ret i32 %38
}

declare dso_local i32 @dso__load_kallsyms(i32, i8*, %struct.map*, i32) #1

declare dso_local i32 @dso__set_loaded(i32, i32) #1

declare dso_local i32 @__map_groups__fixup_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
