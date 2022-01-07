; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_state_mark_reclaim_reboot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_state_mark_reclaim_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }
%struct.nfs4_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_STATE_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@NFS_STATE_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@NFS_OWNER_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@NFS4CLNT_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_client*, %struct.nfs4_state*)* @nfs4_state_mark_reclaim_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_state_mark_reclaim_reboot(%struct.nfs_client* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_client*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %4, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %5, align 8
  %6 = load i32, i32* @NFS_STATE_RECLAIM_REBOOT, align 4
  %7 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %8 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %7, i32 0, i32 1
  %9 = call i32 @set_bit(i32 %6, i32* %8)
  %10 = load i32, i32* @NFS_STATE_RECLAIM_NOGRACE, align 4
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %12 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @NFS_STATE_RECLAIM_REBOOT, align 4
  %17 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %18 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %17, i32 0, i32 1
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  store i32 0, i32* %3, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load i32, i32* @NFS_OWNER_RECLAIM_REBOOT, align 4
  %22 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %21, i32* %25)
  %27 = load i32, i32* @NFS4CLNT_RECLAIM_REBOOT, align 4
  %28 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
