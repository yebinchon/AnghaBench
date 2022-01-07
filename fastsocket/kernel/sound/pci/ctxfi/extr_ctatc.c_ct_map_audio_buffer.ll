; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_ct_map_audio_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_ct_map_audio_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { %struct.ct_vm* }
%struct.ct_vm = type { i32 (%struct.ct_vm*, %struct.TYPE_2__*, i32)* }
%struct.TYPE_2__ = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.ct_atc_pcm = type { i32, %struct.TYPE_2__* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @ct_map_audio_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_map_audio_buffer(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.ct_vm*, align 8
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %8 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %9 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %15 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %17, align 8
  store %struct.snd_pcm_runtime* %18, %struct.snd_pcm_runtime** %6, align 8
  %19 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %20 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %19, i32 0, i32 0
  %21 = load %struct.ct_vm*, %struct.ct_vm** %20, align 8
  store %struct.ct_vm* %21, %struct.ct_vm** %7, align 8
  %22 = load %struct.ct_vm*, %struct.ct_vm** %7, align 8
  %23 = getelementptr inbounds %struct.ct_vm, %struct.ct_vm* %22, i32 0, i32 0
  %24 = load i32 (%struct.ct_vm*, %struct.TYPE_2__*, i32)*, i32 (%struct.ct_vm*, %struct.TYPE_2__*, i32)** %23, align 8
  %25 = load %struct.ct_vm*, %struct.ct_vm** %7, align 8
  %26 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %27 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %24(%struct.ct_vm* %25, %struct.TYPE_2__* %28, i32 %31)
  %33 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %13
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
