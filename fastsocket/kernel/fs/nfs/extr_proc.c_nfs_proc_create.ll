; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.nfs_createdata = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rpc_message = type { %struct.TYPE_4__*, i32*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_CREATE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NFS call  create %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"NFS reply create: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.iattr*, i32, %struct.nfs_open_context*)* @nfs_proc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_create(%struct.inode* %0, %struct.dentry* %1, %struct.iattr* %2, i32 %3, %struct.nfs_open_context* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.iattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs_open_context*, align 8
  %11 = alloca %struct.nfs_createdata*, align 8
  %12 = alloca %struct.rpc_message, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.iattr* %2, %struct.iattr** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nfs_open_context* %4, %struct.nfs_open_context** %10, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 2
  %17 = load i32*, i32** @nfs_procedures, align 8
  %18 = load i64, i64* @NFSPROC_CREATE, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %16, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = load %struct.iattr*, %struct.iattr** %8, align 8
  %30 = call %struct.nfs_createdata* @nfs_alloc_createdata(%struct.inode* %27, %struct.dentry* %28, %struct.iattr* %29)
  store %struct.nfs_createdata* %30, %struct.nfs_createdata** %11, align 8
  %31 = load %struct.nfs_createdata*, %struct.nfs_createdata** %11, align 8
  %32 = icmp eq %struct.nfs_createdata* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %62

34:                                               ; preds = %5
  %35 = load %struct.nfs_createdata*, %struct.nfs_createdata** %11, align 8
  %36 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 1
  store i32* %36, i32** %37, align 8
  %38 = load %struct.nfs_createdata*, %struct.nfs_createdata** %11, align 8
  %39 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 0
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @NFS_CLIENT(%struct.inode* %41)
  %43 = call i32 @rpc_call_sync(i32 %42, %struct.rpc_message* %12, i32 0)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call i32 @nfs_mark_for_revalidate(%struct.inode* %44)
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %34
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = load %struct.nfs_createdata*, %struct.nfs_createdata** %11, align 8
  %51 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfs_createdata*, %struct.nfs_createdata** %11, align 8
  %55 = getelementptr inbounds %struct.nfs_createdata, %struct.nfs_createdata* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nfs_instantiate(%struct.dentry* %49, i32 %53, i32 %57)
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %48, %34
  %60 = load %struct.nfs_createdata*, %struct.nfs_createdata** %11, align 8
  %61 = call i32 @nfs_free_createdata(%struct.nfs_createdata* %60)
  br label %62

62:                                               ; preds = %59, %33
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.nfs_createdata* @nfs_alloc_createdata(%struct.inode*, %struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

declare dso_local i32 @nfs_instantiate(%struct.dentry*, i32, i32) #1

declare dso_local i32 @nfs_free_createdata(%struct.nfs_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
