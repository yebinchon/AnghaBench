; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_reg_update_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_reg_update_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"vfe_process_reg_update_irq: ackPendingFlag is %d\0A\00", align 1
@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@VFE_MSG_ID_START_ACK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@VFE_MSG_ID_UPDATE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vfe_process_reg_update_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_process_reg_update_irq() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @CDBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TRUE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @VFE_MSG_ID_START_ACK, align 4
  %12 = call i32 @vfe_send_msg_no_payload(i32 %11)
  %13 = load i64, i64* @FALSE, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @VFE_MSG_ID_UPDATE_ACK, align 4
  %18 = call i32 @vfe_send_msg_no_payload(i32 %17)
  br label %19

19:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @CDBG(i8*, i64) #1

declare dso_local i32 @vfe_send_msg_no_payload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
