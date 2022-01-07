; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pcm.c_snd_line6_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pcm.c_snd_line6_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_line6_pcm = type { i64, i64, i64, i64, i64, i32 }

@BIT_PREPARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_line6_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_line6_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.snd_line6_pcm* %5, %struct.snd_line6_pcm** %3, align 8
  %6 = load i32, i32* @BIT_PREPARED, align 4
  %7 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %8 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %7, i32 0, i32 5
  %9 = call i32 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %13 = call i32 @unlink_wait_clear_audio_out_urbs(%struct.snd_line6_pcm* %12)
  %14 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %15 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %17 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %19 = call i32 @unlink_wait_clear_audio_in_urbs(%struct.snd_line6_pcm* %18)
  %20 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %21 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %23 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %3, align 8
  %25 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @unlink_wait_clear_audio_out_urbs(%struct.snd_line6_pcm*) #1

declare dso_local i32 @unlink_wait_clear_audio_in_urbs(%struct.snd_line6_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
