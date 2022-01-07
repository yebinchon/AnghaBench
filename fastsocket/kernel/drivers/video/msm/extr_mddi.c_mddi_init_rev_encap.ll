; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi.c_mddi_init_rev_encap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi.c_mddi_init_rev_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddi_info = type { i32, i32 }

@MDDI_REV_BUFFER_SIZE = common dso_local global i32 0, align 4
@REV_PTR = common dso_local global i32 0, align 4
@MDDI_CMD_FORCE_NEW_REV_PTR = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@MDDI_INT_NO_CMD_PKTS_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddi_info*)* @mddi_init_rev_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mddi_init_rev_encap(%struct.mddi_info* %0) #0 {
  %2 = alloca %struct.mddi_info*, align 8
  store %struct.mddi_info* %0, %struct.mddi_info** %2, align 8
  %3 = load %struct.mddi_info*, %struct.mddi_info** %2, align 8
  %4 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MDDI_REV_BUFFER_SIZE, align 4
  %7 = call i32 @memset(i32 %5, i32 238, i32 %6)
  %8 = load %struct.mddi_info*, %struct.mddi_info** %2, align 8
  %9 = getelementptr inbounds %struct.mddi_info, %struct.mddi_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @REV_PTR, align 4
  %12 = call i32 @mddi_writel(i32 %10, i32 %11)
  %13 = load i32, i32* @MDDI_CMD_FORCE_NEW_REV_PTR, align 4
  %14 = load i32, i32* @CMD, align 4
  %15 = call i32 @mddi_writel(i32 %13, i32 %14)
  %16 = load %struct.mddi_info*, %struct.mddi_info** %2, align 8
  %17 = load i32, i32* @MDDI_INT_NO_CMD_PKTS_PEND, align 4
  %18 = call i32 @mddi_wait_interrupt(%struct.mddi_info* %16, i32 %17)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mddi_writel(i32, i32) #1

declare dso_local i32 @mddi_wait_interrupt(%struct.mddi_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
