; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_select_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_select_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC_MUX_NONE = common dso_local global i32 0, align 4
@SOUND_MASK_IMIX = common dso_local global i32 0, align 4
@ADC_MUX_MIXER = common dso_local global i32 0, align 4
@SOUND_MASK_LINE2 = common dso_local global i32 0, align 4
@ADC_MUX_AUX2 = common dso_local global i32 0, align 4
@SOUND_MASK_LINE1 = common dso_local global i32 0, align 4
@ADC_MUX_AUX1 = common dso_local global i32 0, align 4
@SOUND_MASK_LINE = common dso_local global i32 0, align 4
@ADC_MUX_LINE = common dso_local global i32 0, align 4
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@ADC_MUX_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8*)* @waveartist_select_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waveartist_select_input(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @ADC_MUX_NONE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SOUND_MASK_IMIX, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @SOUND_MASK_IMIX, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @ADC_MUX_MIXER, align 4
  store i32 %17, i32* %9, align 4
  br label %54

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SOUND_MASK_LINE2, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @SOUND_MASK_LINE2, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @ADC_MUX_AUX2, align 4
  store i32 %25, i32* %9, align 4
  br label %53

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SOUND_MASK_LINE1, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @SOUND_MASK_LINE1, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @ADC_MUX_AUX1, align 4
  store i32 %33, i32* %9, align 4
  br label %52

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SOUND_MASK_LINE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @SOUND_MASK_LINE, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @ADC_MUX_LINE, align 4
  store i32 %41, i32* %9, align 4
  br label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SOUND_MASK_MIC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @SOUND_MASK_MIC, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @ADC_MUX_MIC, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %42
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %31
  br label %53

53:                                               ; preds = %52, %23
  br label %54

54:                                               ; preds = %53, %15
  %55 = load i32, i32* %9, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %8, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %7, align 8
  store i8 %56, i8* %58, align 1
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
