; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8* }

@TRUE = common dso_local global i8* null, align 8
@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i8* null, align 8
@VFE_DISABLE_ALL_IRQS = common dso_local global i32 0, align 4
@AXI_HALT = common dso_local global i32 0, align 4
@VFE_TEST_GEN_STOP = common dso_local global i32 0, align 4
@AXI_STATUS_BUSY_MASK = common dso_local global i32 0, align 4
@AXI_HALT_CLEAR = common dso_local global i32 0, align 4
@VFE_CLEAR_ALL_IRQS = common dso_local global i32 0, align 4
@VFE_IRQ_CLEAR = common dso_local global i64 0, align 8
@VFE_IMASK_WHILE_STOPPING = common dso_local global i32 0, align 4
@VFE_RESET_UPON_STOP_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_stop() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @TRUE, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @FALSE, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = call i32 (...) @vfe_pm_stop()
  %10 = load i32, i32* @VFE_DISABLE_ALL_IRQS, align 4
  %11 = call i32 @vfe_program_irq_mask(i32 %10)
  %12 = call i32 (...) @vfe_camif_stop_immediately()
  %13 = load i32, i32* @AXI_HALT, align 4
  %14 = call i32 @vfe_program_axi_cmd(i32 %13)
  %15 = load i32, i32* @VFE_TEST_GEN_STOP, align 4
  %16 = call i32 @vfe_prog_hw_testgen_cmd(i32 %15)
  %17 = load i8*, i8** @TRUE, align 8
  store i8* %17, i8** %1, align 8
  br label %18

18:                                               ; preds = %29, %0
  %19 = load i8*, i8** %1, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = call i32 (...) @vfe_read_axi_status()
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @AXI_STATUS_BUSY_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i8*, i8** @FALSE, align 8
  store i8* %28, i8** %1, align 8
  br label %29

29:                                               ; preds = %27, %21
  br label %18

30:                                               ; preds = %18
  %31 = load i32, i32* @AXI_HALT_CLEAR, align 4
  %32 = call i32 @vfe_program_axi_cmd(i32 %31)
  %33 = load i32, i32* @VFE_CLEAR_ALL_IRQS, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VFE_IRQ_CLEAR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* @VFE_IMASK_WHILE_STOPPING, align 4
  %41 = call i32 @vfe_program_irq_mask(i32 %40)
  %42 = load i32, i32* @VFE_RESET_UPON_STOP_CMD, align 4
  %43 = call i32 @vfe_program_global_reset_cmd(i32 %42)
  ret void
}

declare dso_local i32 @vfe_pm_stop(...) #1

declare dso_local i32 @vfe_program_irq_mask(i32) #1

declare dso_local i32 @vfe_camif_stop_immediately(...) #1

declare dso_local i32 @vfe_program_axi_cmd(i32) #1

declare dso_local i32 @vfe_prog_hw_testgen_cmd(i32) #1

declare dso_local i32 @vfe_read_axi_status(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @vfe_program_global_reset_cmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
