; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetRegAND.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SetRegAND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiS_SetRegAND(i32 %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load i32, i32* %4, align 4
  %9 = load i16, i16* %5, align 2
  %10 = call zeroext i16 @SiS_GetReg(i32 %8, i16 zeroext %9)
  store i16 %10, i16* %7, align 2
  %11 = load i16, i16* %6, align 2
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* %7, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, %12
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %7, align 2
  %17 = load i32, i32* %4, align 4
  %18 = load i16, i16* %5, align 2
  %19 = load i16, i16* %7, align 2
  %20 = call i32 @SiS_SetReg(i32 %17, i16 zeroext %18, i16 zeroext %19)
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
