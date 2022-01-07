; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_ct_unmap_audio_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_ct_unmap_audio_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { %struct.ct_vm* }
%struct.ct_vm = type { i32 (%struct.ct_vm*, i32*)* }
%struct.ct_atc_pcm = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_atc*, %struct.ct_atc_pcm*)* @ct_unmap_audio_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_unmap_audio_buffer(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca %struct.ct_atc_pcm*, align 8
  %5 = alloca %struct.ct_vm*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %4, align 8
  %6 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %7 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %13 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %12, i32 0, i32 0
  %14 = load %struct.ct_vm*, %struct.ct_vm** %13, align 8
  store %struct.ct_vm* %14, %struct.ct_vm** %5, align 8
  %15 = load %struct.ct_vm*, %struct.ct_vm** %5, align 8
  %16 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %15, i32 0, i32 0
  %17 = load i32 (%struct.ct_vm*, i32*)*, i32 (%struct.ct_vm*, i32*)** %16, align 8
  %18 = load %struct.ct_vm*, %struct.ct_vm** %5, align 8
  %19 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %20 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 %17(%struct.ct_vm* %18, i32* %21)
  %23 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %4, align 8
  %24 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
