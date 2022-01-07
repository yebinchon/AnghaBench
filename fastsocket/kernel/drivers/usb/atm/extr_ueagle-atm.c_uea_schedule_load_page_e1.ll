; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_schedule_load_page_e1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_schedule_load_page_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i32, i32, i32, i32 }
%struct.intr_pkt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uea_softc*, %struct.intr_pkt*)* @uea_schedule_load_page_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uea_schedule_load_page_e1(%struct.uea_softc* %0, %struct.intr_pkt* %1) #0 {
  %3 = alloca %struct.uea_softc*, align 8
  %4 = alloca %struct.intr_pkt*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %3, align 8
  store %struct.intr_pkt* %1, %struct.intr_pkt** %4, align 8
  %5 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %6 = getelementptr inbounds %struct.intr_pkt, %struct.intr_pkt* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %11 = getelementptr inbounds %struct.intr_pkt, %struct.intr_pkt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 4
  %14 = load %struct.intr_pkt*, %struct.intr_pkt** %4, align 8
  %15 = getelementptr inbounds %struct.intr_pkt, %struct.intr_pkt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 4
  %18 = or i32 %13, %17
  %19 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %20 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.uea_softc*, %struct.uea_softc** %3, align 8
  %25 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %24, i32 0, i32 1
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
