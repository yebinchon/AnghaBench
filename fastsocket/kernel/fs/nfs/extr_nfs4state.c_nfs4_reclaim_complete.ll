; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_reclaim_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_reclaim_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32 }
%struct.nfs4_state_recovery_ops = type { i32 (%struct.nfs_client*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_client*, %struct.nfs4_state_recovery_ops*)* @nfs4_reclaim_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_reclaim_complete(%struct.nfs_client* %0, %struct.nfs4_state_recovery_ops* %1) #0 {
  %3 = alloca %struct.nfs_client*, align 8
  %4 = alloca %struct.nfs4_state_recovery_ops*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %3, align 8
  store %struct.nfs4_state_recovery_ops* %1, %struct.nfs4_state_recovery_ops** %4, align 8
  %5 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %4, align 8
  %6 = getelementptr inbounds %struct.nfs4_state_recovery_ops, %struct.nfs4_state_recovery_ops* %5, i32 0, i32 0
  %7 = load i32 (%struct.nfs_client*)*, i32 (%struct.nfs_client*)** %6, align 8
  %8 = icmp ne i32 (%struct.nfs_client*)* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.nfs4_state_recovery_ops*, %struct.nfs4_state_recovery_ops** %4, align 8
  %11 = getelementptr inbounds %struct.nfs4_state_recovery_ops, %struct.nfs4_state_recovery_ops* %10, i32 0, i32 0
  %12 = load i32 (%struct.nfs_client*)*, i32 (%struct.nfs_client*)** %11, align 8
  %13 = load %struct.nfs_client*, %struct.nfs_client** %3, align 8
  %14 = call i32 %12(%struct.nfs_client* %13)
  br label %15

15:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
