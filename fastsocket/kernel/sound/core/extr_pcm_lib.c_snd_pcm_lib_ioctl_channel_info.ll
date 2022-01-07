; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_lib_ioctl_channel_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_lib_ioctl_channel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i64, i32 }
%struct.snd_pcm_channel_info = type { i32, i32, i32, i32 }

@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i8*)* @snd_pcm_lib_ioctl_channel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_lib_ioctl_channel_info(%struct.snd_pcm_substream* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_pcm_channel_info*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.snd_pcm_channel_info*
  store %struct.snd_pcm_channel_info* %11, %struct.snd_pcm_channel_info** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %7, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %79

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snd_pcm_format_physical_width(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %79

33:                                               ; preds = %24
  %34 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %76 [
    i32 131, label %39
    i32 129, label %39
    i32 130, label %54
    i32 128, label %54
  ]

39:                                               ; preds = %33, %33
  %40 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %6, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %6, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %6, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  br label %78

54:                                               ; preds = %33, %33
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %57, %61
  store i64 %62, i64* %9, align 8
  %63 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %6, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %9, align 8
  %68 = mul i64 %66, %67
  %69 = mul i64 %68, 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %6, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.snd_pcm_channel_info*, %struct.snd_pcm_channel_info** %6, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_channel_info, %struct.snd_pcm_channel_info* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %78

76:                                               ; preds = %33
  %77 = call i32 (...) @snd_BUG()
  br label %78

78:                                               ; preds = %76, %54, %39
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %31, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
