; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_WriteDAC.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_WriteDAC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i32, i16, i16, i16, i16, i16)* @SiS_WriteDAC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_WriteDAC(%struct.SiS_Private* %0, i32 %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i16 zeroext %6) #0 {
  %8 = alloca %struct.SiS_Private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %8, align 8
  store i32 %1, i32* %9, align 4
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  store i16 %6, i16* %14, align 2
  %18 = load i16, i16* %11, align 2
  %19 = zext i16 %18 to i32
  switch i32 %19, label %28 [
    i32 0, label %20
    i32 1, label %24
  ]

20:                                               ; preds = %7
  %21 = load i16, i16* %14, align 2
  store i16 %21, i16* %15, align 2
  %22 = load i16, i16* %12, align 2
  store i16 %22, i16* %16, align 2
  %23 = load i16, i16* %13, align 2
  store i16 %23, i16* %17, align 2
  br label %32

24:                                               ; preds = %7
  %25 = load i16, i16* %12, align 2
  store i16 %25, i16* %15, align 2
  %26 = load i16, i16* %13, align 2
  store i16 %26, i16* %16, align 2
  %27 = load i16, i16* %14, align 2
  store i16 %27, i16* %17, align 2
  br label %32

28:                                               ; preds = %7
  %29 = load i16, i16* %13, align 2
  store i16 %29, i16* %15, align 2
  %30 = load i16, i16* %14, align 2
  store i16 %30, i16* %16, align 2
  %31 = load i16, i16* %12, align 2
  store i16 %31, i16* %17, align 2
  br label %32

32:                                               ; preds = %28, %24, %20
  %33 = load i32, i32* %9, align 4
  %34 = load i16, i16* %15, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %10, align 2
  %37 = zext i16 %36 to i32
  %38 = shl i32 %35, %37
  %39 = trunc i32 %38 to i16
  %40 = call i32 @SiS_SetRegByte(i32 %33, i16 zeroext %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i16, i16* %16, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* %10, align 2
  %45 = zext i16 %44 to i32
  %46 = shl i32 %43, %45
  %47 = trunc i32 %46 to i16
  %48 = call i32 @SiS_SetRegByte(i32 %41, i16 zeroext %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i16, i16* %17, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %10, align 2
  %53 = zext i16 %52 to i32
  %54 = shl i32 %51, %53
  %55 = trunc i32 %54 to i16
  %56 = call i32 @SiS_SetRegByte(i32 %49, i16 zeroext %55)
  ret void
}

declare dso_local i32 @SiS_SetRegByte(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
