; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen.c_ak4396_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen.c_ak4396_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, %struct.TYPE_2__, %struct.generic_data* }
%struct.TYPE_2__ = type { i32 }
%struct.generic_data = type { i32, i32** }

@AK4396_SMUTE = common dso_local global i32 0, align 4
@AK4396_DEM_OFF = common dso_local global i32 0, align 4
@AK4396_DFS_NORMAL = common dso_local global i32 0, align 4
@AK4396_CONTROL_2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"AK4396\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @ak4396_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4396_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.generic_data*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 2
  %6 = load %struct.generic_data*, %struct.generic_data** %5, align 8
  store %struct.generic_data* %6, %struct.generic_data** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 2
  %12 = load %struct.generic_data*, %struct.generic_data** %3, align 8
  %13 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @AK4396_SMUTE, align 4
  %15 = load i32, i32* @AK4396_DEM_OFF, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @AK4396_DFS_NORMAL, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.generic_data*, %struct.generic_data** %3, align 8
  %20 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @AK4396_CONTROL_2, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %18, i32* %25, align 4
  %26 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %27 = call i32 @ak4396_registers_init(%struct.oxygen* %26)
  %28 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %29 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_component_add(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ak4396_registers_init(%struct.oxygen*) #1

declare dso_local i32 @snd_component_add(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
