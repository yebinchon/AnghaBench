; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_parse_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_parse_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i64 }
%struct.vfe_irq_thread_msg = type { i32 }
%struct.isr_queue_cmd = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"vfe_parse_irq\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"vfe_parse_irq: irq.vfeIrqStatus is 0\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"vfe_parse_irq: qcmd malloc failed!\0A\00", align 1
@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_IMASK_WHILE_STOPPING = common dso_local global i32 0, align 4
@VFE_IMASK_ERROR_ONLY = common dso_local global i32 0, align 4
@vfe_tasklet = common dso_local global i32 0, align 4
@VFE_IRQ_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vfe_parse_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_parse_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfe_irq_thread_msg, align 4
  %9 = alloca %struct.isr_queue_cmd*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = call i32 @CDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @vfe_read_irq_status(%struct.vfe_irq_thread_msg* %8)
  %12 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %8, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @CDBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.isr_queue_cmd* @kzalloc(i32 24, i32 %19)
  store %struct.isr_queue_cmd* %20, %struct.isr_queue_cmd** %9, align 8
  %21 = load %struct.isr_queue_cmd*, %struct.isr_queue_cmd** %9, align 8
  %22 = icmp ne %struct.isr_queue_cmd* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = call i32 @CDBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %93

26:                                               ; preds = %18
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @VFE_IMASK_WHILE_STOPPING, align 4
  %37 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %36, %38
  store i32 %39, i32* %7, align 4
  br label %49

40:                                               ; preds = %26
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VFE_IMASK_ERROR_ONLY, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %45, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @vfe_parse_interrupt_status(i32 %54)
  %56 = load %struct.isr_queue_cmd*, %struct.isr_queue_cmd** %9, align 8
  %57 = getelementptr inbounds %struct.isr_queue_cmd, %struct.isr_queue_cmd* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = call i32 @vfe_get_asf_frame_info(%struct.vfe_irq_thread_msg* %8)
  %59 = load %struct.isr_queue_cmd*, %struct.isr_queue_cmd** %9, align 8
  %60 = getelementptr inbounds %struct.isr_queue_cmd, %struct.isr_queue_cmd* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = call i32 @vfe_get_demosaic_frame_info(%struct.vfe_irq_thread_msg* %8)
  %62 = load %struct.isr_queue_cmd*, %struct.isr_queue_cmd** %9, align 8
  %63 = getelementptr inbounds %struct.isr_queue_cmd, %struct.isr_queue_cmd* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = call i32 @vfe_get_camif_status(%struct.vfe_irq_thread_msg* %8)
  %65 = load %struct.isr_queue_cmd*, %struct.isr_queue_cmd** %9, align 8
  %66 = getelementptr inbounds %struct.isr_queue_cmd, %struct.isr_queue_cmd* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = call i32 @vfe_get_performance_monitor_data(%struct.vfe_irq_thread_msg* %8)
  %68 = load %struct.isr_queue_cmd*, %struct.isr_queue_cmd** %9, align 8
  %69 = getelementptr inbounds %struct.isr_queue_cmd, %struct.isr_queue_cmd* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.isr_queue_cmd*, %struct.isr_queue_cmd** %9, align 8
  %75 = getelementptr inbounds %struct.isr_queue_cmd, %struct.isr_queue_cmd* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = call i32 @list_add_tail(i32* %75, i32* %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = call i32 @tasklet_schedule(i32* @vfe_tasklet)
  %84 = getelementptr inbounds %struct.vfe_irq_thread_msg, %struct.vfe_irq_thread_msg* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VFE_IRQ_CLEAR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %49, %23, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @CDBG(i8*) #1

declare dso_local i32 @vfe_read_irq_status(%struct.vfe_irq_thread_msg*) #1

declare dso_local %struct.isr_queue_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vfe_parse_interrupt_status(i32) #1

declare dso_local i32 @vfe_get_asf_frame_info(%struct.vfe_irq_thread_msg*) #1

declare dso_local i32 @vfe_get_demosaic_frame_info(%struct.vfe_irq_thread_msg*) #1

declare dso_local i32 @vfe_get_camif_status(%struct.vfe_irq_thread_msg*) #1

declare dso_local i32 @vfe_get_performance_monitor_data(%struct.vfe_irq_thread_msg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
