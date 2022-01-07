; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vidc.c_vidc_mixer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vidc.c_vidc_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vidc_level_l = common dso_local global i32* null, align 8
@vidc_level_r = common dso_local global i32* null, align 8
@vidc_audio_volume_l = common dso_local global i8* null, align 8
@vidc_audio_volume_r = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @vidc_mixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidc_mixer_set(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 127
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 32512
  %13 = lshr i32 %12, 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ugt i32 %14, 100
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 100, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ugt i32 %18, 100
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 100, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32*, i32** @vidc_level_l, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 128
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** @vidc_level_r, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 128
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %54 [
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %21, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** @vidc_level_l, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** @vidc_level_r, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul i32 %40, %41
  %43 = mul i32 %42, 65536
  %44 = udiv i32 %43, 10000
  %45 = zext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** @vidc_audio_volume_l, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul i32 %47, %48
  %50 = mul i32 %49, 65536
  %51 = udiv i32 %50, 10000
  %52 = zext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** @vidc_audio_volume_r, align 8
  br label %54

54:                                               ; preds = %21, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
