; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_device.c_rpcrouter_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_device.c_rpcrouter_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.msm_rpc_endpoint = type { i32 }
%struct.rpcrouter_ioctl_server_args = type { i32, i32 }

@RPC_ROUTER_VERSION_V1 = common dso_local global i32 0, align 4
@RPCROUTER_MSGSIZE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @rpcrouter_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpcrouter_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.msm_rpc_endpoint*, align 8
  %8 = alloca %struct.rpcrouter_ioctl_server_args, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.msm_rpc_endpoint*
  store %struct.msm_rpc_endpoint* %14, %struct.msm_rpc_endpoint** %7, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %67 [
    i32 130, label %16
    i32 131, label %22
    i32 129, label %31
    i32 128, label %45
    i32 132, label %59
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @RPC_ROUTER_VERSION_V1, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @put_user(i32 %18, i32* %20)
  store i32 %21, i32* %9, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load i32, i32* @RPCROUTER_MSGSIZE_MAX, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %6, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @put_user(i32 %27, i32* %29)
  store i32 %30, i32* %9, align 4
  br label %70

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @copy_from_user(%struct.rpcrouter_ioctl_server_args* %8, i8* %33, i32 8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %70

38:                                               ; preds = %31
  %39 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %7, align 8
  %40 = getelementptr inbounds %struct.rpcrouter_ioctl_server_args, %struct.rpcrouter_ioctl_server_args* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.rpcrouter_ioctl_server_args, %struct.rpcrouter_ioctl_server_args* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @msm_rpc_register_server(%struct.msm_rpc_endpoint* %39, i32 %41, i32 %43)
  br label %70

45:                                               ; preds = %3
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @copy_from_user(%struct.rpcrouter_ioctl_server_args* %8, i8* %47, i32 8)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %70

52:                                               ; preds = %45
  %53 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %7, align 8
  %54 = getelementptr inbounds %struct.rpcrouter_ioctl_server_args, %struct.rpcrouter_ioctl_server_args* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.rpcrouter_ioctl_server_args, %struct.rpcrouter_ioctl_server_args* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @msm_rpc_unregister_server(%struct.msm_rpc_endpoint* %53, i32 %55, i32 %57)
  br label %70

59:                                               ; preds = %3
  %60 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %7, align 8
  %61 = call i32 @msm_rpc_get_vers(%struct.msm_rpc_endpoint* %60)
  %62 = call i32 @MSM_RPC_GET_MINOR(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* %6, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32 @put_user(i32 %63, i32* %65)
  store i32 %66, i32* %9, align 4
  br label %70

67:                                               ; preds = %3
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %59, %52, %51, %38, %37, %22, %16
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  ret i64 %72
}

declare dso_local i32 @put_user(i32, i32*) #1

declare dso_local i32 @copy_from_user(%struct.rpcrouter_ioctl_server_args*, i8*, i32) #1

declare dso_local i32 @msm_rpc_register_server(%struct.msm_rpc_endpoint*, i32, i32) #1

declare dso_local i32 @msm_rpc_unregister_server(%struct.msm_rpc_endpoint*, i32, i32) #1

declare dso_local i32 @MSM_RPC_GET_MINOR(i32) #1

declare dso_local i32 @msm_rpc_get_vers(%struct.msm_rpc_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
