; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_mixer.c_mixer_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_pas2_mixer.c_mixer_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @mixer_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_output(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sdiv i32 %15, 100
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sdiv i32 %19, 100
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 16
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %24, %5
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %44

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %9, align 4
  %39 = or i32 128, %38
  %40 = call i32 @mix_write(i32 %39, i32 1931)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @mix_write(i32 %41, i32 1931)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %6, align 4
  br label %55

44:                                               ; preds = %34
  %45 = load i32, i32* %9, align 4
  %46 = or i32 160, %45
  %47 = call i32 @mix_write(i32 %46, i32 1931)
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @mix_write(i32 %48, i32 1931)
  %50 = load i32, i32* %9, align 4
  %51 = or i32 192, %50
  %52 = call i32 @mix_write(i32 %51, i32 1931)
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @mix_write(i32 %53, i32 1931)
  br label %55

55:                                               ; preds = %44, %37
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %56, %58
  ret i32 %59
}

declare dso_local i32 @mix_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
