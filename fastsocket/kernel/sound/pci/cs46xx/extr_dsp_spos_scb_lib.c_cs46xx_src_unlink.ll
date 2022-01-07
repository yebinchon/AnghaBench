; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_src_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_src_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 }
%struct.dsp_scb_descriptor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_src_unlink(%struct.snd_cs46xx* %0, %struct.dsp_scb_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs46xx*, align 8
  %5 = alloca %struct.dsp_scb_descriptor*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %4, align 8
  store %struct.dsp_scb_descriptor* %1, %struct.dsp_scb_descriptor** %5, align 8
  %6 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  %7 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @snd_BUG_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %19 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  %20 = call i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx* %18, %struct.dsp_scb_descriptor* %19, i32 0, i32 0)
  %21 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %22 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %5, align 8
  %23 = call i32 @_dsp_unlink_scb(%struct.snd_cs46xx* %21, %struct.dsp_scb_descriptor* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*, i32, i32) #1

declare dso_local i32 @_dsp_unlink_scb(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
