; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nm256_stream* }
%struct.nm256_stream = type { i64, i64 }
%struct.nm256 = type { i32 }

@NM_RBUFFER_CURRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_nm256_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.nm256*, align 8
  %5 = alloca %struct.nm256_stream*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.nm256* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.nm256* %8, %struct.nm256** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.nm256_stream*, %struct.nm256_stream** %12, align 8
  store %struct.nm256_stream* %13, %struct.nm256_stream** %5, align 8
  %14 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %15 = icmp ne %struct.nm256_stream* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.nm256*, %struct.nm256** %4, align 8
  %23 = load i32, i32* @NM_RBUFFER_CURRP, align 4
  %24 = call i64 @snd_nm256_readl(%struct.nm256* %22, i32 %23)
  %25 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %26 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %30 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = urem i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @bytes_to_frames(%struct.TYPE_2__* %36, i64 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %21, %20
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.nm256* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @snd_nm256_readl(%struct.nm256*, i32) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
