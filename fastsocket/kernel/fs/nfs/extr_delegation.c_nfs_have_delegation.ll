; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_have_delegation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_delegation.c_nfs_have_delegation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_delegation = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@NFS_DELEGATION_RETURNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_have_delegation(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_delegation*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @FMODE_READ, align 4
  %8 = load i32, i32* @FMODE_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nfs_delegation* @rcu_dereference(i32 %16)
  store %struct.nfs_delegation* %17, %struct.nfs_delegation** %5, align 8
  %18 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %19 = icmp ne %struct.nfs_delegation* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i32, i32* @NFS_DELEGATION_RETURNING, align 4
  %30 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %31 = getelementptr inbounds %struct.nfs_delegation, %struct.nfs_delegation* %30, i32 0, i32 1
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.nfs_delegation*, %struct.nfs_delegation** %5, align 8
  %36 = call i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation* %35)
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %28, %20, %2
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nfs_delegation* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs_mark_delegation_referenced(%struct.nfs_delegation*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
