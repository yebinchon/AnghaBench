; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_servers.c_msm_rpc_create_server.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_servers.c_msm_rpc_create_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_rpc_server = type { i64, i32 }

@rpc_server_list_lock = common dso_local global i32 0, align 4
@rpc_server_list = common dso_local global i32 0, align 4
@rpc_servers_active = common dso_local global i64 0, align 8
@FLAG_REGISTERED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_rpc_create_server(%struct.msm_rpc_server* %0) #0 {
  %2 = alloca %struct.msm_rpc_server*, align 8
  store %struct.msm_rpc_server* %0, %struct.msm_rpc_server** %2, align 8
  %3 = load %struct.msm_rpc_server*, %struct.msm_rpc_server** %2, align 8
  %4 = getelementptr inbounds %struct.msm_rpc_server, %struct.msm_rpc_server* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.msm_rpc_server*, %struct.msm_rpc_server** %2, align 8
  %6 = getelementptr inbounds %struct.msm_rpc_server, %struct.msm_rpc_server* %5, i32 0, i32 1
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = call i32 @mutex_lock(i32* @rpc_server_list_lock)
  %9 = load %struct.msm_rpc_server*, %struct.msm_rpc_server** %2, align 8
  %10 = getelementptr inbounds %struct.msm_rpc_server, %struct.msm_rpc_server* %9, i32 0, i32 1
  %11 = call i32 @list_add(i32* %10, i32* @rpc_server_list)
  %12 = load i64, i64* @rpc_servers_active, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.msm_rpc_server*, %struct.msm_rpc_server** %2, align 8
  %16 = call i32 @rpc_server_register(%struct.msm_rpc_server* %15)
  %17 = load i64, i64* @FLAG_REGISTERED, align 8
  %18 = load %struct.msm_rpc_server*, %struct.msm_rpc_server** %2, align 8
  %19 = getelementptr inbounds %struct.msm_rpc_server, %struct.msm_rpc_server* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = or i64 %20, %17
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %14, %1
  %23 = call i32 @mutex_unlock(i32* @rpc_server_list_lock)
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @rpc_server_register(%struct.msm_rpc_server*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
