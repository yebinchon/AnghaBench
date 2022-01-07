; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_calc_gus_envelope_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_soundfont.c_calc_gus_envelope_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @calc_gus_envelope_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_gus_envelope_time(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 6
  %12 = and i32 %11, 3
  %13 = sub nsw i32 3, %12
  %14 = mul nsw i32 %13, 3
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 63
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 13, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 13, %30
  %32 = shl i32 %29, %31
  store i32 %32, i32* %9, align 4
  br label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 13
  %37 = ashr i32 %34, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %39, 10
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %41, 441
  %43 = sdiv i32 %40, %42
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
