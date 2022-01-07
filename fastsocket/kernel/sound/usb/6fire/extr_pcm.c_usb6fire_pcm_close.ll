; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.pcm_runtime = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pcm_substream = type { i32, i32, i32* }

@rates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @usb6fire_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.pcm_runtime*, align 8
  %5 = alloca %struct.pcm_substream*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.pcm_runtime* %8, %struct.pcm_runtime** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.pcm_substream* @usb6fire_pcm_get_substream(%struct.snd_pcm_substream* %9)
  store %struct.pcm_substream* %10, %struct.pcm_substream** %5, align 8
  %11 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %21 = icmp ne %struct.pcm_substream* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %24 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %28 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %30 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.pcm_substream*, %struct.pcm_substream** %5, align 8
  %32 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %31, i32 0, i32 1
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %22
  %41 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %42 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %48 = call i32 @usb6fire_pcm_stream_stop(%struct.pcm_runtime* %47)
  %49 = load i32, i32* @rates, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %52 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %40, %22
  br label %54

54:                                               ; preds = %53, %16
  %55 = load %struct.pcm_runtime*, %struct.pcm_runtime** %4, align 8
  %56 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcm_substream* @usb6fire_pcm_get_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb6fire_pcm_stream_stop(%struct.pcm_runtime*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
