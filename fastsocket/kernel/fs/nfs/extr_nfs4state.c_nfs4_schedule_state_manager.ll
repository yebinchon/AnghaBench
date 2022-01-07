; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_schedule_state_manager.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_schedule_state_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, i32 }
%struct.task_struct = type { i32 }

@NFS4CLNT_MANAGER_RUNNING = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@nfs4_run_state_manager = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-manager\00", align 1
@RPC_DISPLAY_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_schedule_state_manager(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %4 = load i32, i32* @NFS4CLNT_MANAGER_RUNNING, align 4
  %5 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %5, i32 0, i32 2
  %7 = call i64 @test_and_set_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* @THIS_MODULE, align 4
  %12 = call i32 @__module_get(i32 %11)
  %13 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %13, i32 0, i32 1
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load i32, i32* @nfs4_run_state_manager, align 4
  %17 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %18 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RPC_DISPLAY_ADDR, align 4
  %22 = call i32 @rpc_peeraddr2str(i32 %20, i32 %21)
  %23 = call %struct.task_struct* @kthread_run(i32 %16, %struct.nfs_client* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.task_struct* %23, %struct.task_struct** %3, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = call i32 @IS_ERR(%struct.task_struct* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %10
  br label %35

28:                                               ; preds = %10
  %29 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %30 = call i32 @nfs4_clear_state_manager_bit(%struct.nfs_client* %29)
  %31 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %32 = call i32 @nfs_put_client(%struct.nfs_client* %31)
  %33 = load i32, i32* @THIS_MODULE, align 4
  %34 = call i32 @module_put(i32 %33)
  br label %35

35:                                               ; preds = %28, %27, %9
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.nfs_client*, i8*, i32) #1

declare dso_local i32 @rpc_peeraddr2str(i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @nfs4_clear_state_manager_bit(%struct.nfs_client*) #1

declare dso_local i32 @nfs_put_client(%struct.nfs_client*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
