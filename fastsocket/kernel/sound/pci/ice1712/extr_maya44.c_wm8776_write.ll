; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_maya44.c_wm8776_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_maya44.c_wm8776_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }
%struct.snd_wm8776 = type { i16*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, %struct.snd_wm8776*, i8, i16)* @wm8776_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8776_write(%struct.snd_ice1712* %0, %struct.snd_wm8776* %1, i8 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca %struct.snd_wm8776*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store %struct.snd_wm8776* %1, %struct.snd_wm8776** %6, align 8
  store i8 %2, i8* %7, align 1
  store i16 %3, i16* %8, align 2
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %10 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %11 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i8, i8* %7, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %14, 1
  %16 = load i16, i16* %8, align 2
  %17 = zext i16 %16 to i32
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 1
  %20 = or i32 %15, %19
  %21 = trunc i32 %20 to i8
  %22 = load i16, i16* %8, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i16
  %26 = call i32 @snd_vt1724_write_i2c(%struct.snd_ice1712* %9, i32 %12, i8 zeroext %21, i16 zeroext %25)
  %27 = load i16, i16* %8, align 2
  %28 = load %struct.snd_wm8776*, %struct.snd_wm8776** %6, align 8
  %29 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %28, i32 0, i32 0
  %30 = load i16*, i16** %29, align 8
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i16, i16* %30, i64 %32
  store i16 %27, i16* %33, align 2
  ret void
}

declare dso_local i32 @snd_vt1724_write_i2c(%struct.snd_ice1712*, i32, i8 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
