; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_handle_adsp_rtos_mtoa_app.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_handle_adsp_rtos_mtoa_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.adsp_rtos_mp_mtoa_init_info_type* }
%struct.adsp_rtos_mp_mtoa_init_info_type = type { i64, i64, i64**, i64, i64**, i64, i64*, %struct.queue_to_offset_type** }
%struct.queue_to_offset_type = type { i64, i64 }
%struct.rpc_request_hdr = type { i32 }
%struct.rpc_adsp_rtos_modem_to_app_args_t = type { i64, i64, i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.adsp_rtos_mp_mtoa_init_info_type, %struct.adsp_rtos_mp_mtoa_type }
%struct.adsp_rtos_mp_mtoa_type = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.msm_adsp_module = type { i64, i32, %struct.TYPE_7__*, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32 (i32, i32, i32, i32)* }

@.str = private unnamed_addr constant [53 x i8] c"adsp: rpc event=%d, proc_id=%d, module=%d, image=%d\0A\00", align 1
@adsp_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"adsp: module %d is not supported!\0A\00", align 1
@rpc_cb_server_client = common dso_local global i32 0, align 4
@RPC_ACCEPTSTAT_GARBAGE_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"adsp: module %s: READY\0A\00", align 1
@ADSP_STATE_ENABLED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"adsp: module %s: DISABLED\0A\00", align 1
@ADSP_STATE_DISABLED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"adsp: module %s: SERVICE_RESET\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"adsp: module %s: CMD_SUCCESS\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"adsp: module %s: CMD_FAIL\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"adsp: unknown event %d\0A\00", align 1
@RPC_ACCEPTSTAT_SUCCESS = common dso_local global i32 0, align 4
@ADSP_STATE_INIT_INFO = common dso_local global i32 0, align 4
@EVENT_LEN = common dso_local global i32 0, align 4
@EVENT_MSG_ID = common dso_local global i32 0, align 4
@RPC_ADSP_RTOS_INIT_INFO = common dso_local global i64 0, align 8
@modem_event_addr = common dso_local global i64* null, align 8
@read_modem_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_request_hdr*)* @handle_adsp_rtos_mtoa_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_adsp_rtos_mtoa_app(%struct.rpc_request_hdr* %0) #0 {
  %2 = alloca %struct.rpc_request_hdr*, align 8
  %3 = alloca %struct.rpc_adsp_rtos_modem_to_app_args_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.msm_adsp_module*, align 8
  store %struct.rpc_request_hdr* %0, %struct.rpc_request_hdr** %2, align 8
  %9 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %10 = bitcast %struct.rpc_request_hdr* %9 to %struct.rpc_adsp_rtos_modem_to_app_args_t*
  store %struct.rpc_adsp_rtos_modem_to_app_args_t* %10, %struct.rpc_adsp_rtos_modem_to_app_args_t** %3, align 8
  %11 = load %struct.rpc_adsp_rtos_modem_to_app_args_t*, %struct.rpc_adsp_rtos_modem_to_app_args_t** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_adsp_rtos_modem_to_app_args_t, %struct.rpc_adsp_rtos_modem_to_app_args_t* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @be32_to_cpu(i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.rpc_adsp_rtos_modem_to_app_args_t*, %struct.rpc_adsp_rtos_modem_to_app_args_t** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_adsp_rtos_modem_to_app_args_t, %struct.rpc_adsp_rtos_modem_to_app_args_t* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @be32_to_cpu(i64 %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.rpc_adsp_rtos_modem_to_app_args_t*, %struct.rpc_adsp_rtos_modem_to_app_args_t** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_adsp_rtos_modem_to_app_args_t, %struct.rpc_adsp_rtos_modem_to_app_args_t* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @be32_to_cpu(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.rpc_adsp_rtos_modem_to_app_args_t*, %struct.rpc_adsp_rtos_modem_to_app_args_t** %3, align 8
  %24 = getelementptr inbounds %struct.rpc_adsp_rtos_modem_to_app_args_t, %struct.rpc_adsp_rtos_modem_to_app_args_t* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @be32_to_cpu(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28, i64 %29, i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.msm_adsp_module* @find_adsp_module_by_id(%struct.TYPE_11__* @adsp_info, i64 %32)
  store %struct.msm_adsp_module* %33, %struct.msm_adsp_module** %8, align 8
  %34 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %35 = icmp ne %struct.msm_adsp_module* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %1
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @rpc_cb_server_client, align 4
  %40 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %41 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RPC_ACCEPTSTAT_GARBAGE_ARGS, align 4
  %44 = call i32 @rpc_send_accepted_void_reply(i32 %39, i32 %42, i32 %43)
  br label %120

45:                                               ; preds = %1
  %46 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %47 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %46, i32 0, i32 3
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load i64, i64* %4, align 8
  switch i64 %49, label %98 [
    i64 129, label %50
    i64 130, label %66
    i64 128, label %77
    i64 132, label %88
    i64 133, label %93
  ]

50:                                               ; preds = %45
  %51 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %52 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i8*, i8** @ADSP_STATE_ENABLED, align 8
  %56 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %57 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %59 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %58, i32 0, i32 4
  %60 = call i32 @wake_up(i32* %59)
  %61 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %62 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @adsp_set_image(i32 %63, i64 %64)
  br label %110

66:                                               ; preds = %45
  %67 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %68 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i8*, i8** @ADSP_STATE_DISABLED, align 8
  %72 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %73 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %75 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %74, i32 0, i32 4
  %76 = call i32 @wake_up(i32* %75)
  br label %110

77:                                               ; preds = %45
  %78 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %79 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  %82 = load i8*, i8** @ADSP_STATE_DISABLED, align 8
  %83 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %84 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %86 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %85, i32 0, i32 4
  %87 = call i32 @wake_up(i32* %86)
  br label %110

88:                                               ; preds = %45
  %89 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %90 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %91)
  br label %110

93:                                               ; preds = %45
  %94 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %95 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %96)
  br label %110

98:                                               ; preds = %45
  %99 = load i64, i64* %4, align 8
  %100 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* @rpc_cb_server_client, align 4
  %102 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %103 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RPC_ACCEPTSTAT_GARBAGE_ARGS, align 4
  %106 = call i32 @rpc_send_accepted_void_reply(i32 %101, i32 %104, i32 %105)
  %107 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %108 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %107, i32 0, i32 3
  %109 = call i32 @mutex_unlock(i32* %108)
  br label %120

110:                                              ; preds = %93, %88, %77, %66, %50
  %111 = load i32, i32* @rpc_cb_server_client, align 4
  %112 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %2, align 8
  %113 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RPC_ACCEPTSTAT_SUCCESS, align 4
  %116 = call i32 @rpc_send_accepted_void_reply(i32 %111, i32 %114, i32 %115)
  %117 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %8, align 8
  %118 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %117, i32 0, i32 3
  %119 = call i32 @mutex_unlock(i32* %118)
  br label %120

120:                                              ; preds = %110, %98, %36
  ret void
}

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.msm_adsp_module* @find_adsp_module_by_id(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @rpc_send_accepted_void_reply(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @adsp_set_image(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
