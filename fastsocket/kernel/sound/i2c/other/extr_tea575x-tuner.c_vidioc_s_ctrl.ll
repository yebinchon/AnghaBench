; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_tea575x-tuner.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_tea575x-tuner.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.snd_tea575x = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.snd_tea575x*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.snd_tea575x*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.snd_tea575x* @video_drvdata(%struct.file* %9)
  store %struct.snd_tea575x* %10, %struct.snd_tea575x** %8, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %35 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %16 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.snd_tea575x*, i32)* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %23 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_tea575x*, i32)*, i32 (%struct.snd_tea575x*, i32)** %25, align 8
  %27 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %26(%struct.snd_tea575x* %27, i32 %30)
  %32 = load %struct.snd_tea575x*, %struct.snd_tea575x** %8, align 8
  %33 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %38

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %21
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.snd_tea575x* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
