; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_usb_substream* }
%struct.snd_usb_substream = type { %struct.TYPE_5__*, i64, i64, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usb_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %7, align 8
  store %struct.snd_usb_substream* %8, %struct.snd_usb_substream** %3, align 8
  %9 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %23 = call i32 @stop_endpoints(%struct.snd_usb_substream* %22, i32 0, i32 1, i32 1)
  %24 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %25 = call i32 @deactivate_endpoints(%struct.snd_usb_substream* %24)
  %26 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = call i32 @snd_pcm_lib_free_vmalloc_buffer(%struct.snd_pcm_substream* %33)
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32, i32, i32) #1

declare dso_local i32 @deactivate_endpoints(%struct.snd_usb_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_vmalloc_buffer(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
