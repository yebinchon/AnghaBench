; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_sam9g20_wm8731.c_at91sam9g20ek_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_sam9g20_wm8731.c_at91sam9g20ek_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }

@at91sam9g20ek_set_bias_level.mclk_on = internal global i32 0, align 4
@mclk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, i32)* @at91sam9g20ek_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91sam9g20ek_set_bias_level(%struct.snd_soc_card* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %25 [
    i32 130, label %7
    i32 129, label %7
    i32 131, label %18
    i32 128, label %18
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* @at91sam9g20ek_set_bias_level.mclk_on, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @mclk, align 4
  %12 = call i32 @clk_enable(i32 %11)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* @at91sam9g20ek_set_bias_level.mclk_on, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %25

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @at91sam9g20ek_set_bias_level.mclk_on, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @mclk, align 4
  %23 = call i32 @clk_disable(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  store i32 0, i32* @at91sam9g20ek_set_bias_level.mclk_on, align 4
  br label %25

25:                                               ; preds = %2, %24, %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
