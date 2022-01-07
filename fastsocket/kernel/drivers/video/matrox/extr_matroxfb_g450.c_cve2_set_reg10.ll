; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_cve2_set_reg10.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_g450.c_cve2_set_reg10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*, i32, i32)* @cve2_set_reg10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cve2_set_reg10(%struct.matrox_fb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.matrox_fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @matroxfb_DAC_lock_irqsave(i64 %8)
  %10 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %10, i32 135, i32 %11)
  %13 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 2
  %16 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %13, i32 136, i32 %15)
  %17 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %17, i32 135, i32 %19)
  %21 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 3
  %24 = call i32 @matroxfb_DAC_out(%struct.matrox_fb_info* %21, i32 136, i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @matroxfb_DAC_unlock_irqrestore(i64 %25)
  ret void
}

declare dso_local i32 @matroxfb_DAC_lock_irqsave(i64) #1

declare dso_local i32 @matroxfb_DAC_out(%struct.matrox_fb_info*, i32, i32) #1

declare dso_local i32 @matroxfb_DAC_unlock_irqrestore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
