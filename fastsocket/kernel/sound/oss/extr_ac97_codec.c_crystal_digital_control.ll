; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_crystal_digital_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_crystal_digital_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32 (%struct.ac97_codec*, i32, i32)* }

@AUDIO_DIGITAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*, i32, i32, i32)* @crystal_digital_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crystal_digital_control(%struct.ac97_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ac97_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @AUDIO_DIGITAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %34

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %24 [
    i32 0, label %20
    i32 48000, label %21
    i32 44100, label %22
    i32 32768, label %23
  ]

20:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %27

21:                                               ; preds = %18
  store i32 32772, i32* %10, align 4
  br label %27

22:                                               ; preds = %18
  store i32 33028, i32* %10, align 4
  br label %27

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %18, %23
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %34

27:                                               ; preds = %22, %21, %20
  %28 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %29 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %28, i32 0, i32 0
  %30 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %29, align 8
  %31 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 %30(%struct.ac97_codec* %31, i32 104, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %24, %15
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
