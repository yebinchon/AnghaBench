; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_set_mixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_set_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32*, i32 (%struct.ac97_codec*, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ac97_codec*, i32, i32)* @ac97_set_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac97_set_mixer(%struct.ac97_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ac97_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 255
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ugt i32 %14, 100
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 100, i32* %8, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %18, 100
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 100, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ac97_codec*, %struct.ac97_codec** %4, align 8
  %27 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load %struct.ac97_codec*, %struct.ac97_codec** %4, align 8
  %33 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %32, i32 0, i32 1
  %34 = load i32 (%struct.ac97_codec*, i32, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32, i32)** %33, align 8
  %35 = load %struct.ac97_codec*, %struct.ac97_codec** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 %34(%struct.ac97_codec* %35, i32 %36, i32 %37, i32 %38)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
