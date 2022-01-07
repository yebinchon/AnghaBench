; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_stdclock_set_mclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1724.c_stdclock_set_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ICE_EEP2_ACLINK = common dso_local global i64 0, align 8
@VT1724_CFG_PRO_I2S = common dso_local global i32 0, align 4
@I2S_FORMAT = common dso_local global i32 0, align 4
@VT1724_MT_I2S_MCLK_128X = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.snd_ice1712*, i32)* @stdclock_set_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @stdclock_set_mclk(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @ICE_EEP2_ACLINK, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VT1724_CFG_PRO_I2S, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %20 = load i32, i32* @I2S_FORMAT, align 4
  %21 = call i32 @ICEMT1724(%struct.snd_ice1712* %19, i32 %20)
  %22 = call zeroext i8 @inb(i32 %21)
  store i8 %22, i8* %7, align 1
  store i8 %22, i8* %6, align 1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ugt i32 %23, 96000
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i8, i8* @VT1724_MT_I2S_MCLK_128X, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %6, align 1
  br label %40

32:                                               ; preds = %18
  %33 = load i8, i8* @VT1724_MT_I2S_MCLK_128X, align 1
  %34 = zext i8 %33 to i32
  %35 = xor i32 %34, -1
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %6, align 1
  br label %40

40:                                               ; preds = %32, %25
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8, i8* %6, align 1
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %49 = load i32, i32* @I2S_FORMAT, align 4
  %50 = call i32 @ICEMT1724(%struct.snd_ice1712* %48, i32 %49)
  %51 = call i32 @outb(i8 zeroext %47, i32 %50)
  store i8 1, i8* %3, align 1
  br label %54

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %2
  store i8 0, i8* %3, align 1
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i8, i8* %3, align 1
  ret i8 %55
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
