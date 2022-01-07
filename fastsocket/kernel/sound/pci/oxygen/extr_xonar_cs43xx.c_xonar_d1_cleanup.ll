; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_cs43xx.c_xonar_d1_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_cs43xx.c_xonar_d1_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@CS4362A_PDN = common dso_local global i32 0, align 4
@CS4362A_CPEN = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION = common dso_local global i32 0, align 4
@OXYGEN_FUNCTION_RESET_CODEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @xonar_d1_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xonar_d1_cleanup(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %3 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %4 = call i32 @xonar_disable_output(%struct.oxygen* %3)
  %5 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %6 = load i32, i32* @CS4362A_PDN, align 4
  %7 = load i32, i32* @CS4362A_CPEN, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @cs4362a_write(%struct.oxygen* %5, i32 1, i32 %8)
  %10 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %11 = load i32, i32* @OXYGEN_FUNCTION, align 4
  %12 = load i32, i32* @OXYGEN_FUNCTION_RESET_CODEC, align 4
  %13 = call i32 @oxygen_clear_bits8(%struct.oxygen* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @xonar_disable_output(%struct.oxygen*) #1

declare dso_local i32 @cs4362a_write(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits8(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
