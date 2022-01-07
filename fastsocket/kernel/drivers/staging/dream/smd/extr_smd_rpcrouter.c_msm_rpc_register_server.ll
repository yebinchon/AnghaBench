; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_register_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_register_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_rpc_endpoint = type { i32, i32 }
%union.rr_control_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32 }
%struct.rr_server = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@RPCROUTER_CTRL_CMD_NEW_SERVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"x NEW_SERVER id=%d:%08x prog=%08x:%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_rpc_register_server(%struct.msm_rpc_endpoint* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_rpc_endpoint*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.rr_control_msg, align 8
  %10 = alloca %struct.rr_server*, align 8
  store %struct.msm_rpc_endpoint* %0, %struct.msm_rpc_endpoint** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %12 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %15 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.rr_server* @rpcrouter_create_server(i32 %13, i32 %16, i8* %17, i8* %18)
  store %struct.rr_server* %19, %struct.rr_server** %10, align 8
  %20 = load %struct.rr_server*, %struct.rr_server** %10, align 8
  %21 = icmp ne %struct.rr_server* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load i32, i32* @RPCROUTER_CTRL_CMD_NEW_SERVER, align 4
  %27 = bitcast %union.rr_control_msg* %9 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %30 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %union.rr_control_msg* %9 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %35 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = bitcast %union.rr_control_msg* %9 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast %union.rr_control_msg* %9 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast %union.rr_control_msg* %9 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %46 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %49 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @RR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i8* %51, i8* %52)
  %54 = call i32 @rpcrouter_send_control_msg(%union.rr_control_msg* %9)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %25
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %57, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.rr_server* @rpcrouter_create_server(i32, i32, i8*, i8*) #1

declare dso_local i32 @RR(i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @rpcrouter_send_control_msg(%union.rr_control_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
