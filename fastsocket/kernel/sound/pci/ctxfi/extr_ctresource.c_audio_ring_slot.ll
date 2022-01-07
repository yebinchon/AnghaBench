; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctresource.c_audio_ring_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctresource.c_audio_ring_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc = type { i32, i64 }

@offset_in_audio_slot_block = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsc*)* @audio_ring_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_ring_slot(%struct.rsc* %0) #0 {
  %2 = alloca %struct.rsc*, align 8
  store %struct.rsc* %0, %struct.rsc** %2, align 8
  %3 = load %struct.rsc*, %struct.rsc** %2, align 8
  %4 = getelementptr inbounds %struct.rsc, %struct.rsc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = shl i32 %5, 4
  %7 = load i32*, i32** @offset_in_audio_slot_block, align 8
  %8 = load %struct.rsc*, %struct.rsc** %2, align 8
  %9 = getelementptr inbounds %struct.rsc, %struct.rsc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %6, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
