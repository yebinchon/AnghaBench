; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_interface.h_i2s_sf_mclkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_interface.h_i2s_sf_mclkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2S_SF_MCLKDIV_1 = common dso_local global i32 0, align 4
@I2S_SF_MCLKDIV_3 = common dso_local global i32 0, align 4
@I2S_SF_MCLKDIV_5 = common dso_local global i32 0, align 4
@I2S_SF_MCLKDIV_14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @i2s_sf_mclkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_sf_mclkdiv(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %28 [
    i32 1, label %8
    i32 3, label %13
    i32 5, label %18
    i32 14, label %23
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @I2S_SF_MCLKDIV_1, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %9
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  %14 = load i32, i32* @I2S_SF_MCLKDIV_3, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load i32, i32* @I2S_SF_MCLKDIV_5, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load i32, i32* @I2S_SF_MCLKDIV_14, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %55

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = srem i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %55

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 20
  br i1 %38, label %48, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 19
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 18
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 14
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42, %39, %33
  store i32 -1, i32* %3, align 4
  br label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @I2S_SF_MCLKDIV_OTHER(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %48, %32, %23, %18, %13, %8
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @I2S_SF_MCLKDIV_OTHER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
