; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_mic_in_mode_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_cmipci.c_snd_cmipci_mic_in_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cmipci = type { i32 }

@CM_REG_MISC = common dso_local global i32 0, align 4
@CM_SPDIF_INVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cmipci_mic_in_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_mic_in_mode_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cmipci*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = call %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol* %6)
  store %struct.cmipci* %7, %struct.cmipci** %5, align 8
  %8 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %9 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %12 = load i32, i32* @CM_REG_MISC, align 4
  %13 = call i32 @snd_cmipci_read_b(%struct.cmipci* %11, i32 %12)
  %14 = load i32, i32* @CM_SPDIF_INVERSE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %18, i32* %24, align 4
  %25 = load %struct.cmipci*, %struct.cmipci** %5, align 8
  %26 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_irq(i32* %26)
  ret i32 0
}

declare dso_local %struct.cmipci* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_cmipci_read_b(%struct.cmipci*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
