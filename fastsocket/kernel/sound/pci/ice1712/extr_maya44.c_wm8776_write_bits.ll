; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_maya44.c_wm8776_write_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_maya44.c_wm8776_write_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }
%struct.snd_wm8776 = type { i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, %struct.snd_wm8776*, i8, i16, i16)* @wm8776_write_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_write_bits(%struct.snd_ice1712* %0, %struct.snd_wm8776* %1, i8 zeroext %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_ice1712*, align 8
  %8 = alloca %struct.snd_wm8776*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %7, align 8
  store %struct.snd_wm8776* %1, %struct.snd_wm8776** %8, align 8
  store i8 %2, i8* %9, align 1
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  %12 = load %struct.snd_wm8776*, %struct.snd_wm8776** %8, align 8
  %13 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %12, i32 0, i32 0
  %14 = load i16*, i16** %13, align 8
  %15 = load i8, i8* %9, align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds i16, i16* %14, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* %10, align 2
  %21 = zext i16 %20 to i32
  %22 = xor i32 %21, -1
  %23 = and i32 %19, %22
  %24 = load i16, i16* %11, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %11, align 2
  %28 = load i16, i16* %11, align 2
  %29 = zext i16 %28 to i32
  %30 = load %struct.snd_wm8776*, %struct.snd_wm8776** %8, align 8
  %31 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %30, i32 0, i32 0
  %32 = load i16*, i16** %31, align 8
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %29, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %5
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %7, align 8
  %41 = load %struct.snd_wm8776*, %struct.snd_wm8776** %8, align 8
  %42 = load i8, i8* %9, align 1
  %43 = load i16, i16* %11, align 2
  %44 = call i32 @wm8776_write(%struct.snd_ice1712* %40, %struct.snd_wm8776* %41, i8 zeroext %42, i16 zeroext %43)
  store i32 1, i32* %6, align 4
  br label %46

45:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @wm8776_write(%struct.snd_ice1712*, %struct.snd_wm8776*, i8 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
