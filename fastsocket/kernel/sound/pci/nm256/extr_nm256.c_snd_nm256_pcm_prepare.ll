; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.nm256_stream* }
%struct.nm256_stream = type { i64, i64, i32, i8*, i8* }
%struct.nm256 = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_nm256_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.nm256*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.nm256_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.nm256* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.nm256* %8, %struct.nm256** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 3
  %14 = load %struct.nm256_stream*, %struct.nm256_stream** %13, align 8
  store %struct.nm256_stream* %14, %struct.nm256_stream** %6, align 8
  %15 = load %struct.nm256_stream*, %struct.nm256_stream** %6, align 8
  %16 = icmp ne %struct.nm256_stream* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @snd_BUG_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %64

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @frames_to_bytes(%struct.snd_pcm_runtime* %25, i32 %30)
  %32 = load %struct.nm256_stream*, %struct.nm256_stream** %6, align 8
  %33 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %36, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @frames_to_bytes(%struct.snd_pcm_runtime* %34, i32 %39)
  %41 = load %struct.nm256_stream*, %struct.nm256_stream** %6, align 8
  %42 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %44, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nm256_stream*, %struct.nm256_stream** %6, align 8
  %49 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.nm256_stream*, %struct.nm256_stream** %6, align 8
  %51 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.nm256*, %struct.nm256** %4, align 8
  %53 = getelementptr inbounds %struct.nm256, %struct.nm256* %52, i32 0, i32 0
  %54 = call i32 @spin_lock_irq(i32* %53)
  %55 = load %struct.nm256_stream*, %struct.nm256_stream** %6, align 8
  %56 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.nm256*, %struct.nm256** %4, align 8
  %58 = load %struct.nm256_stream*, %struct.nm256_stream** %6, align 8
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %60 = call i32 @snd_nm256_set_format(%struct.nm256* %57, %struct.nm256_stream* %58, %struct.snd_pcm_substream* %59)
  %61 = load %struct.nm256*, %struct.nm256** %4, align 8
  %62 = getelementptr inbounds %struct.nm256, %struct.nm256* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_irq(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %24, %21
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.nm256* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i8* @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_nm256_set_format(%struct.nm256*, %struct.nm256_stream*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
