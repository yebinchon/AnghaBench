; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_capture_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_capture_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_gus_card = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_gf1_pcm_capture_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_capture_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_gus_card*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_gus_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_gus_card* %7, %struct.snd_gus_card** %5, align 8
  %8 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %9 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %8)
  %10 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %11 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %13 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %12)
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %15 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %17 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %19 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 33, i32* %20, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %22 = call i32 @params_channels(%struct.snd_pcm_hw_params* %21)
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %26 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, 2
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %32 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %38 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, 4
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %44 = call i32 @params_format(%struct.snd_pcm_hw_params* %43)
  %45 = call i64 @snd_pcm_format_unsigned(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  %49 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, 128
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %55 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %56 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %55)
  %57 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %54, i32 %56)
  ret i32 %57
}

declare dso_local %struct.snd_gus_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
