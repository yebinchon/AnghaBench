; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_pointer_playback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_pointer_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i32, i32 }
%struct.snd_ca0106 = type { i32 }

@PLAYBACK_LIST_PTR = common dso_local global i32 0, align 4
@PLAYBACK_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ca0106_pcm_pointer_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_pointer_playback(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ca0106_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.snd_ca0106* %14, %struct.snd_ca0106** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %5, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 2
  %20 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %19, align 8
  store %struct.snd_ca0106_pcm* %20, %struct.snd_ca0106_pcm** %6, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %22 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

29:                                               ; preds = %1
  %30 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %31 = load i32, i32* @PLAYBACK_LIST_PTR, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %35 = load i32, i32* @PLAYBACK_POINTER, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %39 = load i32, i32* @PLAYBACK_LIST_PTR, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %38, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %47 = load i32, i32* @PLAYBACK_POINTER, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %29
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = ashr i32 %54, 3
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %50
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %68, %50
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %28
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
