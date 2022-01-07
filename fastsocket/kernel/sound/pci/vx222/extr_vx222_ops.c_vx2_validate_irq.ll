; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_validate_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/vx222/extr_vx222_ops.c_vx2_validate_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_vx222 = type { i32 }

@INTCSR = common dso_local global i32 0, align 4
@VX_INTCSR_VALUE = common dso_local global i32 0, align 4
@VX_PCI_INTERRUPT_MASK = common dso_local global i32 0, align 4
@VX_CDSP_VALID_IRQ_MASK = common dso_local global i32 0, align 4
@CDSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32)* @vx2_validate_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx2_validate_irq(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_vx222*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = bitcast %struct.vx_core* %6 to %struct.snd_vx222*
  store %struct.snd_vx222* %7, %struct.snd_vx222** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %12 = load i32, i32* @INTCSR, align 4
  %13 = load i32, i32* @VX_INTCSR_VALUE, align 4
  %14 = load i32, i32* @VX_PCI_INTERRUPT_MASK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @vx_outl(%struct.snd_vx222* %11, i32 %12, i32 %15)
  %17 = load i32, i32* @VX_CDSP_VALID_IRQ_MASK, align 4
  %18 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %19 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %24 = load i32, i32* @INTCSR, align 4
  %25 = load i32, i32* @VX_INTCSR_VALUE, align 4
  %26 = load i32, i32* @VX_PCI_INTERRUPT_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @vx_outl(%struct.snd_vx222* %23, i32 %24, i32 %28)
  %30 = load i32, i32* @VX_CDSP_VALID_IRQ_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %33 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %22, %10
  %37 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %38 = load i32, i32* @CDSP, align 4
  %39 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %40 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vx_outl(%struct.snd_vx222* %37, i32 %38, i32 %41)
  ret void
}

declare dso_local i32 @vx_outl(%struct.snd_vx222*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
