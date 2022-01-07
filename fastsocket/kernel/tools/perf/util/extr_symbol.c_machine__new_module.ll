; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__new_module.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machine__new_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.machine = type { i32, i32 }
%struct.dso = type { i32 }

@MAP__FUNCTION = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__GUEST_KMODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @machine__new_module(%struct.machine* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.map*, align 8
  %5 = alloca %struct.machine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca %struct.dso*, align 8
  store %struct.machine* %0, %struct.machine** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.machine*, %struct.machine** %5, align 8
  %11 = getelementptr inbounds %struct.machine, %struct.machine* %10, i32 0, i32 1
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.dso* @__dsos__findnew(i32* %11, i8* %12)
  store %struct.dso* %13, %struct.dso** %9, align 8
  %14 = load %struct.dso*, %struct.dso** %9, align 8
  %15 = icmp eq %struct.dso* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.map* null, %struct.map** %4, align 8
  br label %43

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.dso*, %struct.dso** %9, align 8
  %20 = load i32, i32* @MAP__FUNCTION, align 4
  %21 = call %struct.map* @map__new2(i32 %18, %struct.dso* %19, i32 %20)
  store %struct.map* %21, %struct.map** %8, align 8
  %22 = load %struct.map*, %struct.map** %8, align 8
  %23 = icmp eq %struct.map* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store %struct.map* null, %struct.map** %4, align 8
  br label %43

25:                                               ; preds = %17
  %26 = load %struct.machine*, %struct.machine** %5, align 8
  %27 = call i64 @machine__is_host(%struct.machine* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE, align 4
  %31 = load %struct.dso*, %struct.dso** %9, align 8
  %32 = getelementptr inbounds %struct.dso, %struct.dso* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @DSO_BINARY_TYPE__GUEST_KMODULE, align 4
  %35 = load %struct.dso*, %struct.dso** %9, align 8
  %36 = getelementptr inbounds %struct.dso, %struct.dso* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.machine*, %struct.machine** %5, align 8
  %39 = getelementptr inbounds %struct.machine, %struct.machine* %38, i32 0, i32 0
  %40 = load %struct.map*, %struct.map** %8, align 8
  %41 = call i32 @map_groups__insert(i32* %39, %struct.map* %40)
  %42 = load %struct.map*, %struct.map** %8, align 8
  store %struct.map* %42, %struct.map** %4, align 8
  br label %43

43:                                               ; preds = %37, %24, %16
  %44 = load %struct.map*, %struct.map** %4, align 8
  ret %struct.map* %44
}

declare dso_local %struct.dso* @__dsos__findnew(i32*, i8*) #1

declare dso_local %struct.map* @map__new2(i32, %struct.dso*, i32) #1

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local i32 @map_groups__insert(i32*, %struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
