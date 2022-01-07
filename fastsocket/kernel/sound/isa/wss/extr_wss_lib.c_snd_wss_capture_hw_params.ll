; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_capture_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wss/extr_wss_lib.c_snd_wss_capture_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_wss = type { i32 (%struct.snd_wss*, %struct.snd_pcm_hw_params.0*, i8)* }
%struct.snd_pcm_hw_params.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_wss_capture_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wss_capture_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_wss*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.snd_wss* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_wss* %10, %struct.snd_wss** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %13 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %12)
  %14 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %11, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_format(%struct.snd_pcm_hw_params* %20)
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %23 = call i32 @params_channels(%struct.snd_pcm_hw_params* %22)
  %24 = call zeroext i8 @snd_wss_get_format(%struct.snd_wss* %19, i32 %21, i32 %23)
  %25 = zext i8 %24 to i32
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %27 = call i32 @params_rate(%struct.snd_pcm_hw_params* %26)
  %28 = call zeroext i8 @snd_wss_get_rate(i32 %27)
  %29 = zext i8 %28 to i32
  %30 = or i32 %25, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %7, align 1
  %32 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %33 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_wss*, %struct.snd_pcm_hw_params.0*, i8)*, i32 (%struct.snd_wss*, %struct.snd_pcm_hw_params.0*, i8)** %33, align 8
  %35 = load %struct.snd_wss*, %struct.snd_wss** %6, align 8
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %37 = bitcast %struct.snd_pcm_hw_params* %36 to %struct.snd_pcm_hw_params.0*
  %38 = load i8, i8* %7, align 1
  %39 = call i32 %34(%struct.snd_wss* %35, %struct.snd_pcm_hw_params.0* %37, i8 zeroext %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %18, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.snd_wss* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local zeroext i8 @snd_wss_get_format(%struct.snd_wss*, i32, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local zeroext i8 @snd_wss_get_rate(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
