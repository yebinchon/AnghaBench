; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_dr_controller_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_dr_controller_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fsl_udc = type { i32, i32, i32 }

@dr_regs = common dso_local global %struct.TYPE_4__* null, align 8
@PORTSCX_PHY_TYPE_SEL = common dso_local global i32 0, align 4
@PORTSCX_PORT_WIDTH = common dso_local global i32 0, align 4
@PORTSCX_PTS_ULPI = common dso_local global i32 0, align 4
@PORTSCX_PTW_16BIT = common dso_local global i32 0, align 4
@PORTSCX_PTS_UTMI = common dso_local global i32 0, align 4
@PORTSCX_PTS_FSLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_CMD_RUN_STOP = common dso_local global i32 0, align 4
@USB_CMD_CTRL_RESET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"udc reset timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@USB_MODE_CTRL_MODE_DEVICE = common dso_local global i32 0, align 4
@USB_MODE_SETUP_LOCK_OFF = common dso_local global i32 0, align 4
@USB_EP_LIST_ADDRESS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"vir[qh_base] is %p phy[qh_base] is 0x%8x reg is 0x%8x\00", align 1
@usb_sys_regs = common dso_local global %struct.TYPE_3__* null, align 8
@USB_CTRL_IOENB = common dso_local global i32 0, align 4
@FSL_UDC_RESET_TIMEOUT = common dso_local global i64 0, align 8
@SNOOP_SIZE_2GB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_udc*)* @dr_controller_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_controller_setup(%struct.fsl_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.fsl_udc* %0, %struct.fsl_udc** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = call i32 @fsl_readl(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @PORTSCX_PHY_TYPE_SEL, align 4
  %12 = load i32, i32* @PORTSCX_PORT_WIDTH, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %36 [
    i32 130, label %20
    i32 128, label %24
    i32 129, label %28
    i32 131, label %32
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @PORTSCX_PTS_ULPI, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load i32, i32* @PORTSCX_PTW_16BIT, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %1, %24
  %29 = load i32, i32* @PORTSCX_PTS_UTMI, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %1
  %33 = load i32, i32* @PORTSCX_PTS_FSLS, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %130

39:                                               ; preds = %32, %28, %20
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = call i32 @fsl_writel(i32 %40, i32* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = call i32 @fsl_readl(i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @USB_CMD_RUN_STOP, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = call i32 @fsl_writel(i32 %51, i32* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = call i32 @fsl_readl(i32* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @USB_CMD_CTRL_RESET, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = call i32 @fsl_writel(i32 %61, i32* %63)
  %65 = load i64, i64* @jiffies, align 8
  %66 = add i64 %65, 1000
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %83, %39
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = call i32 @fsl_readl(i32* %69)
  %71 = load i32, i32* @USB_CMD_CTRL_RESET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @time_after(i64 %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %130

83:                                               ; preds = %74
  %84 = call i32 (...) @cpu_relax()
  br label %67

85:                                               ; preds = %67
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = call i32 @fsl_readl(i32* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* @USB_MODE_CTRL_MODE_DEVICE, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @USB_MODE_SETUP_LOCK_OFF, align 4
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = call i32 @fsl_writel(i32 %95, i32* %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = call i32 @fsl_writel(i32 0, i32* %100)
  %102 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %103 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @USB_EP_LIST_ADDRESS_MASK, align 4
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i32 @fsl_writel(i32 %108, i32* %110)
  %112 = load %struct.fsl_udc*, %struct.fsl_udc** %3, align 8
  %113 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dr_regs, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i32 @fsl_readl(i32* %117)
  %119 = call i32 @VDBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115, i32 %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** @usb_sys_regs, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = call i32 @__raw_readl(i32* %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* @USB_CTRL_IOENB, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @usb_sys_regs, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = call i32 @__raw_writel(i32 %126, i32* %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %85, %79, %36
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @fsl_readl(i32*) #1

declare dso_local i32 @fsl_writel(i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @VDBG(i8*, i32, i32, i32) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
