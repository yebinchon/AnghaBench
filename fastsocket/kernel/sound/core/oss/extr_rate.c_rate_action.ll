; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_rate_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_rate.c_rate_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_plugin*, i32, i64)* @rate_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_action(%struct.snd_pcm_plugin* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_plugin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %9 = icmp ne %struct.snd_pcm_plugin* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @snd_BUG_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %22 [
    i32 129, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %17, %17
  %20 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %5, align 8
  %21 = call i32 @rate_init(%struct.snd_pcm_plugin* %20)
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %19
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @rate_init(%struct.snd_pcm_plugin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
