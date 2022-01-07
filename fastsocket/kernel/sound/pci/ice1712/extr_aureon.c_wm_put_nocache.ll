; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_wm_put_nocache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_aureon.c_wm_put_nocache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VT1724_SUBDEVICE_PRODIGY71LT = common dso_local global i64 0, align 8
@VT1724_SUBDEVICE_PRODIGY71XT = common dso_local global i64 0, align 8
@PRODIGY_WM_CS = common dso_local global i32 0, align 4
@AUREON_WM_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i16)* @wm_put_nocache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_put_nocache(%struct.snd_ice1712* %0, i32 %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71LT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VT1724_SUBDEVICE_PRODIGY71XT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %3
  %22 = load i32, i32* @PRODIGY_WM_CS, align 4
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @AUREON_WM_CS, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 9
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 511
  %32 = or i32 %28, %31
  %33 = call i32 @aureon_spi_write(%struct.snd_ice1712* %7, i32 %26, i32 %32, i32 16)
  ret void
}

declare dso_local i32 @aureon_spi_write(%struct.snd_ice1712*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
