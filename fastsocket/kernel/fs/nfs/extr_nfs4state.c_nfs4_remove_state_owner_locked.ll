; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_remove_state_owner_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_remove_state_owner_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_state_owner = type { i32, i32, %struct.nfs_server* }
%struct.nfs_server = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs4_state_owner*)* @nfs4_remove_state_owner_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_remove_state_owner_locked(%struct.nfs4_state_owner* %0) #0 {
  %2 = alloca %struct.nfs4_state_owner*, align 8
  %3 = alloca %struct.nfs_server*, align 8
  store %struct.nfs4_state_owner* %0, %struct.nfs4_state_owner** %2, align 8
  %4 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %5 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %4, i32 0, i32 2
  %6 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  store %struct.nfs_server* %6, %struct.nfs_server** %3, align 8
  %7 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %8 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %7, i32 0, i32 1
  %9 = call i32 @RB_EMPTY_NODE(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %13 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %12, i32 0, i32 1
  %14 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 1
  %16 = call i32 @rb_erase(i32* %13, i32* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 0
  %20 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %2, align 8
  %21 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %20, i32 0, i32 0
  %22 = call i32 @nfs_free_unique_id(i32* %19, i32* %21)
  ret void
}

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @nfs_free_unique_id(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
