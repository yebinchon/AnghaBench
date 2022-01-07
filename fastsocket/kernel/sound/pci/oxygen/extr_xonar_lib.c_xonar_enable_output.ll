; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_lib.c_xonar_enable_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_lib.c_xonar_enable_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.xonar_generic* }
%struct.xonar_generic = type { i32, i32 }

@OXYGEN_GPIO_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xonar_enable_output(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_generic*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.xonar_generic*, %struct.xonar_generic** %5, align 8
  store %struct.xonar_generic* %6, %struct.xonar_generic** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load i32, i32* @OXYGEN_GPIO_CONTROL, align 4
  %9 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %10 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @oxygen_set_bits16(%struct.oxygen* %7, i32 %8, i32 %11)
  %13 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %14 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @msleep(i32 %15)
  %17 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %18 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %19 = load %struct.xonar_generic*, %struct.xonar_generic** %3, align 8
  %20 = getelementptr inbounds %struct.xonar_generic, %struct.xonar_generic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @oxygen_set_bits16(%struct.oxygen* %17, i32 %18, i32 %21)
  ret void
}

declare dso_local i32 @oxygen_set_bits16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
