; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8961.c_wm8961_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8961.c_wm8961_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8961_priv* }
%struct.wm8961_priv = type { i32 }

@WM8961_CLOCKING1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MCLK must be <33MHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Using MCLK/2 for %dHz MCLK\0A\00", align 1
@WM8961_MCLKDIV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Using MCLK/1 for %dHz MCLK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8961_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8961_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %14, align 8
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %10, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 1
  %18 = load %struct.wm8961_priv*, %struct.wm8961_priv** %17, align 8
  store %struct.wm8961_priv* %18, %struct.wm8961_priv** %11, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %20 = load i32, i32* @WM8961_CLOCKING1, align 4
  %21 = call i32 @snd_soc_read(%struct.snd_soc_codec* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ugt i32 %22, 33000000
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %62

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ugt i32 %32, 16500000
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %36 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @WM8961_MCLKDIV, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = udiv i32 %43, 2
  store i32 %44, i32* %8, align 4
  br label %54

45:                                               ; preds = %31
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %47 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @WM8961_MCLKDIV, align 4
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %45, %34
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %56 = load i32, i32* @WM8961_CLOCKING1, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @snd_soc_write(%struct.snd_soc_codec* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.wm8961_priv*, %struct.wm8961_priv** %11, align 8
  %61 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %54, %24
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
