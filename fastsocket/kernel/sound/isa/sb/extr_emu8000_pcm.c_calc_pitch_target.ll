; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_calc_pitch_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_calc_pitch_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calc_pitch_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pitch_target(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = ashr i32 %4, 12
  %6 = shl i32 1, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 2048
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 %11, 4142
  %13 = sdiv i32 %12, 10000
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 1024
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %21, 1892
  %23 = sdiv i32 %22, 10000
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, 512
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = mul nsw i32 %31, 905
  %33 = sdiv i32 %32, 10000
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i32, i32* %3, align 4
  %38 = ashr i32 %37, 1
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp sgt i32 %41, 65535
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 65535, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
