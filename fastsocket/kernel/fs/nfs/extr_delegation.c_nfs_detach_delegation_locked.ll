; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_detach_delegation_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_detach_delegation_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_inode = type { i32, i64 }
%struct.nfs_delegation = type { i32, i32*, i32, i32 }
%struct.nfs_client = type { i32 }

@NFS_DELEGATION_RETURNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_delegation* (%struct.nfs_inode*, %struct.nfs_delegation*, %struct.nfs_client*)* @nfs_detach_delegation_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_delegation* @nfs_detach_delegation_locked(%struct.nfs_inode* %0, %struct.nfs_delegation* %1, %struct.nfs_client* %2) #0 {
  %4 = alloca %struct.nfs_delegation*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca %struct.nfs_delegation*, align 8
  %7 = alloca %struct.nfs_client*, align 8
  %8 = alloca %struct.nfs_delegation*, align 8
  store %struct.nfs_inode* %0, %struct.nfs_inode** %5, align 8
  store %struct.nfs_delegation* %1, %struct.nfs_delegation** %6, align 8
  store %struct.nfs_client* %2, %struct.nfs_client** %7, align 8
  %9 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  %13 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %12, i32 0, i32 0
  %14 = call i32 @lockdep_is_held(i32* %13)
  %15 = call %struct.nfs_delegation* @rcu_dereference_protected(i32 %11, i32 %14)
  store %struct.nfs_delegation* %15, %struct.nfs_delegation** %8, align 8
  %16 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %17 = icmp eq %struct.nfs_delegation* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %20 = load %struct.nfs_delegation*, %struct.nfs_delegation** %8, align 8
  %21 = icmp ne %struct.nfs_delegation* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %3
  store %struct.nfs_delegation* null, %struct.nfs_delegation** %4, align 8
  br label %46

23:                                               ; preds = %18
  %24 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* @NFS_DELEGATION_RETURNING, align 4
  %28 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %29 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %28, i32 0, i32 3
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %32 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %31, i32 0, i32 2
  %33 = call i32 @list_del_rcu(i32* %32)
  %34 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %37 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %39 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @rcu_assign_pointer(i32 %40, i32* null)
  %42 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.nfs_delegation*, %struct.nfs_delegation** %6, align 8
  store %struct.nfs_delegation* %45, %struct.nfs_delegation** %4, align 8
  br label %46

46:                                               ; preds = %23, %22
  %47 = load %struct.nfs_delegation*, %struct.nfs_delegation** %4, align 8
  ret %struct.nfs_delegation* %47
}

declare dso_local %struct.nfs_delegation* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
