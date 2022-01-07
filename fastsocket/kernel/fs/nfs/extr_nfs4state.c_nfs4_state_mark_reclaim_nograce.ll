; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_state_mark_reclaim_nograce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_state_mark_reclaim_nograce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }
%struct.nfs4_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_STATE_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@NFS_STATE_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@NFS_OWNER_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@NFS4CLNT_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*, %struct.nfs4_state*)* @nfs4_state_mark_reclaim_nograce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_state_mark_reclaim_nograce(%struct.nfs_client* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %4, align 8
  %5 = load i32, i32* @NFS_STATE_RECLAIM_NOGRACE, align 4
  %6 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %7 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %6, i32 0, i32 1
  %8 = call i32 @set_bit(i32 %5, i32* %7)
  %9 = load i32, i32* @NFS_STATE_RECLAIM_REBOOT, align 4
  %10 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %11 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %10, i32 0, i32 1
  %12 = call i32 @clear_bit(i32 %9, i32* %11)
  %13 = load i32, i32* @NFS_OWNER_RECLAIM_NOGRACE, align 4
  %14 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %13, i32* %17)
  %19 = load i32, i32* @NFS4CLNT_RECLAIM_NOGRACE, align 4
  %20 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  ret i32 1
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
