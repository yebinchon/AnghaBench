; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via82xx_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx_modem.c_snd_via82xx_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.viadev* }
%struct.viadev = type { i32 }
%struct.via82xx_modem = type { i32 }

@VIA_REG_TYPE_AUTOSTART = common dso_local global i32 0, align 4
@VIA_REG_TYPE_INT_EOL = common dso_local global i32 0, align 4
@VIA_REG_TYPE_INT_FLAG = common dso_local global i32 0, align 4
@OFFSET_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_via82xx_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.via82xx_modem*, align 8
  %4 = alloca %struct.viadev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.via82xx_modem* %6, %struct.via82xx_modem** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.viadev*, %struct.viadev** %10, align 8
  store %struct.viadev* %11, %struct.viadev** %4, align 8
  %12 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %13 = load %struct.viadev*, %struct.viadev** %4, align 8
  %14 = call i32 @snd_via82xx_channel_reset(%struct.via82xx_modem* %12, %struct.viadev* %13)
  %15 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %16 = load %struct.viadev*, %struct.viadev** %4, align 8
  %17 = call i32 @snd_via82xx_set_table_ptr(%struct.via82xx_modem* %15, %struct.viadev* %16)
  %18 = load i32, i32* @VIA_REG_TYPE_AUTOSTART, align 4
  %19 = load i32, i32* @VIA_REG_TYPE_INT_EOL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @VIA_REG_TYPE_INT_FLAG, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.viadev*, %struct.viadev** %4, align 8
  %24 = load i32, i32* @OFFSET_TYPE, align 4
  %25 = call i32 @VIADEV_REG(%struct.viadev* %23, i32 %24)
  %26 = call i32 @outb(i32 %22, i32 %25)
  ret i32 0
}

declare dso_local %struct.via82xx_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_via82xx_channel_reset(%struct.via82xx_modem*, %struct.viadev*) #1

declare dso_local i32 @snd_via82xx_set_table_ptr(%struct.via82xx_modem*, %struct.viadev*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
