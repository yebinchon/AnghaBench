; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi.c_mddi_init_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi.c_mddi_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddi_info = type { i32 }

@VERSION = common dso_local global i32 0, align 4
@MDDI_HOST_BYTES_PER_SUBFRAME = common dso_local global i32 0, align 4
@BPS = common dso_local global i32 0, align 4
@SPM = common dso_local global i32 0, align 4
@TA1_LEN = common dso_local global i32 0, align 4
@MDDI_HOST_TA2_LEN = common dso_local global i32 0, align 4
@TA2_LEN = common dso_local global i32 0, align 4
@DRIVE_HI = common dso_local global i32 0, align 4
@DRIVE_LO = common dso_local global i32 0, align 4
@DISP_WAKE = common dso_local global i32 0, align 4
@MDDI_HOST_REV_RATE_DIV = common dso_local global i32 0, align 4
@REV_RATE_DIV = common dso_local global i32 0, align 4
@MDDI_REV_BUFFER_SIZE = common dso_local global i32 0, align 4
@REV_SIZE = common dso_local global i32 0, align 4
@MDDI_MAX_REV_PKT_SIZE = common dso_local global i32 0, align 4
@REV_ENCAP_SZ = common dso_local global i32 0, align 4
@MDDI_CMD_PERIODIC_REV_ENCAP = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@MDDI_INT_NO_CMD_PKTS_PEND = common dso_local global i32 0, align 4
@PAD_CTL = common dso_local global i32 0, align 4
@DRIVER_START_CNT = common dso_local global i32 0, align 4
@MDDI_CMD_DISP_IGNORE = common dso_local global i32 0, align 4
@CORE_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddi_info*)* @mddi_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mddi_init_registers(%struct.mddi_info* %0) #0 {
  %2 = alloca %struct.mddi_info*, align 8
  store %struct.mddi_info* %0, %struct.mddi_info** %2, align 8
  %3 = load i32, i32* @VERSION, align 4
  %4 = call i32 @mddi_writel(i32 1, i32 %3)
  %5 = load i32, i32* @MDDI_HOST_BYTES_PER_SUBFRAME, align 4
  %6 = load i32, i32* @BPS, align 4
  %7 = call i32 @mddi_writel(i32 %5, i32 %6)
  %8 = load i32, i32* @SPM, align 4
  %9 = call i32 @mddi_writel(i32 3, i32 %8)
  %10 = load i32, i32* @TA1_LEN, align 4
  %11 = call i32 @mddi_writel(i32 5, i32 %10)
  %12 = load i32, i32* @MDDI_HOST_TA2_LEN, align 4
  %13 = load i32, i32* @TA2_LEN, align 4
  %14 = call i32 @mddi_writel(i32 %12, i32 %13)
  %15 = load i32, i32* @DRIVE_HI, align 4
  %16 = call i32 @mddi_writel(i32 150, i32 %15)
  %17 = load i32, i32* @DRIVE_LO, align 4
  %18 = call i32 @mddi_writel(i32 80, i32 %17)
  %19 = load i32, i32* @DISP_WAKE, align 4
  %20 = call i32 @mddi_writel(i32 60, i32 %19)
  %21 = load i32, i32* @MDDI_HOST_REV_RATE_DIV, align 4
  %22 = load i32, i32* @REV_RATE_DIV, align 4
  %23 = call i32 @mddi_writel(i32 %21, i32 %22)
  %24 = load i32, i32* @MDDI_REV_BUFFER_SIZE, align 4
  %25 = load i32, i32* @REV_SIZE, align 4
  %26 = call i32 @mddi_writel(i32 %24, i32 %25)
  %27 = load i32, i32* @MDDI_MAX_REV_PKT_SIZE, align 4
  %28 = load i32, i32* @REV_ENCAP_SZ, align 4
  %29 = call i32 @mddi_writel(i32 %27, i32 %28)
  %30 = load i32, i32* @MDDI_CMD_PERIODIC_REV_ENCAP, align 4
  %31 = load i32, i32* @CMD, align 4
  %32 = call i32 @mddi_writel(i32 %30, i32 %31)
  %33 = load %struct.mddi_info*, %struct.mddi_info** %2, align 8
  %34 = load i32, i32* @MDDI_INT_NO_CMD_PKTS_PEND, align 4
  %35 = call i32 @mddi_wait_interrupt(%struct.mddi_info* %33, i32 %34)
  %36 = load i32, i32* @PAD_CTL, align 4
  %37 = call i32 @mddi_readl(i32 %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @PAD_CTL, align 4
  %41 = call i32 @mddi_writel(i32 32768, i32 %40)
  %42 = call i32 @udelay(i32 5)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load i32, i32* @PAD_CTL, align 4
  %45 = call i32 @mddi_writel(i32 689423, i32 %44)
  %46 = load i32, i32* @DRIVER_START_CNT, align 4
  %47 = call i32 @mddi_writel(i32 393222, i32 %46)
  %48 = load %struct.mddi_info*, %struct.mddi_info** %2, align 8
  %49 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %48, i32 0, i32 0
  %50 = call i32 @mddi_set_auto_hibernate(i32* %49, i32 0)
  %51 = load i32, i32* @MDDI_CMD_DISP_IGNORE, align 4
  %52 = load i32, i32* @CMD, align 4
  %53 = call i32 @mddi_writel(i32 %51, i32 %52)
  %54 = load %struct.mddi_info*, %struct.mddi_info** %2, align 8
  %55 = load i32, i32* @MDDI_INT_NO_CMD_PKTS_PEND, align 4
  %56 = call i32 @mddi_wait_interrupt(%struct.mddi_info* %54, i32 %55)
  %57 = load %struct.mddi_info*, %struct.mddi_info** %2, align 8
  %58 = call i32 @mddi_init_rev_encap(%struct.mddi_info* %57)
  %59 = load i32, i32* @CORE_VER, align 4
  %60 = call i32 @mddi_readl(i32 %59)
  %61 = and i32 %60, 65535
  ret i32 %61
}

declare dso_local i32 @mddi_writel(i32, i32) #1

declare dso_local i32 @mddi_wait_interrupt(%struct.mddi_info*, i32) #1

declare dso_local i32 @mddi_readl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mddi_set_auto_hibernate(i32*, i32) #1

declare dso_local i32 @mddi_init_rev_encap(%struct.mddi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
