; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_start_delegation_return.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_start_delegation_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_delegation = type { i32 }
%struct.nfs_inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_delegation* (%struct.nfs_inode*)* @nfs_start_delegation_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_delegation* @nfs_start_delegation_return(%struct.nfs_inode* %0) #0 {
  %2 = alloca %struct.nfs_inode*, align 8
  %3 = alloca %struct.nfs_delegation*, align 8
  store %struct.nfs_inode* %0, %struct.nfs_inode** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.nfs_inode*, %struct.nfs_inode** %2, align 8
  %6 = call %struct.nfs_delegation* @nfs_start_delegation_return_locked(%struct.nfs_inode* %5)
  store %struct.nfs_delegation* %6, %struct.nfs_delegation** %3, align 8
  %7 = call i32 (...) @rcu_read_unlock()
  %8 = load %struct.nfs_delegation*, %struct.nfs_delegation** %3, align 8
  ret %struct.nfs_delegation* %8
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @nfs_start_delegation_return_locked(%struct.nfs_inode*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
