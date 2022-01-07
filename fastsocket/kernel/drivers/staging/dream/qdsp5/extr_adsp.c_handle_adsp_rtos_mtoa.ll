; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_handle_adsp_rtos_mtoa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_handle_adsp_rtos_mtoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_request_hdr = type { i32, i32 }

@rpc_cb_server_client = common dso_local global i32 0, align 4
@RPC_ACCEPTSTAT_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"adsp: unknowned proc %d\0A\00", align 1
@RPC_ACCEPTSTAT_PROC_UNAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_request_hdr*)* @handle_adsp_rtos_mtoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_adsp_rtos_mtoa(%struct.rpc_request_hdr* %0) #0 {
  %2 = alloca %struct.rpc_request_hdr*, align 8
  store %struct.rpc_request_hdr* %0, %struct.rpc_request_hdr** %2, align 8
  %3 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 128, label %6
    i32 129, label %13
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @rpc_cb_server_client, align 4
  %8 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %9 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RPC_ACCEPTSTAT_SUCCESS, align 4
  %12 = call i32 @rpc_send_accepted_void_reply(i32 %7, i32 %10, i32 %11)
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %15 = call i32 @handle_adsp_rtos_mtoa_app(%struct.rpc_request_hdr* %14)
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %18 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @rpc_cb_server_client, align 4
  %22 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %23 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RPC_ACCEPTSTAT_PROC_UNAVAIL, align 4
  %26 = call i32 @rpc_send_accepted_void_reply(i32 %21, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %13, %6
  ret i32 0
}

declare dso_local i32 @rpc_send_accepted_void_reply(i32, i32, i32) #1

declare dso_local i32 @handle_adsp_rtos_mtoa_app(%struct.rpc_request_hdr*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
