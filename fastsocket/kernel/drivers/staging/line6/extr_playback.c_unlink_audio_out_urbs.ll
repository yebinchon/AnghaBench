; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_playback.c_unlink_audio_out_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_playback.c_unlink_audio_out_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_line6_pcm = type { %struct.urb**, i32, i32 }
%struct.urb = type { i32 }

@LINE6_ISO_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_line6_pcm*)* @unlink_audio_out_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_audio_out_urbs(%struct.snd_line6_pcm* %0) #0 {
  %2 = alloca %struct.snd_line6_pcm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  store %struct.snd_line6_pcm* %0, %struct.snd_line6_pcm** %2, align 8
  %5 = load i32, i32* @LINE6_ISO_BUFFERS, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %3, align 4
  %8 = add i32 %7, -1
  store i32 %8, i32* %3, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %2, align 8
  %13 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %12, i32 0, i32 2
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %2, align 8
  %19 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %18, i32 0, i32 1
  %20 = call i32 @test_and_set_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %2, align 8
  %24 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %23, i32 0, i32 0
  %25 = load %struct.urb**, %struct.urb*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.urb*, %struct.urb** %25, i64 %27
  %29 = load %struct.urb*, %struct.urb** %28, align 8
  store %struct.urb* %29, %struct.urb** %4, align 8
  %30 = load %struct.urb*, %struct.urb** %4, align 8
  %31 = call i32 @usb_unlink_urb(%struct.urb* %30)
  br label %32

32:                                               ; preds = %22, %16
  br label %33

33:                                               ; preds = %32, %10
  br label %6

34:                                               ; preds = %6
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
