; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c__omap_hdq_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c__omap_hdq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32 }

@OMAP_HDQ_SYSCONFIG = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSCONFIG_SOFTRESET = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_CLOCKENABLE = common dso_local global i32 0, align 4
@OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSSTATUS = common dso_local global i32 0, align 4
@OMAP_HDQ_SYSSTATUS_RESETDONE = common dso_local global i32 0, align 4
@OMAP_HDQ_FLAG_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting HDQ reset, %x\00", align 1
@OMAP_HDQ_SYSCONFIG_AUTOIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdq_data*)* @_omap_hdq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap_hdq_reset(%struct.hdq_data* %0) #0 {
  %2 = alloca %struct.hdq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hdq_data* %0, %struct.hdq_data** %2, align 8
  %5 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %6 = load i32, i32* @OMAP_HDQ_SYSCONFIG, align 4
  %7 = load i32, i32* @OMAP_HDQ_SYSCONFIG_SOFTRESET, align 4
  %8 = call i32 @hdq_reg_out(%struct.hdq_data* %5, i32 %6, i32 %7)
  %9 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %10 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %11 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_CLOCKENABLE, align 4
  %12 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @hdq_reg_out(%struct.hdq_data* %9, i32 %10, i32 %13)
  %15 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %16 = load i32, i32* @OMAP_HDQ_SYSSTATUS, align 4
  %17 = load i32, i32* @OMAP_HDQ_SYSSTATUS_RESETDONE, align 4
  %18 = load i32, i32* @OMAP_HDQ_FLAG_SET, align 4
  %19 = call i32 @hdq_wait_for_flag(%struct.hdq_data* %15, i32 %16, i32 %17, i32 %18, i32* %4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %24 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %39

28:                                               ; preds = %1
  %29 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %30 = load i32, i32* @OMAP_HDQ_CTRL_STATUS, align 4
  %31 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_CLOCKENABLE, align 4
  %32 = load i32, i32* @OMAP_HDQ_CTRL_STATUS_INTERRUPTMASK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @hdq_reg_out(%struct.hdq_data* %29, i32 %30, i32 %33)
  %35 = load %struct.hdq_data*, %struct.hdq_data** %2, align 8
  %36 = load i32, i32* @OMAP_HDQ_SYSCONFIG, align 4
  %37 = load i32, i32* @OMAP_HDQ_SYSCONFIG_AUTOIDLE, align 4
  %38 = call i32 @hdq_reg_out(%struct.hdq_data* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %28, %22
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @hdq_reg_out(%struct.hdq_data*, i32, i32) #1

declare dso_local i32 @hdq_wait_for_flag(%struct.hdq_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
