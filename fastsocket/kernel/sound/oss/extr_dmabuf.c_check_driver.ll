; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_check_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_check_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_driver = type { i32*, i32*, i32* }

@default_set_speed = common dso_local global i32* null, align 8
@default_set_bits = common dso_local global i32* null, align 8
@default_set_channels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_driver*)* @check_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_driver(%struct.audio_driver* %0) #0 {
  %2 = alloca %struct.audio_driver*, align 8
  store %struct.audio_driver* %0, %struct.audio_driver** %2, align 8
  %3 = load %struct.audio_driver*, %struct.audio_driver** %2, align 8
  %4 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32*, i32** @default_set_speed, align 8
  %9 = load %struct.audio_driver*, %struct.audio_driver** %2, align 8
  %10 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %9, i32 0, i32 2
  store i32* %8, i32** %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.audio_driver*, %struct.audio_driver** %2, align 8
  %13 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32*, i32** @default_set_bits, align 8
  %18 = load %struct.audio_driver*, %struct.audio_driver** %2, align 8
  %19 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.audio_driver*, %struct.audio_driver** %2, align 8
  %22 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** @default_set_channels, align 8
  %27 = load %struct.audio_driver*, %struct.audio_driver** %2, align 8
  %28 = getelementptr inbounds %struct.audio_driver, %struct.audio_driver* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
