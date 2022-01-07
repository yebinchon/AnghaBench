; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_cs4245_registers_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_xonar_dg.c_cs4245_registers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i32* }

@CS4245_POWER_CTRL = common dso_local global i64 0, align 8
@CS4245_PDN = common dso_local global i32 0, align 4
@CS4245_DAC_CTRL_1 = common dso_local global i64 0, align 8
@CS4245_ADC_CTRL = common dso_local global i64 0, align 8
@CS4245_SIGNAL_SEL = common dso_local global i64 0, align 8
@CS4245_PGA_B_CTRL = common dso_local global i64 0, align 8
@CS4245_PGA_A_CTRL = common dso_local global i64 0, align 8
@CS4245_ANALOG_IN = common dso_local global i64 0, align 8
@CS4245_DAC_A_CTRL = common dso_local global i64 0, align 8
@CS4245_DAC_B_CTRL = common dso_local global i64 0, align 8
@CS4245_DAC_CTRL_2 = common dso_local global i64 0, align 8
@CS4245_DAC_SOFT = common dso_local global i32 0, align 4
@CS4245_DAC_ZERO = common dso_local global i32 0, align 4
@CS4245_INVERT_DAC = common dso_local global i32 0, align 4
@CS4245_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @cs4245_registers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4245_registers_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.dg*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.dg*, %struct.dg** %5, align 8
  store %struct.dg* %6, %struct.dg** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load i64, i64* @CS4245_POWER_CTRL, align 8
  %9 = load i32, i32* @CS4245_PDN, align 4
  %10 = call i32 @cs4245_write(%struct.oxygen* %7, i64 %8, i32 %9)
  %11 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %12 = load i64, i64* @CS4245_DAC_CTRL_1, align 8
  %13 = load %struct.dg*, %struct.dg** %3, align 8
  %14 = getelementptr inbounds %struct.dg, %struct.dg* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @CS4245_DAC_CTRL_1, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cs4245_write(%struct.oxygen* %11, i64 %12, i32 %18)
  %20 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %21 = load i64, i64* @CS4245_ADC_CTRL, align 8
  %22 = load %struct.dg*, %struct.dg** %3, align 8
  %23 = getelementptr inbounds %struct.dg, %struct.dg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @CS4245_ADC_CTRL, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cs4245_write(%struct.oxygen* %20, i64 %21, i32 %27)
  %29 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %30 = load i64, i64* @CS4245_SIGNAL_SEL, align 8
  %31 = load %struct.dg*, %struct.dg** %3, align 8
  %32 = getelementptr inbounds %struct.dg, %struct.dg* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @CS4245_SIGNAL_SEL, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cs4245_write(%struct.oxygen* %29, i64 %30, i32 %36)
  %38 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %39 = load i64, i64* @CS4245_PGA_B_CTRL, align 8
  %40 = load %struct.dg*, %struct.dg** %3, align 8
  %41 = getelementptr inbounds %struct.dg, %struct.dg* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @CS4245_PGA_B_CTRL, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cs4245_write(%struct.oxygen* %38, i64 %39, i32 %45)
  %47 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %48 = load i64, i64* @CS4245_PGA_A_CTRL, align 8
  %49 = load %struct.dg*, %struct.dg** %3, align 8
  %50 = getelementptr inbounds %struct.dg, %struct.dg* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @CS4245_PGA_A_CTRL, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cs4245_write(%struct.oxygen* %47, i64 %48, i32 %54)
  %56 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %57 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %58 = load %struct.dg*, %struct.dg** %3, align 8
  %59 = getelementptr inbounds %struct.dg, %struct.dg* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cs4245_write(%struct.oxygen* %56, i64 %57, i32 %63)
  %65 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %66 = load i64, i64* @CS4245_DAC_A_CTRL, align 8
  %67 = load %struct.dg*, %struct.dg** %3, align 8
  %68 = getelementptr inbounds %struct.dg, %struct.dg* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @CS4245_DAC_A_CTRL, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cs4245_write(%struct.oxygen* %65, i64 %66, i32 %72)
  %74 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %75 = load i64, i64* @CS4245_DAC_B_CTRL, align 8
  %76 = load %struct.dg*, %struct.dg** %3, align 8
  %77 = getelementptr inbounds %struct.dg, %struct.dg* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @CS4245_DAC_B_CTRL, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cs4245_write(%struct.oxygen* %74, i64 %75, i32 %81)
  %83 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %84 = load i64, i64* @CS4245_DAC_CTRL_2, align 8
  %85 = load i32, i32* @CS4245_DAC_SOFT, align 4
  %86 = load i32, i32* @CS4245_DAC_ZERO, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @CS4245_INVERT_DAC, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @cs4245_write(%struct.oxygen* %83, i64 %84, i32 %89)
  %91 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %92 = load i64, i64* @CS4245_INT_MASK, align 8
  %93 = call i32 @cs4245_write(%struct.oxygen* %91, i64 %92, i32 0)
  %94 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %95 = load i64, i64* @CS4245_POWER_CTRL, align 8
  %96 = call i32 @cs4245_write(%struct.oxygen* %94, i64 %95, i32 0)
  ret void
}

declare dso_local i32 @cs4245_write(%struct.oxygen*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
