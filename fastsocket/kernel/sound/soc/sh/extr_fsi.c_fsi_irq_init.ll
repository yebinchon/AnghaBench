; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_irq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }

@DOFF_CTL = common dso_local global i32 0, align 4
@DIFF_CTL = common dso_local global i32 0, align 4
@IRQ_HALF = common dso_local global i32 0, align 4
@FIFO_CLR = common dso_local global i32 0, align 4
@INT_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*, i32)* @fsi_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_irq_init(%struct.fsi_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @fsi_port_ab_io_bit(%struct.fsi_priv* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DOFF_CTL, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @DIFF_CTL, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @fsi_irq_disable(%struct.fsi_priv* %18, i32 %19)
  %21 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IRQ_HALF, align 4
  %24 = call i32 @fsi_reg_write(%struct.fsi_priv* %21, i32 %22, i32 %23)
  %25 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FIFO_CLR, align 4
  %28 = load i32, i32* @FIFO_CLR, align 4
  %29 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @INT_ST, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @fsi_master_mask_set(i32 %30, i32 %31, i32 0)
  ret void
}

declare dso_local i32 @fsi_port_ab_io_bit(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_irq_disable(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_reg_write(%struct.fsi_priv*, i32, i32) #1

declare dso_local i32 @fsi_reg_mask_set(%struct.fsi_priv*, i32, i32, i32) #1

declare dso_local i32 @fsi_master_mask_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
