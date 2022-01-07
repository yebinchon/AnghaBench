; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_wm_put_nocache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_pontis.c_wm_put_nocache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@WM_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i16)* @wm_put_nocache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_put_nocache(%struct.snd_ice1712* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 %8, 9
  %10 = load i16, i16* %6, align 2
  %11 = zext i16 %10 to i32
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %7, align 2
  %14 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %15 = load i32, i32* @WM_DEV, align 4
  %16 = load i16, i16* %7, align 2
  %17 = zext i16 %16 to i32
  %18 = ashr i32 %17, 8
  %19 = trunc i32 %18 to i16
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i16
  %24 = call i32 @snd_vt1724_write_i2c(%struct.snd_ice1712* %14, i32 %15, i16 zeroext %19, i16 zeroext %23)
  ret void
}

declare dso_local i32 @snd_vt1724_write_i2c(%struct.snd_ice1712*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
