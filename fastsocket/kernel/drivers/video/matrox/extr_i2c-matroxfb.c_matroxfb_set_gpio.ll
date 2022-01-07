; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_i2c-matroxfb.c_matroxfb_set_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_i2c-matroxfb.c_matroxfb_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32 }

@DAC_XGENIOCTRL = common dso_local global i32 0, align 4
@DAC_XGENIODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*, i32, i32)* @matroxfb_set_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_set_gpio(%struct.matrox_fb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.matrox_fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @matroxfb_DAC_lock_irqsave(i64 %9)
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %12 = load i32, i32* @DAC_XGENIOCTRL, align 4
  %13 = call i32 @matroxfb_DAC_in(%struct.matrox_fb_info* %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %19 = load i32, i32* @DAC_XGENIOCTRL, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %18, i32 %19, i32 %20)
  %22 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %23 = load i32, i32* @DAC_XGENIODATA, align 4
  %24 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %22, i32 %23, i32 0)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @matroxfb_DAC_unlock_irqrestore(i64 %25)
  ret void
}

declare dso_local i32 @matroxfb_DAC_lock_irqsave(i64) #1

declare dso_local i32 @matroxfb_DAC_in(%struct.matrox_fb_info*, i32) #1

declare dso_local i32 @matroxfb_DAC_out(%struct.matrox_fb_info*, i32, i32) #1

declare dso_local i32 @matroxfb_DAC_unlock_irqrestore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
