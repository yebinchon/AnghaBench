; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_memory.c_snd_pcm_lib_preallocate_pages1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_memory.c_snd_pcm_lib_preallocate_pages1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@preallocate_dma = common dso_local global i64 0, align 8
@maximum_substreams = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i64, i64)* @snd_pcm_lib_preallocate_pages1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_lib_preallocate_pages1(%struct.snd_pcm_substream* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i64, i64* @preallocate_dma, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @maximum_substreams, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @preallocate_pcm_pages(%struct.snd_pcm_substream* %19, i64 %20)
  br label %22

22:                                               ; preds = %18, %12, %9, %3
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %22
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %40 = call i32 @preallocate_info_init(%struct.snd_pcm_substream* %39)
  ret i32 0
}

declare dso_local i32 @preallocate_pcm_pages(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @preallocate_info_init(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
