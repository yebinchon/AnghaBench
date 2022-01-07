; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_pcm.c_usb6fire_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.pcm_substream = type { i32, i32 }
%struct.pcm_runtime = type { i64 }

@EPIPE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @usb6fire_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcm_substream*, align 8
  %7 = alloca %struct.pcm_runtime*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.pcm_substream* @usb6fire_pcm_get_substream(%struct.snd_pcm_substream* %9)
  store %struct.pcm_substream* %10, %struct.pcm_substream** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.pcm_runtime* %12, %struct.pcm_runtime** %7, align 8
  %13 = load %struct.pcm_runtime*, %struct.pcm_runtime** %7, align 8
  %14 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EPIPE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %22 = icmp ne %struct.pcm_substream* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %50 [
    i32 129, label %28
    i32 130, label %28
    i32 128, label %39
    i32 131, label %39
  ]

28:                                               ; preds = %26, %26
  %29 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %30 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %29, i32 0, i32 1
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %34 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %36 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %35, i32 0, i32 1
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %3, align 4
  br label %53

39:                                               ; preds = %26, %26
  %40 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %41 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %40, i32 0, i32 1
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %45 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.pcm_substream*, %struct.pcm_substream** %6, align 8
  %47 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %46, i32 0, i32 1
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 0, i32* %3, align 4
  br label %53

50:                                               ; preds = %26
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %39, %28, %23, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pcm_substream* @usb6fire_pcm_get_substream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
