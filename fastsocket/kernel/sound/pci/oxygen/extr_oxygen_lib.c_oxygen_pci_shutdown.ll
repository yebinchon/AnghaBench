; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_pci_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_pci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.snd_card = type { %struct.oxygen* }
%struct.oxygen = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.oxygen*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oxygen_pci_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.oxygen*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.snd_card* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.snd_card* %6, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %7, i32 0, i32 0
  %9 = load %struct.oxygen*, %struct.oxygen** %8, align 8
  store %struct.oxygen* %9, %struct.oxygen** %4, align 8
  %10 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %11 = call i32 @oxygen_shutdown(%struct.oxygen* %10)
  %12 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %13 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.oxygen*)*, i32 (%struct.oxygen*)** %14, align 8
  %16 = load %struct.oxygen*, %struct.oxygen** %4, align 8
  %17 = call i32 %15(%struct.oxygen* %16)
  ret void
}

declare dso_local %struct.snd_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @oxygen_shutdown(%struct.oxygen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
