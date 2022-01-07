; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nm256_stream* }
%struct.nm256_stream = type { i32 }
%struct.nm256 = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_nm256_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nm256*, align 8
  %7 = alloca %struct.nm256_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.nm256* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.nm256* %10, %struct.nm256** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nm256_stream*, %struct.nm256_stream** %14, align 8
  store %struct.nm256_stream* %15, %struct.nm256_stream** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.nm256_stream*, %struct.nm256_stream** %7, align 8
  %17 = icmp ne %struct.nm256_stream* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.nm256*, %struct.nm256** %6, align 8
  %27 = getelementptr inbounds %struct.nm256, %struct.nm256* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %54 [
    i32 130, label %30
    i32 131, label %30
    i32 129, label %43
    i32 128, label %43
  ]

30:                                               ; preds = %25, %25
  %31 = load %struct.nm256_stream*, %struct.nm256_stream** %7, align 8
  %32 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.nm256*, %struct.nm256** %6, align 8
  %37 = load %struct.nm256_stream*, %struct.nm256_stream** %7, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %39 = call i32 @snd_nm256_capture_start(%struct.nm256* %36, %struct.nm256_stream* %37, %struct.snd_pcm_substream* %38)
  %40 = load %struct.nm256_stream*, %struct.nm256_stream** %7, align 8
  %41 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %30
  br label %57

43:                                               ; preds = %25, %25
  %44 = load %struct.nm256_stream*, %struct.nm256_stream** %7, align 8
  %45 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.nm256*, %struct.nm256** %6, align 8
  %50 = call i32 @snd_nm256_capture_stop(%struct.nm256* %49)
  %51 = load %struct.nm256_stream*, %struct.nm256_stream** %7, align 8
  %52 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %57

54:                                               ; preds = %25
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %53, %42
  %58 = load %struct.nm256*, %struct.nm256** %6, align 8
  %59 = getelementptr inbounds %struct.nm256, %struct.nm256* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.nm256* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_nm256_capture_start(%struct.nm256*, %struct.nm256_stream*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_nm256_capture_stop(%struct.nm256*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
