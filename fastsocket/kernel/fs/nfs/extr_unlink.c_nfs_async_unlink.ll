; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_async_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_unlink.c_nfs_async_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, i32, %struct.nfs_unlinkdata* }
%struct.nfs_unlinkdata = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @nfs_async_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_async_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfs_unlinkdata*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nfs_unlinkdata* @kzalloc(i32 16, i32 %10)
  store %struct.nfs_unlinkdata* %11, %struct.nfs_unlinkdata** %6, align 8
  %12 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %13 = icmp eq %struct.nfs_unlinkdata* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %70

15:                                               ; preds = %2
  %16 = call i32 (...) @rpc_lookup_cred()
  %17 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %26 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %67

29:                                               ; preds = %15
  %30 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %31 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %30, i32 0, i32 1
  %32 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  br label %59

47:                                               ; preds = %29
  %48 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 2
  store %struct.nfs_unlinkdata* %53, %struct.nfs_unlinkdata** %55, align 8
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  store i32 0, i32* %3, align 4
  br label %72

59:                                               ; preds = %46
  %60 = load %struct.dentry*, %struct.dentry** %5, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %64 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @put_rpccred(i32 %65)
  br label %67

67:                                               ; preds = %59, %24
  %68 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %6, align 8
  %69 = call i32 @kfree(%struct.nfs_unlinkdata* %68)
  br label %70

70:                                               ; preds = %67, %14
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %47
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.nfs_unlinkdata* @kzalloc(i32, i32) #1

declare dso_local i32 @rpc_lookup_cred(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_rpccred(i32) #1

declare dso_local i32 @kfree(%struct.nfs_unlinkdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
