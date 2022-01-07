; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_schedule_lease_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_schedule_lease_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }

@NFS4CLNT_LEASE_EXPIRED = common dso_local global i32 0, align 4
@NFS4CLNT_CHECK_LEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs4_schedule_lease_recovery(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  %3 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %4 = icmp ne %struct.nfs_client* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %20

6:                                                ; preds = %1
  %7 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %8 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* @NFS4CLNT_CHECK_LEASE, align 4
  %14 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %15 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  br label %17

17:                                               ; preds = %12, %6
  %18 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %19 = call i32 @nfs4_schedule_state_manager(%struct.nfs_client* %18)
  br label %20

20:                                               ; preds = %17, %5
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nfs4_schedule_state_manager(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
