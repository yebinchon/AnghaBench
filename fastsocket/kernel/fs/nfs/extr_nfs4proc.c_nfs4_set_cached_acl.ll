; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_set_cached_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_set_cached_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs4_cached_acl = type { i32 }
%struct.nfs_inode = type { %struct.nfs4_cached_acl* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nfs4_cached_acl*)* @nfs4_set_cached_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_set_cached_acl(%struct.inode* %0, %struct.nfs4_cached_acl* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs4_cached_acl*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs4_cached_acl* %1, %struct.nfs4_cached_acl** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.nfs_inode* @NFS_I(%struct.inode* %6)
  store %struct.nfs_inode* %7, %struct.nfs_inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %11, i32 0, i32 0
  %13 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %12, align 8
  %14 = call i32 @kfree(%struct.nfs4_cached_acl* %13)
  %15 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %4, align 8
  %16 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %17 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %16, i32 0, i32 0
  store %struct.nfs4_cached_acl* %15, %struct.nfs4_cached_acl** %17, align 8
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.nfs4_cached_acl*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
