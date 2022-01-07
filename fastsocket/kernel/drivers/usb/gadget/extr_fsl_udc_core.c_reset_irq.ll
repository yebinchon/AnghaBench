; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_reset_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_reset_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.fsl_udc = type { i32, %struct.TYPE_3__, i64, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@dr_regs = common dso_local global %struct.TYPE_4__* null, align 8
@USB_DEVICE_ADDRESS_MASK = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Timeout for reset\0A\00", align 1
@PORTSCX_PORT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Bus reset\00", align 1
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Controller reset\00", align 1
@USB_STATE_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*)* @reset_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_irq(%struct.fsl_udc* %0) #0 {
  %2 = alloca %struct.fsl_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.fsl_udc* %0, %struct.fsl_udc** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %7 = call i32 @fsl_readl(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @USB_DEVICE_ADDRESS_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = call i32 @fsl_writel(i32 %11, i32* %13)
  %15 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %16 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %18 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %22 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %23 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %25 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %27 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %30 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %33 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = call i32 @fsl_readl(i32* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = call i32 @fsl_writel(i32 %38, i32* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = call i32 @fsl_readl(i32* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = call i32 @fsl_writel(i32 %45, i32* %47)
  %49 = load i32, i32* @jiffies, align 4
  %50 = add nsw i32 %49, 100
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %64, %1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i32 @fsl_readl(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* @jiffies, align 4
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @time_after(i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %66

64:                                               ; preds = %57
  %65 = call i32 (...) @cpu_relax()
  br label %52

66:                                               ; preds = %62, %52
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = call i32 @fsl_writel(i32 -1, i32* %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @fsl_readl(i32* %71)
  %73 = load i32, i32* @PORTSCX_PORT_RESET, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = call i32 @VDBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %79 = call i32 @reset_queues(%struct.fsl_udc* %78)
  %80 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %81 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %82 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %96

83:                                               ; preds = %66
  %84 = call i32 @VDBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %86 = call i32 @dr_controller_setup(%struct.fsl_udc* %85)
  %87 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %88 = call i32 @reset_queues(%struct.fsl_udc* %87)
  %89 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %90 = call i32 @ep0_setup(%struct.fsl_udc* %89)
  %91 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %92 = call i32 @dr_controller_run(%struct.fsl_udc* %91)
  %93 = load i32, i32* @USB_STATE_ATTACHED, align 4
  %94 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %95 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %83, %76
  ret void
}

declare dso_local i32 @fsl_readl(i32*) #1

declare dso_local i32 @fsl_writel(i32, i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @VDBG(i8*) #1

declare dso_local i32 @reset_queues(%struct.fsl_udc*) #1

declare dso_local i32 @dr_controller_setup(%struct.fsl_udc*) #1

declare dso_local i32 @ep0_setup(%struct.fsl_udc*) #1

declare dso_local i32 @dr_controller_run(%struct.fsl_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
