; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_main.c_snd_sb16_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_main.c_snd_sb16_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SB_MODE_PLAYBACK_16 = common dso_local global i64 0, align 8
@SB_MODE_CAPTURE_16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb*, i32)* @snd_sb16_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb16_set_dma_mode(%struct.snd_sb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %7 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %12 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %49

23:                                               ; preds = %10
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %28 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  br label %48

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* @SB_MODE_PLAYBACK_16, align 8
  %34 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %35 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %47

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* @SB_MODE_CAPTURE_16, align 8
  %41 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %42 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %26
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %43, %22, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
