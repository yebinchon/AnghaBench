; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_send_tm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_send_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_cmd = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fcp_cmnd = type { i32, i32 }
%struct.scsi_lun = type { i32 }

@TMR_LUN_RESET = common dso_local global i32 0, align 4
@TMR_TARGET_WARM_RESET = common dso_local global i32 0, align 4
@TMR_CLEAR_TASK_SET = common dso_local global i32 0, align 4
@TMR_ABORT_TASK_SET = common dso_local global i32 0, align 4
@TMR_CLEAR_ACA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid FCP tm_flags %x\0A\00", align 1
@FCP_CMND_FIELDS_INVALID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FCP_TMF_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ft_cmd*)* @ft_send_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_send_tm(%struct.ft_cmd* %0) #0 {
  %2 = alloca %struct.ft_cmd*, align 8
  %3 = alloca %struct.fcp_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ft_cmd* %0, %struct.ft_cmd** %2, align 8
  %6 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.fcp_cmnd* @fc_frame_payload_get(i32 %8, i32 8)
  store %struct.fcp_cmnd* %9, %struct.fcp_cmnd** %3, align 8
  %10 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 129, label %13
    i32 128, label %15
    i32 130, label %17
    i32 132, label %19
    i32 131, label %21
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @TMR_LUN_RESET, align 4
  store i32 %14, i32* %5, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @TMR_TARGET_WARM_RESET, align 4
  store i32 %16, i32* %5, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load i32, i32* @TMR_CLEAR_TASK_SET, align 4
  store i32 %18, i32* %5, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @TMR_ABORT_TASK_SET, align 4
  store i32 %20, i32* %5, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @TMR_CLEAR_ACA, align 4
  store i32 %22, i32* %5, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %25 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %29 = load i32, i32* @FCP_CMND_FIELDS_INVALID, align 4
  %30 = call i32 @ft_send_resp_code_and_free(%struct.ft_cmd* %28, i32 %29)
  br label %57

31:                                               ; preds = %21, %19, %17, %15, %13
  %32 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %32, i32 0, i32 2
  %34 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %35 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %40 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %3, align 8
  %44 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %43, i32 0, i32 1
  %45 = bitcast i32* %44 to %struct.scsi_lun*
  %46 = call i32 @scsilun_to_int(%struct.scsi_lun* %45)
  %47 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @target_submit_tmr(i32* %33, i32 %38, i32* %42, i32 %46, %struct.ft_cmd* %47, i32 %48, i32 %49, i32 0, i32 0)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %55 = load i32, i32* @FCP_TMF_FAILED, align 4
  %56 = call i32 @ft_send_resp_code_and_free(%struct.ft_cmd* %54, i32 %55)
  br label %57

57:                                               ; preds = %23, %53, %31
  ret void
}

declare dso_local %struct.fcp_cmnd* @fc_frame_payload_get(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ft_send_resp_code_and_free(%struct.ft_cmd*, i32) #1

declare dso_local i32 @target_submit_tmr(i32*, i32, i32*, i32, %struct.ft_cmd*, i32, i32, i32, i32) #1

declare dso_local i32 @scsilun_to_int(%struct.scsi_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
