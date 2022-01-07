; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_alloc_nfs_open_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_alloc_nfs_open_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32, %struct.TYPE_2__, i64, i64, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.nfs_open_context* }
%struct.dentry = type { i32 }
%struct.rpc_cred = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_open_context* @alloc_nfs_open_context(%struct.dentry* %0, %struct.rpc_cred* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.rpc_cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_open_context*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nfs_open_context* @kmalloc(i32 56, i32 %8)
  store %struct.nfs_open_context* %9, %struct.nfs_open_context** %7, align 8
  %10 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %11 = icmp ne %struct.nfs_open_context* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %3
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nfs_sb_active(i32 %15)
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i32 @dget(%struct.dentry* %17)
  %19 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %20 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rpc_cred*, %struct.rpc_cred** %5, align 8
  %22 = call i32 @get_rpccred(%struct.rpc_cred* %21)
  %23 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %24 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %26 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %29 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %31 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %33 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %35 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %34, i32 0, i32 1
  %36 = call i32 @nfs_init_lock_context(%struct.TYPE_2__* %35)
  %37 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %38 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %39 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.nfs_open_context* %37, %struct.nfs_open_context** %40, align 8
  %41 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_open_context, %struct.nfs_open_context* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  br label %44

44:                                               ; preds = %12, %3
  %45 = load %struct.nfs_open_context*, %struct.nfs_open_context** %7, align 8
  ret %struct.nfs_open_context* %45
}

declare dso_local %struct.nfs_open_context* @kmalloc(i32, i32) #1

declare dso_local i32 @nfs_sb_active(i32) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @get_rpccred(%struct.rpc_cred*) #1

declare dso_local i32 @nfs_init_lock_context(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
