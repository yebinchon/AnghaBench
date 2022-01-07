; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_ap_cs8427_codec_deassert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_ap_cs8427_codec_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ICE1712_DELTA_1010LT_CS = common dso_local global i8 0, align 1
@ICE1712_DELTA_1010LT_CS_NONE = common dso_local global i8 0, align 1
@ICE1712_DELTA_AP_CS_DIGITAL = common dso_local global i8 0, align 1
@ICE1712_VX442_CS_DIGITAL = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i8)* @ap_cs8427_codec_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_cs8427_codec_deassert(%struct.snd_ice1712* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %6 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 131, label %9
    i32 130, label %9
    i32 132, label %23
    i32 129, label %23
    i32 128, label %30
  ]

9:                                                ; preds = %2, %2
  %10 = load i8, i8* @ICE1712_DELTA_1010LT_CS, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, -1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, %12
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %4, align 1
  %17 = load i8, i8* @ICE1712_DELTA_1010LT_CS_NONE, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  br label %37

23:                                               ; preds = %2, %2
  %24 = load i8, i8* @ICE1712_DELTA_AP_CS_DIGITAL, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %4, align 1
  br label %37

30:                                               ; preds = %2
  %31 = load i8, i8* @ICE1712_VX442_CS_DIGITAL, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %4, align 1
  br label %37

37:                                               ; preds = %2, %30, %23, %9
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %39 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %40 = load i8, i8* %4, align 1
  %41 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %38, i32 %39, i8 zeroext %40)
  ret void
}

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
