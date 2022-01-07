; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpcrouter_destroy_local_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpcrouter_destroy_local_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_rpc_endpoint = type { i32, i32, i32, i32 }
%union.rr_control_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RPCROUTER_CTRL_CMD_REMOVE_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"x REMOVE_CLIENT id=%d:%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_rpcrouter_destroy_local_endpoint(%struct.msm_rpc_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_rpc_endpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.rr_control_msg, align 4
  store %struct.msm_rpc_endpoint* %0, %struct.msm_rpc_endpoint** %3, align 8
  %6 = load i32, i32* @RPCROUTER_CTRL_CMD_REMOVE_CLIENT, align 4
  %7 = bitcast %union.rr_control_msg* %5 to i32*
  store i32 %6, i32* %7, align 4
  %8 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %3, align 8
  %9 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.rr_control_msg* %5 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %3, align 8
  %14 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %union.rr_control_msg* %5 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %3, align 8
  %22 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @RR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = call i32 @rpcrouter_send_control_msg(%union.rr_control_msg* %5)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %3, align 8
  %32 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %31, i32 0, i32 1
  %33 = call i32 @wake_lock_destroy(i32* %32)
  %34 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %3, align 8
  %35 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %34, i32 0, i32 0
  %36 = call i32 @list_del(i32* %35)
  %37 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %3, align 8
  %38 = call i32 @kfree(%struct.msm_rpc_endpoint* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @RR(i8*, i32, i32) #1

declare dso_local i32 @rpcrouter_send_control_msg(%union.rr_control_msg*) #1

declare dso_local i32 @wake_lock_destroy(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.msm_rpc_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
