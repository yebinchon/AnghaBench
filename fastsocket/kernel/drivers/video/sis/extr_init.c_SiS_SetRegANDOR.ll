; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetRegANDOR.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetRegANDOR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_SetRegANDOR(i32 %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store i32 %0, i32* %5, align 4
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %10 = load i32, i32* %5, align 4
  %11 = load i16, i16* %6, align 2
  %12 = call zeroext i16 @SiS_GetReg(i32 %10, i16 zeroext %11)
  store i16 %12, i16* %9, align 2
  %13 = load i16, i16* %9, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* %7, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = load i16, i16* %8, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %9, align 2
  %22 = load i32, i32* %5, align 4
  %23 = load i16, i16* %6, align 2
  %24 = load i16, i16* %9, align 2
  %25 = call i32 @SiS_SetReg(i32 %22, i16 zeroext %23, i16 zeroext %24)
  ret void
}

declare dso_local zeroext i16 @SiS_GetReg(i32, i16 zeroext) #1

declare dso_local i32 @SiS_SetReg(i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
