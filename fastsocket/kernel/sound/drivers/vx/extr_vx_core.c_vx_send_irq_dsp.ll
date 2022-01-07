; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_core.c_vx_send_irq_dsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_core.c_vx_send_irq_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@VX_CVR = common dso_local global i32 0, align 4
@CVR_HC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VXP_IRQ_OFFSET = common dso_local global i64 0, align 8
@CVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, i32)* @vx_send_irq_dsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_send_irq_dsp(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %8 = load i32, i32* @VX_CVR, align 4
  %9 = load i32, i32* @CVR_HC, align 4
  %10 = call i64 @snd_vx_check_reg_bit(%struct.vx_core* %7, i32 %8, i32 %9, i32 0, i32 200)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %18 = call i64 @vx_has_new_dsp(%struct.vx_core* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i64, i64* @VXP_IRQ_OFFSET, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %28 = load i32, i32* @CVR, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 1
  %31 = load i32, i32* @CVR_HC, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @vx_outb(%struct.vx_core* %27, i32 %28, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @snd_vx_check_reg_bit(%struct.vx_core*, i32, i32, i32, i32) #1

declare dso_local i64 @vx_has_new_dsp(%struct.vx_core*) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
