; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_cmedia_digital_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_cmedia_digital_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32, i32)* }

@AUDIO_DIGITAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*, i32, i32, i32)* @cmedia_digital_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmedia_digital_control(%struct.ac97_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br label %56

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %22 [
    i32 0, label %20
    i32 48000, label %21
  ]

20:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %25

21:                                               ; preds = %18
  store i32 9, i32* %10, align 4
  br label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %56

25:                                               ; preds = %21, %20
  %26 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %27 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %26, i32 0, i32 1
  %28 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %27, align 8
  %29 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %30 = call i32 %28(%struct.ac97_codec* %29, i32 42, i32 1476)
  %31 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %32 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %31, i32 0, i32 1
  %33 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %32, align 8
  %34 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 %33(%struct.ac97_codec* %34, i32 108, i32 %35)
  %37 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %38 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %37, i32 0, i32 0
  %39 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %38, align 8
  %40 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %41 = call i32 %39(%struct.ac97_codec* %40, i32 100)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, -513
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, 512
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %25
  %50 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %51 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %50, i32 0, i32 1
  %52 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %51, align 8
  %53 = load %struct.ac97_codec*, %struct.ac97_codec** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 %52(%struct.ac97_codec* %53, i32 100, i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %22, %15
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
