; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_configure_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.wm8993_priv* }
%struct.wm8993_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Using %dHz MCLK\0A\00", align 1
@WM8993_CLOCKING_2 = common dso_local global i32 0, align 4
@WM8993_MCLK_DIV = common dso_local global i32 0, align 4
@WM8993_SYSCLK_SRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Using %dHz FLL clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"System clock not configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"CLK_SYS is %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_clock(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca %struct.wm8993_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %6 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %6, i32 0, i32 1
  %8 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  store %struct.wm8993_priv* %8, %struct.wm8993_priv** %4, align 8
  %9 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %10 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %101 [
    i32 128, label %12
    i32 129, label %58
  ]

12:                                               ; preds = %1
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %17 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %21 = load i32, i32* @WM8993_CLOCKING_2, align 4
  %22 = call i32 @wm8993_read(%struct.snd_soc_codec* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %24 = load i32, i32* @WM8993_SYSCLK_SRC, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %30 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 13500000
  br i1 %32, label %33, label %43

33:                                               ; preds = %12
  %34 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %38 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 2
  %41 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %42 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %53

43:                                               ; preds = %12
  %44 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %49 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %52 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %33
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %55 = load i32, i32* @WM8993_CLOCKING_2, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @wm8993_write(%struct.snd_soc_codec* %54, i32 %55, i32 %56)
  br label %108

58:                                               ; preds = %1
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %60 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %63 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %67 = load i32, i32* @WM8993_CLOCKING_2, align 4
  %68 = call i32 @wm8993_read(%struct.snd_soc_codec* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @WM8993_SYSCLK_SRC, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %73 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 13500000
  br i1 %75, label %76, label %86

76:                                               ; preds = %58
  %77 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %81 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 2
  %84 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %85 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %96

86:                                               ; preds = %58
  %87 = load i32, i32* @WM8993_MCLK_DIV, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %92 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %95 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %86, %76
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %98 = load i32, i32* @WM8993_CLOCKING_2, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @wm8993_write(%struct.snd_soc_codec* %97, i32 %98, i32 %99)
  br label %108

101:                                              ; preds = %1
  %102 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %103 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %116

108:                                              ; preds = %96, %53
  %109 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %110 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.wm8993_priv*, %struct.wm8993_priv** %4, align 8
  %113 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %108, %101
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @wm8993_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8993_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
