; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.snd_ymfpci_pcm*, i32 }
%struct.snd_ymfpci_pcm = type { i64, %struct.snd_pcm_substream*, i64, %struct.snd_ymfpci* }
%struct.snd_ymfpci = type { %struct.snd_pcm_substream** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAPTURE_REC = common dso_local global i64 0, align 8
@snd_ymfpci_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@snd_ymfpci_pcm_free_substream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i64)* @snd_ymfpci_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ymfpci_capture_open(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_ymfpci*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_ymfpci_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_ymfpci* %10, %struct.snd_ymfpci** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_ymfpci_pcm* @kzalloc(i32 32, i32 %14)
  store %struct.snd_ymfpci_pcm* %15, %struct.snd_ymfpci_pcm** %8, align 8
  %16 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %17 = icmp eq %struct.snd_ymfpci_pcm* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %23 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %24 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %23, i32 0, i32 3
  store %struct.snd_ymfpci* %22, %struct.snd_ymfpci** %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @CAPTURE_REC, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %29 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %32 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %31, i32 0, i32 1
  store %struct.snd_pcm_substream* %30, %struct.snd_pcm_substream** %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %35 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %37 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %38 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %37, i32 0, i32 0
  %39 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %39, i64 %40
  store %struct.snd_pcm_substream* %36, %struct.snd_pcm_substream** %41, align 8
  %42 = load i32, i32* @snd_ymfpci_capture, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %46 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %47 = load i32, i32* @UINT_MAX, align 4
  %48 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %45, i32 %46, i32 5333, i32 %47)
  %49 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %8, align 8
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 1
  store %struct.snd_ymfpci_pcm* %49, %struct.snd_ymfpci_pcm** %51, align 8
  %52 = load i32, i32* @snd_ymfpci_pcm_free_substream, align 4
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %6, align 8
  %56 = call i32 @snd_ymfpci_hw_start(%struct.snd_ymfpci* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %21, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.snd_ymfpci* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_ymfpci_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_ymfpci_hw_start(%struct.snd_ymfpci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
