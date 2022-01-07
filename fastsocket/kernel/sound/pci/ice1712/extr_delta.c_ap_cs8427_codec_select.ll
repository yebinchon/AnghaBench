; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_ap_cs8427_codec_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_ap_cs8427_codec_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@ICE1712_DELTA_1010LT_CS = common dso_local global i8 0, align 1
@ICE1712_DELTA_1010LT_CCLK = common dso_local global i8 0, align 1
@ICE1712_DELTA_1010LT_CS_CS8427 = common dso_local global i8 0, align 1
@ICE1712_DELTA_AP_CCLK = common dso_local global i8 0, align 1
@ICE1712_DELTA_AP_CS_CODEC = common dso_local global i8 0, align 1
@ICE1712_DELTA_AP_CS_DIGITAL = common dso_local global i8 0, align 1
@ICE1712_VX442_CCLK = common dso_local global i8 0, align 1
@ICE1712_VX442_CODEC_CHIP_A = common dso_local global i8 0, align 1
@ICE1712_VX442_CODEC_CHIP_B = common dso_local global i8 0, align 1
@ICE1712_VX442_CS_DIGITAL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_ice1712*)* @ap_cs8427_codec_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ap_cs8427_codec_select(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %4 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %5 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %6 = call zeroext i8 @snd_ice1712_read(%struct.snd_ice1712* %4, i32 %5)
  store i8 %6, i8* %3, align 1
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %65 [
    i32 131, label %11
    i32 130, label %11
    i32 132, label %28
    i32 129, label %28
    i32 128, label %45
  ]

11:                                               ; preds = %1, %1
  %12 = load i8, i8* @ICE1712_DELTA_1010LT_CS, align 1
  %13 = zext i8 %12 to i32
  %14 = xor i32 %13, -1
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, %14
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %3, align 1
  %19 = load i8, i8* @ICE1712_DELTA_1010LT_CCLK, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @ICE1712_DELTA_1010LT_CS_CS8427, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = load i8, i8* %3, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %3, align 1
  br label %65

28:                                               ; preds = %1, %1
  %29 = load i8, i8* @ICE1712_DELTA_AP_CCLK, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @ICE1712_DELTA_AP_CS_CODEC, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %3, align 1
  %38 = load i8, i8* @ICE1712_DELTA_AP_CS_DIGITAL, align 1
  %39 = zext i8 %38 to i32
  %40 = xor i32 %39, -1
  %41 = load i8, i8* %3, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %3, align 1
  br label %65

45:                                               ; preds = %1
  %46 = load i8, i8* @ICE1712_VX442_CCLK, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @ICE1712_VX442_CODEC_CHIP_A, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %47, %49
  %51 = load i8, i8* @ICE1712_VX442_CODEC_CHIP_B, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = load i8, i8* %3, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, %53
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %3, align 1
  %58 = load i8, i8* @ICE1712_VX442_CS_DIGITAL, align 1
  %59 = zext i8 %58 to i32
  %60 = xor i32 %59, -1
  %61 = load i8, i8* %3, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %3, align 1
  br label %65

65:                                               ; preds = %1, %45, %28, %11
  %66 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %67 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %68 = load i8, i8* %3, align 1
  %69 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %66, i32 %67, i8 zeroext %68)
  %70 = call i32 @udelay(i32 5)
  %71 = load i8, i8* %3, align 1
  ret i8 %71
}

declare dso_local zeroext i8 @snd_ice1712_read(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
