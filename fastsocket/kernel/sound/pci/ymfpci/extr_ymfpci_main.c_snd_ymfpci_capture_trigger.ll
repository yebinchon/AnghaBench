; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i32, i32 }
%struct.snd_ymfpci = type { i32 }

@YDSXGR_MAPOFREC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ymfpci_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ymfpci*, align 8
  %6 = alloca %struct.snd_ymfpci_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_ymfpci* %10, %struct.snd_ymfpci** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %14, align 8
  store %struct.snd_ymfpci_pcm* %15, %struct.snd_ymfpci_pcm** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %51 [
    i32 130, label %20
    i32 132, label %20
    i32 131, label %20
    i32 129, label %35
    i32 133, label %35
    i32 128, label %35
  ]

20:                                               ; preds = %2, %2, %2
  %21 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %22 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %23 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %21, i32 %22)
  %24 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %23, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %30 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %29, i32 %30, i32 %31)
  %33 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %34 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %54

35:                                               ; preds = %2, %2, %2
  %36 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %37 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %38 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %36, i32 %37)
  %39 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %40 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %38, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %46 = load i32, i32* @YDSXGR_MAPOFREC, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %45, i32 %46, i32 %47)
  %49 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %6, align 8
  %50 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %35, %20
  %55 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %56 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
