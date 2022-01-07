; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_phase.c_wm_set_vol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_phase.c_wm_set_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@WM_VOL_MUTE = common dso_local global i16 0, align 2
@wm_vol = common dso_local global i32* null, align 8
@WM_VOL_MAX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i16, i16)* @wm_set_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_set_vol(%struct.snd_ice1712* %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %10 = load i16, i16* %8, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @WM_VOL_MUTE, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @WM_VOL_MUTE, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %4
  store i8 0, i8* %9, align 1
  br label %48

24:                                               ; preds = %16
  %25 = load i32*, i32** @wm_vol, align 8
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @WM_VOL_MUTE, align 2
  %29 = zext i16 %28 to i32
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  %32 = load i16, i16* %8, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @WM_VOL_MUTE, align 2
  %35 = zext i16 %34 to i32
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = mul nsw i32 %31, %37
  %39 = sdiv i32 %38, 127
  %40 = load i16, i16* @WM_VOL_MAX, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %25, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 127, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %9, align 1
  br label %48

48:                                               ; preds = %24, %23
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i8, i8* %9, align 1
  %52 = call i32 @wm_put(%struct.snd_ice1712* %49, i32 %50, i8 zeroext %51)
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 384, %56
  %58 = call i32 @wm_put_nocache(%struct.snd_ice1712* %53, i32 %54, i32 %57)
  ret void
}

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @wm_put_nocache(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
