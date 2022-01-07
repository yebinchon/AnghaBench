; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.nfs_server = type { i32 }
%struct.nfs_removeargs = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfs_removeres = type { i32, i32, %struct.nfs_server* }
%struct.rpc_message = type { %struct.nfs_removeres*, %struct.nfs_removeargs*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_REMOVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*)* @_nfs4_proc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_remove(%struct.inode* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_removeargs, align 4
  %7 = alloca %struct.nfs_removeres, align 8
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %6, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %6, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.qstr*, %struct.qstr** %4, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %19 = load %struct.qstr*, %struct.qstr** %4, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %6, i32 0, i32 2
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @NFS_FH(%struct.inode* %23)
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %7, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %7, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %7, i32 0, i32 2
  %28 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  store %struct.nfs_server* %28, %struct.nfs_server** %27, align 8
  %29 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  store %struct.nfs_removeres* %7, %struct.nfs_removeres** %29, align 8
  %30 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  store %struct.nfs_removeargs* %6, %struct.nfs_removeargs** %30, align 8
  %31 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 2
  %32 = load i32*, i32** @nfs4_procedures, align 8
  %33 = load i64, i64* @NFSPROC4_CLNT_REMOVE, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %31, align 8
  %35 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %39 = getelementptr inbounds %struct.nfs_removeargs, %struct.nfs_removeargs* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %7, i32 0, i32 1
  %41 = call i32 @nfs4_call_sync(i32 %37, %struct.nfs_server* %38, %struct.rpc_message* %8, i32* %39, i32* %40, i32 1)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = getelementptr inbounds %struct.nfs_removeres, %struct.nfs_removeres* %7, i32 0, i32 0
  %47 = call i32 @update_changeattr(%struct.inode* %45, i32* %46)
  br label %48

48:                                               ; preds = %44, %2
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @update_changeattr(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
