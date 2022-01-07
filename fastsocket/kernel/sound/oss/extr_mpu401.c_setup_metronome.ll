; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_setup_metronome.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_mpu401.c_setup_metronome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@metronome_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setup_metronome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_metronome(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @metronome_mode, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i32 %9, 24
  %11 = and i32 %10, 255
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @metronome_mode, align 8
  %13 = trunc i64 %12 to i32
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* @metronome_mode, align 8
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 255
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* @metronome_mode, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 255
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* @metronome_mode, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @mpu_cmd(i32 %30, i32 132, i32 0)
  br label %41

32:                                               ; preds = %1
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mpu_cmd(i32 %33, i32 228, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mpu_cmd(i32 %36, i32 230, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @mpu_cmd(i32 %39, i32 131, i32 0)
  br label %41

41:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @mpu_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
