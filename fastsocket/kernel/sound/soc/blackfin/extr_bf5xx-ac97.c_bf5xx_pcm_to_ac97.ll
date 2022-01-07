; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97.c_bf5xx_pcm_to_ac97.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97.c_bf5xx_pcm_to_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_frame = type { i32, i32, i32, i32, i32, i32, i32 }

@TAG_VALID = common dso_local global i32 0, align 4
@SP_FL = common dso_local global i32 0, align 4
@TAG_PCM_RIGHT = common dso_local global i32 0, align 4
@SP_FR = common dso_local global i32 0, align 4
@TAG_PCM_LEFT = common dso_local global i32 0, align 4
@SP_FC = common dso_local global i32 0, align 4
@SP_LFE = common dso_local global i32 0, align 4
@SP_SL = common dso_local global i32 0, align 4
@SP_SR = common dso_local global i32 0, align 4
@TAG_PCM_CENTER = common dso_local global i32 0, align 4
@TAG_PCM_LFE = common dso_local global i32 0, align 4
@TAG_PCM_SL = common dso_local global i32 0, align 4
@TAG_PCM_SR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bf5xx_pcm_to_ac97(%struct.ac97_frame* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ac97_frame*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ac97_frame* %0, %struct.ac97_frame** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %48, %4
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %7, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load i32, i32* @TAG_VALID, align 4
  %15 = load %struct.ac97_frame*, %struct.ac97_frame** %5, align 8
  %16 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SP_FL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %22, align 4
  %25 = load %struct.ac97_frame*, %struct.ac97_frame** %5, align 8
  %26 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @TAG_PCM_RIGHT, align 4
  %28 = load %struct.ac97_frame*, %struct.ac97_frame** %5, align 8
  %29 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %21, %13
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SP_FR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load %struct.ac97_frame*, %struct.ac97_frame** %5, align 8
  %42 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @TAG_PCM_LEFT, align 4
  %44 = load %struct.ac97_frame*, %struct.ac97_frame** %5, align 8
  %45 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.ac97_frame*, %struct.ac97_frame** %5, align 8
  %50 = getelementptr inbounds %struct.ac97_frame, %struct.ac97_frame* %49, i32 1
  store %struct.ac97_frame* %50, %struct.ac97_frame** %5, align 8
  br label %9

51:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
