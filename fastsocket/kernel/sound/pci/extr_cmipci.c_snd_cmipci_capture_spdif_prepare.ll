; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_capture_spdif_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_capture_spdif_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cmipci = type { i32*, i32, i64 }

@CM_REG_FUNCTRL1 = common dso_local global i32 0, align 4
@CM_CAPTURE_SPDF = common dso_local global i32 0, align 4
@CM_REG_CHFORMAT = common dso_local global i32 0, align 4
@CM_DBLSPDS = common dso_local global i32 0, align 4
@CM_REG_MISC_CTRL = common dso_local global i32 0, align 4
@CM_SPD32SEL = common dso_local global i32 0, align 4
@CM_CH_CAPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cmipci_capture_spdif_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_capture_spdif_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.cmipci*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.cmipci* %5, %struct.cmipci** %3, align 8
  %6 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %7 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %10 = load i32, i32* @CM_REG_FUNCTRL1, align 4
  %11 = load i32, i32* @CM_CAPTURE_SPDF, align 4
  %12 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %9, i32 %10, i32 %11)
  %13 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %14 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 48000
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %26 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %27 = load i32, i32* @CM_DBLSPDS, align 4
  %28 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %17
  %30 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %31 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %32 = load i32, i32* @CM_DBLSPDS, align 4
  %33 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_pcm_format_width(i32 %40)
  %42 = icmp sgt i32 %41, 16
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %45 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %46 = load i32, i32* @CM_SPD32SEL, align 4
  %47 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %44, i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %50 = load i32, i32* @CM_REG_MISC_CTRL, align 4
  %51 = load i32, i32* @CM_SPD32SEL, align 4
  %52 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %55 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %58 = load %struct.cmipci*, %struct.cmipci** %3, align 8
  %59 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @CM_CH_CAPT, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %64 = call i32 @snd_cmipci_pcm_prepare(%struct.cmipci* %57, i32* %62, %struct.snd_pcm_substream* %63)
  ret i32 %64
}

declare dso_local %struct.cmipci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_pcm_prepare(%struct.cmipci*, i32*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
