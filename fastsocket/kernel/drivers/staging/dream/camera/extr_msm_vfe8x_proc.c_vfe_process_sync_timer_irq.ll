; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_sync_timer_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_process_sync_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_interrupt_status = type { i64, i64, i64 }

@VFE_MSG_ID_SYNC_TIMER0_DONE = common dso_local global i32 0, align 4
@VFE_MSG_ID_SYNC_TIMER1_DONE = common dso_local global i32 0, align 4
@VFE_MSG_ID_SYNC_TIMER2_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_interrupt_status*)* @vfe_process_sync_timer_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_process_sync_timer_irq(%struct.vfe_interrupt_status* %0) #0 {
  %2 = alloca %struct.vfe_interrupt_status*, align 8
  store %struct.vfe_interrupt_status* %0, %struct.vfe_interrupt_status** %2, align 8
  %3 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %4 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @VFE_MSG_ID_SYNC_TIMER0_DONE, align 4
  %9 = call i32 @vfe_send_msg_no_payload(i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %12 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @VFE_MSG_ID_SYNC_TIMER1_DONE, align 4
  %17 = call i32 @vfe_send_msg_no_payload(i32 %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.vfe_interrupt_status*, %struct.vfe_interrupt_status** %2, align 8
  %20 = getelementptr inbounds %struct.vfe_interrupt_status, %struct.vfe_interrupt_status* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @VFE_MSG_ID_SYNC_TIMER2_DONE, align 4
  %25 = call i32 @vfe_send_msg_no_payload(i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @vfe_send_msg_no_payload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
