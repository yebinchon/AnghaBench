; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_reg_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_reg_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es18xx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es18xx*, i8, i8, i8)* @snd_es18xx_reg_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_reg_bits(%struct.snd_es18xx* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_es18xx*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.snd_es18xx* %0, %struct.snd_es18xx** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %10 = load i8, i8* %7, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %11, 160
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %15 = load i8, i8* %7, align 1
  %16 = load i8, i8* %8, align 1
  %17 = load i8, i8* %9, align 1
  %18 = call i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx* %14, i8 zeroext %15, i8 zeroext %16, i8 zeroext %17)
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.snd_es18xx*, %struct.snd_es18xx** %6, align 8
  %21 = load i8, i8* %7, align 1
  %22 = load i8, i8* %8, align 1
  %23 = load i8, i8* %9, align 1
  %24 = call i32 @snd_es18xx_bits(%struct.snd_es18xx* %20, i8 zeroext %21, i8 zeroext %22, i8 zeroext %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @snd_es18xx_bits(%struct.snd_es18xx*, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
