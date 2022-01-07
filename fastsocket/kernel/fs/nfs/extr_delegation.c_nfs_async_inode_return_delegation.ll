; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_async_inode_return_delegation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_async_inode_return_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, i32*)* }
%struct.nfs_delegation = type { i32 }
%struct.TYPE_5__ = type { %struct.nfs_client* }
%struct.TYPE_6__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_async_inode_return_delegation(%struct.inode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_client*, align 8
  %7 = alloca %struct.nfs_delegation*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.TYPE_5__* @NFS_SERVER(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.nfs_client*, %struct.nfs_client** %10, align 8
  store %struct.nfs_client* %11, %struct.nfs_client** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @filemap_flush(i32 %14)
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call %struct.TYPE_6__* @NFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.nfs_delegation* @rcu_dereference(i32 %20)
  store %struct.nfs_delegation* %21, %struct.nfs_delegation** %7, align 8
  %22 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %23 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %25, align 8
  %27 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %28 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %27, i32 0, i32 0
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 %26(i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i32 (...) @rcu_read_unlock()
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.nfs_delegation*, %struct.nfs_delegation** %7, align 8
  %38 = call i32 @nfs_mark_return_delegation(%struct.nfs_delegation* %37)
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = load %struct.nfs_client*, %struct.nfs_client** %6, align 8
  %41 = call i32 @nfs_delegation_run_state_manager(%struct.nfs_client* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_5__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @filemap_flush(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_6__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nfs_mark_return_delegation(%struct.nfs_delegation*) #1

declare dso_local i32 @nfs_delegation_run_state_manager(%struct.nfs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
