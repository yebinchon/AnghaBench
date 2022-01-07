; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vesafb.c_vesa_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vesafb.c_vesa_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@depth = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vga_compat = common dso_local global i64 0, align 8
@dac_reg = common dso_local global i32 0, align 4
@dac_val = common dso_local global i32 0, align 4
@pmi_setpal = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vesa_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_setpalette(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @depth, align 4
  %12 = sub nsw i32 16, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* @vga_compat, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @dac_reg, align 4
  %20 = call i32 @outb_p(i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = lshr i32 %21, %22
  %24 = load i32, i32* @dac_val, align 4
  %25 = call i32 @outb_p(i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = lshr i32 %26, %27
  %29 = load i32, i32* @dac_val, align 4
  %30 = call i32 @outb_p(i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = lshr i32 %31, %32
  %34 = load i32, i32* @dac_val, align 4
  %35 = call i32 @outb_p(i32 %33, i32 %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %17, %4
  %37 = load i32, i32* %10, align 4
  ret i32 %37
}

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
