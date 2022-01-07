; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_alloc_createdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_alloc_createdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_createdata = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.iattr*, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iattr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_createdata* (%struct.inode*, %struct.dentry*, %struct.iattr*)* @nfs_alloc_createdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_createdata* @nfs_alloc_createdata(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.nfs_createdata*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.iattr* %2, %struct.iattr** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nfs_createdata* @kmalloc(i32 56, i32 %8)
  store %struct.nfs_createdata* %9, %struct.nfs_createdata** %7, align 8
  %10 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %11 = icmp ne %struct.nfs_createdata* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %3
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i32 @NFS_FH(%struct.inode* %13)
  %15 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %16 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %23 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %30 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.iattr*, %struct.iattr** %6, align 8
  %33 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %34 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store %struct.iattr* %32, %struct.iattr** %35, align 8
  %36 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %37 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %36, i32 0, i32 0
  %38 = call i32 @nfs_fattr_init(i32* %37)
  %39 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %40 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %43 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %42, i32 0, i32 2
  %44 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %48 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %47, i32 0, i32 0
  %49 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  %50 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32* %48, i32** %51, align 8
  br label %52

52:                                               ; preds = %12, %3
  %53 = load %struct.nfs_createdata*, %struct.nfs_createdata** %7, align 8
  ret %struct.nfs_createdata* %53
}

declare dso_local %struct.nfs_createdata* @kmalloc(i32, i32) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
