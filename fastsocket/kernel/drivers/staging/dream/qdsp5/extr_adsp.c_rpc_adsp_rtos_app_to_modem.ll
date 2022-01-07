; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_rpc_adsp_rtos_app_to_modem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_adsp.c_rpc_adsp_rtos_app_to_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_adsp_module = type { i32 }
%struct.rpc_adsp_rtos_app_to_modem_args_t = type { i8*, i8*, i8*, i8*, i32 }
%struct.rpc_reply_hdr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RPC_ADSP_RTOS_ATOM_PROG = common dso_local global i32 0, align 4
@RPC_ADSP_RTOS_APP_TO_MODEM_PROC = common dso_local global i32 0, align 4
@RPC_ADSP_RTOS_PROC_APPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"adsp: could not send RPC request: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"adsp: error receiving RPC reply: %d (%d)\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@RPCMSG_REPLYSTAT_ACCEPTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"adsp: RPC call was denied!\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@RPC_ACCEPTSTAT_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"adsp error: RPC call was not successful (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.msm_adsp_module*)* @rpc_adsp_rtos_app_to_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_adsp_rtos_app_to_modem(i32 %0, i32 %1, %struct.msm_adsp_module* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_adsp_module*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rpc_adsp_rtos_app_to_modem_args_t, align 8
  %10 = alloca %struct.rpc_reply_hdr*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.msm_adsp_module* %2, %struct.msm_adsp_module** %7, align 8
  %11 = getelementptr inbounds %struct.rpc_adsp_rtos_app_to_modem_args_t, %struct.rpc_adsp_rtos_app_to_modem_args_t* %9, i32 0, i32 4
  %12 = load i32, i32* @RPC_ADSP_RTOS_ATOM_PROG, align 4
  %13 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %7, align 8
  %14 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @msm_rpc_get_vers(i32 %15)
  %17 = load i32, i32* @RPC_ADSP_RTOS_APP_TO_MODEM_PROC, align 4
  %18 = call i32 @msm_rpc_setup_req(i32* %11, i32 %12, i32 %16, i32 %17)
  %19 = call i8* @cpu_to_be32(i32 1)
  %20 = getelementptr inbounds %struct.rpc_adsp_rtos_app_to_modem_args_t, %struct.rpc_adsp_rtos_app_to_modem_args_t* %9, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.rpc_adsp_rtos_app_to_modem_args_t, %struct.rpc_adsp_rtos_app_to_modem_args_t* %9, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @RPC_ADSP_RTOS_PROC_APPS, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = getelementptr inbounds %struct.rpc_adsp_rtos_app_to_modem_args_t, %struct.rpc_adsp_rtos_app_to_modem_args_t* %9, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = getelementptr inbounds %struct.rpc_adsp_rtos_app_to_modem_args_t, %struct.rpc_adsp_rtos_app_to_modem_args_t* %9, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %7, align 8
  %31 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @msm_rpc_write(i32 %32, %struct.rpc_adsp_rtos_app_to_modem_args_t* %9, i32 40)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %93

40:                                               ; preds = %3
  %41 = load %struct.msm_adsp_module*, %struct.msm_adsp_module** %7, align 8
  %42 = getelementptr inbounds %struct.msm_adsp_module, %struct.msm_adsp_module* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %struct.rpc_reply_hdr** %10 to i8**
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 5, %45
  %47 = call i32 @msm_rpc_read(i32 %43, i8** %44, i32 -1, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ERESTARTSYS, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %93

56:                                               ; preds = %40
  %57 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %10, align 8
  %58 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32_to_cpu(i32 %59)
  %61 = load i64, i64* @RPCMSG_REPLYSTAT_ACCEPTED, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %10, align 8
  %66 = call i32 @kfree(%struct.rpc_reply_hdr* %65)
  %67 = load i32, i32* @EPERM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %93

69:                                               ; preds = %56
  %70 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %10, align 8
  %71 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @be32_to_cpu(i32 %74)
  %76 = load i64, i64* @RPC_ACCEPTSTAT_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %69
  %79 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %10, align 8
  %80 = getelementptr inbounds %struct.rpc_reply_hdr, %struct.rpc_reply_hdr* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @be32_to_cpu(i32 %83)
  %85 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %10, align 8
  %87 = call i32 @kfree(%struct.rpc_reply_hdr* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %93

90:                                               ; preds = %69
  %91 = load %struct.rpc_reply_hdr*, %struct.rpc_reply_hdr** %10, align 8
  %92 = call i32 @kfree(%struct.rpc_reply_hdr* %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %90, %78, %63, %50, %36
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @msm_rpc_setup_req(i32*, i32, i32, i32) #1

declare dso_local i32 @msm_rpc_get_vers(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @msm_rpc_write(i32, %struct.rpc_adsp_rtos_app_to_modem_args_t*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @msm_rpc_read(i32, i8**, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.rpc_reply_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
