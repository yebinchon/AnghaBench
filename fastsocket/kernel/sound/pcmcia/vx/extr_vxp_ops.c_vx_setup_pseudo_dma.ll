; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vx_setup_pseudo_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pcmcia/vx/extr_vxp_ops.c_vx_setup_pseudo_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_vxpocket = type { i32 }

@ICR = common dso_local global i32 0, align 4
@ICR_TREQ = common dso_local global i32 0, align 4
@ICR_RREQ = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@VXP_DLG_DMA16_SEL_MASK = common dso_local global i32 0, align 4
@VXP_DLG_DMAWRITE_SEL_MASK = common dso_local global i32 0, align 4
@VXP_DLG_DMAREAD_SEL_MASK = common dso_local global i32 0, align 4
@DIALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32)* @vx_setup_pseudo_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_setup_pseudo_dma(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_vxpocket*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = bitcast %struct.vx_core* %6 to %struct.snd_vxpocket*
  store %struct.snd_vxpocket* %7, %struct.snd_vxpocket** %5, align 8
  %8 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %9 = load i32, i32* @ICR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ICR_TREQ, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ICR_RREQ, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = call i32 @vx_outb(%struct.snd_vxpocket* %8, i32 %9, i32 %17)
  %19 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %20 = load i32, i32* @ISR, align 4
  %21 = call i32 @vx_inb(%struct.snd_vxpocket* %19, i32 %20)
  %22 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %23 = load i32, i32* @ISR, align 4
  %24 = call i32 @vx_outb(%struct.snd_vxpocket* %22, i32 %23, i32 0)
  %25 = load i32, i32* @VXP_DLG_DMA16_SEL_MASK, align 4
  %26 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %27 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* @VXP_DLG_DMAWRITE_SEL_MASK, align 4
  br label %36

34:                                               ; preds = %16
  %35 = load i32, i32* @VXP_DLG_DMAREAD_SEL_MASK, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %39 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %43 = load i32, i32* @DIALOG, align 4
  %44 = load %struct.snd_vxpocket*, %struct.snd_vxpocket** %5, align 8
  %45 = getelementptr inbounds %struct.snd_vxpocket, %struct.snd_vxpocket* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @vx_outb(%struct.snd_vxpocket* %42, i32 %43, i32 %46)
  ret void
}

declare dso_local i32 @vx_outb(%struct.snd_vxpocket*, i32, i32) #1

declare dso_local i32 @vx_inb(%struct.snd_vxpocket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
