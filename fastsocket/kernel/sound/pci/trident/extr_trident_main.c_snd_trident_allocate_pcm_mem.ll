; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_allocate_pcm_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_allocate_pcm_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_trident = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_trident_allocate_pcm_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_allocate_pcm_mem(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_trident*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.snd_trident_voice*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_trident* %11, %struct.snd_trident** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %7, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %16, align 8
  store %struct.snd_trident_voice* %17, %struct.snd_trident_voice** %8, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %20 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %19)
  %21 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %18, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %27 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %8, align 8
  %36 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %41 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %8, align 8
  %42 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @snd_trident_free_pages(%struct.snd_trident* %40, i32* %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.snd_trident*, %struct.snd_trident** %6, align 8
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %48 = call i32* @snd_trident_alloc_pages(%struct.snd_trident* %46, %struct.snd_pcm_substream* %47)
  %49 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %8, align 8
  %50 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %8, align 8
  %52 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %31
  br label %60

60:                                               ; preds = %59, %25
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %55, %23
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_trident_free_pages(%struct.snd_trident*, i32*) #1

declare dso_local i32* @snd_trident_alloc_pages(%struct.snd_trident*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
