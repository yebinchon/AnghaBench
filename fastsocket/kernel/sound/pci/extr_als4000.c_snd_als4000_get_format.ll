; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als4000.c_snd_als4000_get_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als4000.c_snd_als4000_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { i32, i32 }

@ALS4000_FORMAT_SIGNED = common dso_local global i32 0, align 4
@ALS4000_FORMAT_16BIT = common dso_local global i32 0, align 4
@ALS4000_FORMAT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_runtime*)* @snd_als4000_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als4000_get_format(%struct.snd_pcm_runtime* %0) #0 {
  %2 = alloca %struct.snd_pcm_runtime*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @snd_pcm_format_signed(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @ALS4000_FORMAT_SIGNED, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %2, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_pcm_format_physical_width(i32 %16)
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @ALS4000_FORMAT_16BIT, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %2, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @ALS4000_FORMAT_STEREO, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @snd_pcm_format_signed(i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
