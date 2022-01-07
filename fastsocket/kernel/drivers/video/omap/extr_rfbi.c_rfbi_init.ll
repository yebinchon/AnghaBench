; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.omapfb_device* }
%struct.omapfb_device = type { i32 }

@rfbi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RFBI_BASE = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can't ioremap RFBI\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RFBI_SYSCONFIG = common dso_local global i32 0, align 4
@RFBI_SYSSTATUS = common dso_local global i32 0, align 4
@RFBI_CONFIG0 = common dso_local global i32 0, align 4
@RFBI_DATA_CYCLE1_0 = common dso_local global i32 0, align 4
@RFBI_CONTROL = common dso_local global i32 0, align 4
@DISPC_IRQ_FRAMEMASK = common dso_local global i32 0, align 4
@rfbi_dma_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"can't get DISPC irq\0A\00", align 1
@RFBI_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"omapfb: RFBI version %d.%d initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb_device*)* @rfbi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfbi_init(%struct.omapfb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omapfb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omapfb_device* %0, %struct.omapfb_device** %3, align 8
  %6 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  store %struct.omapfb_device* %6, %struct.omapfb_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rfbi, i32 0, i32 3), align 8
  %7 = load i32, i32* @RFBI_BASE, align 4
  %8 = load i32, i32* @SZ_1K, align 4
  %9 = call i32 @ioremap(i32 %7, i32 %8)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rfbi, i32 0, i32 2), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rfbi, i32 0, i32 2), align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %14 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %1
  %20 = call i32 (...) @rfbi_get_clocks()
  store i32 %20, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %80

24:                                               ; preds = %19
  %25 = call i32 @rfbi_enable_clocks(i32 1)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rfbi, i32 0, i32 1), align 4
  %27 = call i32 @clk_get_rate(i32 %26)
  %28 = sdiv i32 %27, 1000
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rfbi, i32 0, i32 0), align 8
  %29 = load i32, i32* @RFBI_SYSCONFIG, align 4
  %30 = call i32 @rfbi_write_reg(i32 %29, i32 2)
  br label %31

31:                                               ; preds = %37, %24
  %32 = load i32, i32* @RFBI_SYSSTATUS, align 4
  %33 = call i32 @rfbi_read_reg(i32 %32)
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %31

38:                                               ; preds = %31
  %39 = load i32, i32* @RFBI_SYSCONFIG, align 4
  %40 = call i32 @rfbi_read_reg(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, 17
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @RFBI_SYSCONFIG, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @rfbi_write_reg(i32 %43, i32 %44)
  store i32 291, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, 3145728
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @RFBI_CONFIG0, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @rfbi_write_reg(i32 %48, i32 %49)
  %51 = load i32, i32* @RFBI_DATA_CYCLE1_0, align 4
  %52 = call i32 @rfbi_write_reg(i32 %51, i32 16)
  %53 = load i32, i32* @RFBI_CONTROL, align 4
  %54 = call i32 @rfbi_read_reg(i32 %53)
  store i32 %54, i32* %4, align 4
  store i32 4, i32* %4, align 4
  %55 = load i32, i32* @RFBI_CONTROL, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @rfbi_write_reg(i32 %55, i32 %56)
  %58 = load i32, i32* @DISPC_IRQ_FRAMEMASK, align 4
  %59 = load i32, i32* @rfbi_dma_callback, align 4
  %60 = call i32 @omap_dispc_request_irq(i32 %58, i32 %59, i32* null)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %38
  %64 = load %struct.omapfb_device*, %struct.omapfb_device** %3, align 8
  %65 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @rfbi_enable_clocks(i32 0)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %80

70:                                               ; preds = %38
  %71 = load i32, i32* @RFBI_REVISION, align 4
  %72 = call i32 @rfbi_read_reg(i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = ashr i32 %73, 4
  %75 = and i32 %74, 15
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 15
  %78 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %77)
  %79 = call i32 @rfbi_enable_clocks(i32 0)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %70, %63, %22, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rfbi_get_clocks(...) #1

declare dso_local i32 @rfbi_enable_clocks(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @rfbi_write_reg(i32, i32) #1

declare dso_local i32 @rfbi_read_reg(i32) #1

declare dso_local i32 @omap_dispc_request_irq(i32, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
