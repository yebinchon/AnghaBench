; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfInterpolateFuncX.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfInterpolateFuncX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_MULTIPLIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfInterpolateFuncX(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 8
  %16 = load i64, i64* %7, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 8
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 8
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i64, i64* %10, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 8
  %28 = call i32 @zfInterpolateFunc(i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, 128
  %31 = ashr i32 %30, 7
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = ashr i32 %32, 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  ret i64 %37
}

declare dso_local i32 @zfInterpolateFunc(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
