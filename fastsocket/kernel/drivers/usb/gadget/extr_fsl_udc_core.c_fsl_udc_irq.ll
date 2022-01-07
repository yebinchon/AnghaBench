; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_fsl_udc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_fsl_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.fsl_udc = type { i64, i32, i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@dr_regs = common dso_local global %struct.TYPE_2__* null, align 8
@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@PORTSCX_PORT_SUSPEND = common dso_local global i32 0, align 4
@USB_STS_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Packet int\00", align 1
@EP_SETUP_STATUS_EP0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@USB_STS_SOF = common dso_local global i32 0, align 4
@USB_STS_PORT_CHANGE = common dso_local global i32 0, align 4
@USB_STS_RESET = common dso_local global i32 0, align 4
@USB_STS_SUSPEND = common dso_local global i32 0, align 4
@USB_STS_ERR = common dso_local global i32 0, align 4
@USB_STS_SYS_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Error IRQ %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsl_udc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.fsl_udc*
  store %struct.fsl_udc* %11, %struct.fsl_udc** %6, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %14 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %134

19:                                               ; preds = %2
  %20 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %21 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %20, i32 0, i32 1
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = call i32 @fsl_readl(i32* %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = call i32 @fsl_readl(i32* %28)
  %30 = and i32 %26, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = call i32 @fsl_writel(i32 %31, i32* %33)
  %35 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %36 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %19
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = call i32 @fsl_readl(i32* %42)
  %44 = load i32, i32* @PORTSCX_PORT_SUSPEND, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %49 = call i32 @bus_resume(%struct.fsl_udc* %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @USB_STS_INT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = call i32 @fsl_readl(i32* %59)
  %61 = load i32, i32* @EP_SETUP_STATUS_EP0, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %66 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %67 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %66, i32 0, i32 2
  %68 = call i32 @tripwire_handler(%struct.fsl_udc* %65, i32 0, i32* %67)
  %69 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %70 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %71 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %70, i32 0, i32 2
  %72 = call i32 @setup_received_irq(%struct.fsl_udc* %69, i32* %71)
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %64, %56
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dr_regs, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @fsl_readl(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %81 = call i32 @dtd_complete_irq(%struct.fsl_udc* %80)
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83, %51
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @USB_STS_SOF, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @USB_STS_PORT_CHANGE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %98 = call i32 @port_change_irq(%struct.fsl_udc* %97)
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @USB_STS_RESET, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %107 = call i32 @reset_irq(%struct.fsl_udc* %106)
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @USB_STS_SUSPEND, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %116 = call i32 @suspend_irq(%struct.fsl_udc* %115)
  %117 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @USB_STS_ERR, align 4
  %121 = load i32, i32* @USB_STS_SYS_ERR, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %118
  %129 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %130 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %129, i32 0, i32 1
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %128, %17
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fsl_readl(i32*) #1

declare dso_local i32 @fsl_writel(i32, i32*) #1

declare dso_local i32 @bus_resume(%struct.fsl_udc*) #1

declare dso_local i32 @VDBG(i8*, ...) #1

declare dso_local i32 @tripwire_handler(%struct.fsl_udc*, i32, i32*) #1

declare dso_local i32 @setup_received_irq(%struct.fsl_udc*, i32*) #1

declare dso_local i32 @dtd_complete_irq(%struct.fsl_udc*) #1

declare dso_local i32 @port_change_irq(%struct.fsl_udc*) #1

declare dso_local i32 @reset_irq(%struct.fsl_udc*) #1

declare dso_local i32 @suspend_irq(%struct.fsl_udc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
