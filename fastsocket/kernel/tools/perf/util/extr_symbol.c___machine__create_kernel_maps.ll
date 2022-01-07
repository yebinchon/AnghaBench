; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c___machine__create_kernel_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c___machine__create_kernel_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dso = type { i32 }
%struct.kmap = type { i32* }

@MAP__NR_TYPES = common dso_local global i32 0, align 4
@identity__map_ip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__machine__create_kernel_maps(%struct.machine* %0, %struct.dso* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kmap*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %struct.dso* %1, %struct.dso** %5, align 8
  %9 = load %struct.machine*, %struct.machine** %4, align 8
  %10 = call i32 @machine__get_kernel_start_addr(%struct.machine* %9)
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %75, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAP__NR_TYPES, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.dso*, %struct.dso** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.TYPE_4__* @map__new2(i32 %16, %struct.dso* %17, i32 %18)
  %20 = load %struct.machine*, %struct.machine** %4, align 8
  %21 = getelementptr inbounds %struct.machine, %struct.machine* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %25, align 8
  %26 = load %struct.machine*, %struct.machine** %4, align 8
  %27 = getelementptr inbounds %struct.machine, %struct.machine* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp eq %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %79

35:                                               ; preds = %15
  %36 = load i32, i32* @identity__map_ip, align 4
  %37 = load %struct.machine*, %struct.machine** %4, align 8
  %38 = getelementptr inbounds %struct.machine, %struct.machine* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %36, i32* %44, align 4
  %45 = load %struct.machine*, %struct.machine** %4, align 8
  %46 = getelementptr inbounds %struct.machine, %struct.machine* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %36, i32* %52, align 4
  %53 = load %struct.machine*, %struct.machine** %4, align 8
  %54 = getelementptr inbounds %struct.machine, %struct.machine* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call %struct.kmap* @map__kmap(%struct.TYPE_4__* %59)
  store %struct.kmap* %60, %struct.kmap** %8, align 8
  %61 = load %struct.machine*, %struct.machine** %4, align 8
  %62 = getelementptr inbounds %struct.machine, %struct.machine* %61, i32 0, i32 1
  %63 = load %struct.kmap*, %struct.kmap** %8, align 8
  %64 = getelementptr inbounds %struct.kmap, %struct.kmap* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.machine*, %struct.machine** %4, align 8
  %66 = getelementptr inbounds %struct.machine, %struct.machine* %65, i32 0, i32 1
  %67 = load %struct.machine*, %struct.machine** %4, align 8
  %68 = getelementptr inbounds %struct.machine, %struct.machine* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @map_groups__insert(i32* %66, %struct.TYPE_4__* %73)
  br label %75

75:                                               ; preds = %35
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %11

78:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %34
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @machine__get_kernel_start_addr(%struct.machine*) #1

declare dso_local %struct.TYPE_4__* @map__new2(i32, %struct.dso*, i32) #1

declare dso_local %struct.kmap* @map__kmap(%struct.TYPE_4__*) #1

declare dso_local i32 @map_groups__insert(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
