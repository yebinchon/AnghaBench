; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_rpc_endpoint = type { i32, i8*, i8*, i32, i32 }
%struct.rr_server = type { i32, i32 }

@EHOSTUNREACH = common dso_local global i32 0, align 4
@RPC_VERSION_MODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msm_rpc_endpoint* @msm_rpc_connect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msm_rpc_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_rpc_endpoint*, align 8
  %9 = alloca %struct.rr_server*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.rr_server* @rpcrouter_lookup_server(i32 %10, i32 %11)
  store %struct.rr_server* %12, %struct.rr_server** %9, align 8
  %13 = load %struct.rr_server*, %struct.rr_server** %9, align 8
  %14 = icmp ne %struct.rr_server* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EHOSTUNREACH, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.msm_rpc_endpoint* @ERR_PTR(i32 %17)
  store %struct.msm_rpc_endpoint* %18, %struct.msm_rpc_endpoint** %4, align 8
  br label %49

19:                                               ; preds = %3
  %20 = call %struct.msm_rpc_endpoint* (...) @msm_rpc_open()
  store %struct.msm_rpc_endpoint* %20, %struct.msm_rpc_endpoint** %8, align 8
  %21 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %8, align 8
  %22 = call i64 @IS_ERR(%struct.msm_rpc_endpoint* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %8, align 8
  store %struct.msm_rpc_endpoint* %25, %struct.msm_rpc_endpoint** %4, align 8
  br label %49

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %8, align 8
  %29 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rr_server*, %struct.rr_server** %9, align 8
  %31 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %8, align 8
  %34 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rr_server*, %struct.rr_server** %9, align 8
  %36 = getelementptr inbounds %struct.rr_server, %struct.rr_server* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %8, align 8
  %39 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %8, align 8
  %43 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %8, align 8
  %47 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %8, align 8
  store %struct.msm_rpc_endpoint* %48, %struct.msm_rpc_endpoint** %4, align 8
  br label %49

49:                                               ; preds = %26, %24, %15
  %50 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %4, align 8
  ret %struct.msm_rpc_endpoint* %50
}

declare dso_local %struct.rr_server* @rpcrouter_lookup_server(i32, i32) #1

declare dso_local %struct.msm_rpc_endpoint* @ERR_PTR(i32) #1

declare dso_local %struct.msm_rpc_endpoint* @msm_rpc_open(...) #1

declare dso_local i64 @IS_ERR(%struct.msm_rpc_endpoint*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
