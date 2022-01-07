; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dsp_chip_to_dsp_addx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_dsp_chip_to_dsp_addx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_CHIP_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @dsp_chip_to_dsp_addx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_chip_to_dsp_addx(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @UC_RANGE(i32 %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @UC_OFF(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @X_RANGE_ALL(i32 %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @X_OFF(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @Y_RANGE_ALL(i32 %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @Y_OFF(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* @INVALID_CHIP_ADDRESS, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %28, %21, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @UC_RANGE(i32, i32) #1

declare dso_local i32 @UC_OFF(i32) #1

declare dso_local i64 @X_RANGE_ALL(i32, i32) #1

declare dso_local i32 @X_OFF(i32) #1

declare dso_local i64 @Y_RANGE_ALL(i32, i32) #1

declare dso_local i32 @Y_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
