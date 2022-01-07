; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_ap_cs8427_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_delta.c_ap_cs8427_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@ICE1712_DELTA_AP_DOUT = common dso_local global i8 0, align 1
@ICE1712_DELTA_AP_CCLK = common dso_local global i8 0, align 1
@ICE1712_IREG_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i8, i8)* @ap_cs8427_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_cs8427_write_byte(%struct.snd_ice1712* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32 7, i32* %7, align 4
  br label %8

8:                                                ; preds = %52, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = load i8, i8* @ICE1712_DELTA_AP_DOUT, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @ICE1712_DELTA_AP_CCLK, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %13, %15
  %17 = xor i32 %16, -1
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %6, align 1
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %11
  %29 = load i8, i8* @ICE1712_DELTA_AP_DOUT, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %6, align 1
  br label %35

35:                                               ; preds = %28, %11
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %37 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %38 = load i8, i8* %6, align 1
  %39 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %36, i32 %37, i8 zeroext %38)
  %40 = call i32 @udelay(i32 5)
  %41 = load i8, i8* @ICE1712_DELTA_AP_CCLK, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %6, align 1
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %48 = load i32, i32* @ICE1712_IREG_GPIO_DATA, align 4
  %49 = load i8, i8* %6, align 1
  %50 = call i32 @snd_ice1712_write(%struct.snd_ice1712* %47, i32 %48, i8 zeroext %49)
  %51 = call i32 @udelay(i32 5)
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  br label %8

55:                                               ; preds = %8
  ret void
}

declare dso_local i32 @snd_ice1712_write(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
