; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_pcm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_pcm.c_snd_usb_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_usb_stream = type { %struct.TYPE_3__*, %struct.snd_usb_substream* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_usb_substream = type { i32, %struct.TYPE_4__*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_usb_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_pcm_close(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_stream*, align 8
  %6 = alloca %struct.snd_usb_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_usb_stream* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_usb_stream* %8, %struct.snd_usb_stream** %5, align 8
  %9 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %10 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %9, i32 0, i32 1
  %11 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %11, i64 %13
  store %struct.snd_usb_substream* %14, %struct.snd_usb_substream** %6, align 8
  %15 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %16 = call i32 @stop_endpoints(%struct.snd_usb_substream* %15, i32 0, i32 0, i32 0)
  %17 = load %struct.snd_usb_stream*, %struct.snd_usb_stream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_usb_stream, %struct.snd_usb_stream* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %2
  %24 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %25 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %30 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %33 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @usb_set_interface(i32 %31, i32 %34, i32 0)
  %36 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %37 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  br label %38

38:                                               ; preds = %28, %23, %2
  %39 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %40 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %6, align 8
  %42 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snd_usb_autosuspend(i32 %45)
  ret i32 0
}

declare dso_local %struct.snd_usb_stream* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @stop_endpoints(%struct.snd_usb_substream*, i32, i32, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @snd_usb_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
