; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_drop_state_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_drop_state_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { i32, %struct.nfs_server* }
%struct.nfs_server = type { i32, %struct.nfs_client* }
%struct.nfs_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state_owner*)* @nfs4_drop_state_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_drop_state_owner(%struct.nfs4_state_owner* %0) #0 {
  %2 = alloca %struct.nfs4_state_owner*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_client*, align 8
  store %struct.nfs4_state_owner* %0, %struct.nfs4_state_owner** %2, align 8
  %5 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %6 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %5, i32 0, i32 0
  %7 = call i32 @RB_EMPTY_NODE(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %11 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %10, i32 0, i32 1
  %12 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  store %struct.nfs_server* %12, %struct.nfs_server** %3, align 8
  %13 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %13, i32 0, i32 1
  %15 = load %struct.nfs_client*, %struct.nfs_client** %14, align 8
  store %struct.nfs_client* %15, %struct.nfs_client** %4, align 8
  %16 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %20 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %19, i32 0, i32 0
  %21 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 0
  %23 = call i32 @rb_erase(i32* %20, i32* %22)
  %24 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %25 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %24, i32 0, i32 0
  %26 = call i32 @RB_CLEAR_NODE(i32* %25)
  %27 = load %struct.nfs_client*, %struct.nfs_client** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  br label %30

30:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
