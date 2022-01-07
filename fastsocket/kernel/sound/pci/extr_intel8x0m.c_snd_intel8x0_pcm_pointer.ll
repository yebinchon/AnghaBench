; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_intel8x0m.c_snd_intel8x0_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_intel8x0m.c_snd_intel8x0_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.intel8x0m = type { i64 }
%struct.ichdev = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_intel8x0_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.intel8x0m*, align 8
  %5 = alloca %struct.ichdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.intel8x0m* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.intel8x0m* %9, %struct.intel8x0m** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream* %10)
  store %struct.ichdev* %11, %struct.ichdev** %5, align 8
  %12 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %13 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %14 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %17 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i64 @igetword(%struct.intel8x0m* %12, i64 %19)
  %21 = load %struct.intel8x0m*, %struct.intel8x0m** %4, align 8
  %22 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = shl i64 %20, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %29 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %7, align 8
  br label %34

33:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %36 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.ichdev*, %struct.ichdev** %5, align 8
  %42 = getelementptr inbounds %struct.ichdev, %struct.ichdev* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %52

46:                                               ; preds = %34
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @bytes_to_frames(i32 %49, i64 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.intel8x0m* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ichdev* @get_ichdev(%struct.snd_pcm_substream*) #1

declare dso_local i64 @igetword(%struct.intel8x0m*, i64) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
