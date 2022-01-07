; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_recv_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_recv_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_sess = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.fc_lport* }
%struct.TYPE_5__ = type { i32 }
%struct.fc_lport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type { i32 }
%struct.ft_cmd = type { i32, %struct.fc_frame*, i32, %struct.ft_sess* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ft_send_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cmd or seq allocation failure - sending BUSY\0A\00", align 1
@SAM_STAT_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ft_sess*, %struct.fc_frame*)* @ft_recv_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_recv_cmd(%struct.ft_sess* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.ft_sess*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.ft_cmd*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  store %struct.ft_sess* %0, %struct.ft_sess** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %7 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %8 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  store %struct.fc_lport* %11, %struct.fc_lport** %6, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.ft_cmd* @kzalloc(i32 32, i32 %12)
  store %struct.ft_cmd* %13, %struct.ft_cmd** %5, align 8
  %14 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %15 = icmp ne %struct.ft_cmd* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %19 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %19, i32 0, i32 3
  store %struct.ft_sess* %18, %struct.ft_sess** %20, align 8
  %21 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %22 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*)** %23, align 8
  %25 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %26 = bitcast %struct.fc_lport* %25 to %struct.fc_lport.0*
  %27 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %28 = call i32 %24(%struct.fc_lport.0* %26, %struct.fc_frame* %27)
  %29 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %17
  %36 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %37 = call i32 @kfree(%struct.ft_cmd* %36)
  br label %56

38:                                               ; preds = %17
  %39 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %40 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %40, i32 0, i32 1
  store %struct.fc_frame* %39, %struct.fc_frame** %41, align 8
  %42 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* @ft_send_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %47 = getelementptr inbounds %struct.ft_sess, %struct.ft_sess* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ft_cmd*, %struct.ft_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %53, i32 0, i32 0
  %55 = call i32 @queue_work(i32 %52, i32* %54)
  br label %66

56:                                               ; preds = %35, %16
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %59 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %60 = load i32, i32* @SAM_STAT_BUSY, align 4
  %61 = call i32 @ft_send_resp_status(%struct.fc_lport* %58, %struct.fc_frame* %59, i32 %60, i32 0)
  %62 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %63 = call i32 @fc_frame_free(%struct.fc_frame* %62)
  %64 = load %struct.ft_sess*, %struct.ft_sess** %3, align 8
  %65 = call i32 @ft_sess_put(%struct.ft_sess* %64)
  br label %66

66:                                               ; preds = %56, %38
  ret void
}

declare dso_local %struct.ft_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ft_cmd*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @ft_send_resp_status(%struct.fc_lport*, %struct.fc_frame*, i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @ft_sess_put(%struct.ft_sess*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
