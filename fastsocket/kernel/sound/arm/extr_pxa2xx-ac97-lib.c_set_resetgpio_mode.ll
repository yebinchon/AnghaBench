; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-ac97-lib.c_set_resetgpio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-ac97-lib.c_set_resetgpio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reset_gpio = common dso_local global i32 0, align 4
@GPIO_ALT_FN_2_OUT = common dso_local global i32 0, align 4
@GPIO_ALT_FN_1_OUT = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO_DFLT_LOW = common dso_local global i32 0, align 4
@GPIO_DFLT_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_resetgpio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_resetgpio_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @reset_gpio, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %33 [
    i32 128, label %8
    i32 129, label %21
    i32 130, label %27
  ]

8:                                                ; preds = %6
  %9 = load i32, i32* @reset_gpio, align 4
  %10 = icmp eq i32 %9, 113
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @GPIO_ALT_FN_2_OUT, align 4
  %13 = or i32 113, %12
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* @reset_gpio, align 4
  %16 = icmp eq i32 %15, 95
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @GPIO_ALT_FN_1_OUT, align 4
  %19 = or i32 95, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %14
  br label %33

21:                                               ; preds = %6
  %22 = load i32, i32* @reset_gpio, align 4
  %23 = load i32, i32* @GPIO_OUT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @GPIO_DFLT_LOW, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %6
  %28 = load i32, i32* @reset_gpio, align 4
  %29 = load i32, i32* @GPIO_OUT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GPIO_DFLT_HIGH, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %6, %27, %21, %20
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @pxa_gpio_mode(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @pxa_gpio_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
