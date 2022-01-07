; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_call_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_call_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_unlinkdata = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nfs_unlinkdata*)* @nfs_call_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_call_unlink(%struct.dentry* %0, %struct.nfs_unlinkdata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nfs_unlinkdata*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nfs_unlinkdata* %1, %struct.nfs_unlinkdata** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = call %struct.dentry* @dget_parent(%struct.dentry* %8)
  store %struct.dentry* %9, %struct.dentry** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = icmp eq %struct.dentry* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i64 @atomic_inc_not_zero(i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %13
  %26 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %27 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @hlist_add_head(i32* %27, i32* %30)
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  store i32 1, i32* %7, align 4
  br label %43

35:                                               ; preds = %13
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %4, align 8
  %42 = call i32 @nfs_do_call_unlink(%struct.dentry* %39, %struct.inode* %40, %struct.nfs_unlinkdata* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %25
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = call i32 @dput(%struct.dentry* %44)
  br label %46

46:                                               ; preds = %43, %12
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_do_call_unlink(%struct.dentry*, %struct.inode*, %struct.nfs_unlinkdata*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
