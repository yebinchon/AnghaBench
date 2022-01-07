; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_update_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_update_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_modem = type { i32 }
%struct.atiixp_dma = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp_modem*, %struct.atiixp_dma*)* @snd_atiixp_update_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_atiixp_update_dma(%struct.atiixp_modem* %0, %struct.atiixp_dma* %1) #0 {
  %3 = alloca %struct.atiixp_modem*, align 8
  %4 = alloca %struct.atiixp_dma*, align 8
  store %struct.atiixp_modem* %0, %struct.atiixp_modem** %3, align 8
  store %struct.atiixp_dma* %1, %struct.atiixp_dma** %4, align 8
  %5 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %6 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %11 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  br label %20

15:                                               ; preds = %9
  %16 = load %struct.atiixp_dma*, %struct.atiixp_dma** %4, align 8
  %17 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_pcm_period_elapsed(i32 %18)
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
