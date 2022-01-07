; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_hdq_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/masters/extr_omap_hdq.c_hdq_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i32, i32, i32 }

@OMAP_HDQ_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hdq_isr: %x\00", align 1
@OMAP_HDQ_INT_STATUS_TXCOMPLETE = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS_RXCOMPLETE = common dso_local global i32 0, align 4
@OMAP_HDQ_INT_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@hdq_wait_queue = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdq_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdq_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hdq_data*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hdq_data*
  store %struct.hdq_data* %8, %struct.hdq_data** %5, align 8
  %9 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %10 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %9, i32 0, i32 2
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %14 = load i32, i32* @OMAP_HDQ_INT_STATUS, align 4
  %15 = call i32 @hdq_reg_in(%struct.hdq_data* %13, i32 %14)
  %16 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %17 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %19 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %18, i32 0, i32 2
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %23 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %26 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %30 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OMAP_HDQ_INT_STATUS_TXCOMPLETE, align 4
  %33 = load i32, i32* @OMAP_HDQ_INT_STATUS_RXCOMPLETE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @OMAP_HDQ_INT_STATUS_TIMEOUT, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = call i32 @wake_up(i32* @hdq_wait_queue)
  br label %41

41:                                               ; preds = %39, %2
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hdq_reg_in(%struct.hdq_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
