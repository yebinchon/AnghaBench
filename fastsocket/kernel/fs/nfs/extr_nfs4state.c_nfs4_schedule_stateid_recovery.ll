; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_schedule_stateid_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_schedule_stateid_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.nfs_client* }
%struct.nfs_client = type { i32 }
%struct.nfs4_state = type { i32 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_schedule_stateid_recovery(%struct.nfs_server* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs4_state*, align 8
  %6 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %5, align 8
  %7 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %7, i32 0, i32 0
  %9 = load %struct.nfs_client*, %struct.nfs_client** %8, align 8
  store %struct.nfs_client* %9, %struct.nfs_client** %6, align 8
  %10 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %11 = call i32 @nfs4_valid_open_stateid(%struct.nfs4_state* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EBADF, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %5, align 8
  %19 = call i32 @nfs4_state_mark_reclaim_nograce(%struct.nfs_client* %17, %struct.nfs4_state* %18)
  %20 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %21 = call i32 @nfs4_schedule_state_manager(%struct.nfs_client* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @nfs4_valid_open_stateid(%struct.nfs4_state*) #1

declare dso_local i32 @nfs4_state_mark_reclaim_nograce(%struct.nfs_client*, %struct.nfs4_state*) #1

declare dso_local i32 @nfs4_schedule_state_manager(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
