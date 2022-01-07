; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_servers.c_rpcservers_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_servers.c_rpcservers_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.platform_device = type { i32 }

@endpoint = common dso_local global %struct.task_struct* null, align 8
@rpc_servers_active = common dso_local global i32 0, align 4
@rpc_servers_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"krpcserversd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rpcservers_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcservers_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call %struct.task_struct* (...) @msm_rpc_open()
  store %struct.task_struct* %5, %struct.task_struct** @endpoint, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** @endpoint, align 8
  %7 = call i64 @IS_ERR(%struct.task_struct* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** @endpoint, align 8
  %11 = call i32 @PTR_ERR(%struct.task_struct* %10)
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  store i32 1, i32* @rpc_servers_active, align 4
  %13 = call i32 (...) @rpc_server_register_all()
  %14 = load i32, i32* @rpc_servers_thread, align 4
  %15 = call %struct.task_struct* @kthread_run(i32 %14, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %15, %struct.task_struct** %4, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = call i64 @IS_ERR(%struct.task_struct* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = call i32 @PTR_ERR(%struct.task_struct* %20)
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %19, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.task_struct* @msm_rpc_open(...) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @rpc_server_register_all(...) #1

declare dso_local %struct.task_struct* @kthread_run(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
