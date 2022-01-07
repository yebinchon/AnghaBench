; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_set_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.wm9713_priv* }
%struct.wm9713_priv = type { i32 }
%struct._pll_div = type { i32, i32, i32, i32, i32 }

@AC97_HANDSET_RATE = common dso_local global i32 0, align 4
@AC97_EXTENDED_MID = common dso_local global i32 0, align 4
@AC97_LINE1_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32, i32, i32)* @wm9713_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_set_pll(%struct.snd_soc_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm9713_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._pll_div, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 0
  %16 = load %struct.wm9713_priv*, %struct.wm9713_priv** %15, align 8
  store %struct.wm9713_priv* %16, %struct.wm9713_priv** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %4
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %21 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %22 = call i32 @ac97_read(%struct.snd_soc_codec* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %24 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, 128
  %27 = call i32 @ac97_write(%struct.snd_soc_codec* %23, i32 %24, i32 %26)
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %29 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %30 = call i32 @ac97_read(%struct.snd_soc_codec* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %32 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, 512
  %35 = call i32 @ac97_write(%struct.snd_soc_codec* %31, i32 %32, i32 %34)
  %36 = load %struct.wm9713_priv*, %struct.wm9713_priv** %10, align 8
  %37 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %166

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @pll_factors(%struct._pll_div* %13, i32 %39)
  %41 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 12
  %48 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 11
  %51 = or i32 %47, %50
  %52 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 9
  %55 = or i32 %51, %54
  %56 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %55, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %61 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @ac97_write(%struct.snd_soc_codec* %60, i32 %61, i32 %62)
  br label %144

64:                                               ; preds = %38
  %65 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 12
  %68 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 11
  %71 = or i32 %67, %70
  %72 = or i32 %71, 1024
  %73 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 9
  %76 = or i32 %72, %75
  %77 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %76, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, 80
  %83 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 20
  %86 = or i32 %82, %85
  store i32 %86, i32* %11, align 4
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %88 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ac97_write(%struct.snd_soc_codec* %87, i32 %88, i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, 64
  %93 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 16
  %96 = and i32 %95, 15
  %97 = or i32 %92, %96
  store i32 %97, i32* %11, align 4
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %99 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @ac97_write(%struct.snd_soc_codec* %98, i32 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, 48
  %104 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 12
  %107 = and i32 %106, 15
  %108 = or i32 %103, %107
  store i32 %108, i32* %11, align 4
  %109 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %110 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @ac97_write(%struct.snd_soc_codec* %109, i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, 32
  %115 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 15
  %119 = or i32 %114, %118
  store i32 %119, i32* %11, align 4
  %120 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %121 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @ac97_write(%struct.snd_soc_codec* %120, i32 %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, 16
  %126 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 4
  %129 = and i32 %128, 15
  %130 = or i32 %125, %129
  store i32 %130, i32* %11, align 4
  %131 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %132 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @ac97_write(%struct.snd_soc_codec* %131, i32 %132, i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %13, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 15
  %139 = or i32 %135, %138
  store i32 %139, i32* %11, align 4
  %140 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %141 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @ac97_write(%struct.snd_soc_codec* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %64, %44
  %145 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %146 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %147 = call i32 @ac97_read(%struct.snd_soc_codec* %145, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %149 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, 65023
  %152 = call i32 @ac97_write(%struct.snd_soc_codec* %148, i32 %149, i32 %151)
  %153 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %154 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %155 = call i32 @ac97_read(%struct.snd_soc_codec* %153, i32 %154)
  store i32 %155, i32* %11, align 4
  %156 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %157 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %158 = load i32, i32* %11, align 4
  %159 = and i32 %158, 65407
  %160 = call i32 @ac97_write(%struct.snd_soc_codec* %156, i32 %157, i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.wm9713_priv*, %struct.wm9713_priv** %10, align 8
  %163 = getelementptr inbounds %struct.wm9713_priv, %struct.wm9713_priv* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = call i32 @msecs_to_jiffies(i32 10)
  %165 = call i32 @schedule_timeout_interruptible(i32 %164)
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %144, %19
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @pll_factors(%struct._pll_div*, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
