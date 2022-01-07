; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_umount_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_umount_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nfs_server = type { %struct.rpc_clnt*, %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @nfs_umount_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_umount_begin(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = call i32 (...) @lock_kernel()
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %6)
  store %struct.nfs_server* %7, %struct.nfs_server** %3, align 8
  %8 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 1
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  store %struct.rpc_clnt* %10, %struct.rpc_clnt** %4, align 8
  %11 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %12 = call i32 @IS_ERR(%struct.rpc_clnt* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %16 = call i32 @rpc_killall_tasks(%struct.rpc_clnt* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 0
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %19, align 8
  store %struct.rpc_clnt* %20, %struct.rpc_clnt** %4, align 8
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %22 = call i32 @IS_ERR(%struct.rpc_clnt* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %26 = call i32 @rpc_killall_tasks(%struct.rpc_clnt* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local i32 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_killall_tasks(%struct.rpc_clnt*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
