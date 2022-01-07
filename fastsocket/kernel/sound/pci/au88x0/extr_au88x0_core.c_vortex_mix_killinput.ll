; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_mix_killinput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_mix_killinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rampchs = common dso_local global i32* null, align 8
@mchannels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8, i32)* @vortex_mix_killinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_mix_killinput(i32* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 1, %7
  %9 = xor i32 %8, -1
  %10 = load i32*, i32** @rampchs, align 8
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %9
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i8, i8* %5, align 1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @vortex_mix_setinputvolumebyte(i32* %16, i8 zeroext %17, i32 %18, i32 128)
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 1, %20
  %22 = xor i32 %21, -1
  %23 = load i32*, i32** @mchannels, align 8
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i8, i8* %5, align 1
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @vortex_mix_setenablebit(i32* %29, i8 zeroext %30, i32 %31, i32 0)
  ret void
}

declare dso_local i32 @vortex_mix_setinputvolumebyte(i32*, i8 zeroext, i32, i32) #1

declare dso_local i32 @vortex_mix_setenablebit(i32*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
