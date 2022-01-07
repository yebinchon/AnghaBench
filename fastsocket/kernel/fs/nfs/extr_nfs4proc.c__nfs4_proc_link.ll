; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_server = type { i32, i32 }
%struct.nfs4_link_arg = type { i32, i32, %struct.qstr*, i32, i32 }
%struct.nfs4_link_res = type { i32*, i32, i32, %struct.nfs_server* }
%struct.rpc_message = type { %struct.nfs4_link_res*, %struct.nfs4_link_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_LINK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.qstr*)* @_nfs4_proc_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_link(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.nfs4_link_arg, align 8
  %9 = alloca %struct.nfs4_link_res, align 8
  %10 = alloca %struct.rpc_message, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.qstr* %2, %struct.qstr** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %12)
  store %struct.nfs_server* %13, %struct.nfs_server** %7, align 8
  %14 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %8, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %8, i32 0, i32 1
  %16 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %8, i32 0, i32 2
  %20 = load %struct.qstr*, %struct.qstr** %6, align 8
  store %struct.qstr* %20, %struct.qstr** %19, align 8
  %21 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %8, i32 0, i32 3
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call i32 @NFS_FH(%struct.inode* %22)
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %8, i32 0, i32 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @NFS_FH(%struct.inode* %25)
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 3
  %31 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  store %struct.nfs_server* %31, %struct.nfs_server** %30, align 8
  %32 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store %struct.nfs4_link_res* %9, %struct.nfs4_link_res** %32, align 8
  %33 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.nfs4_link_arg* %8, %struct.nfs4_link_arg** %33, align 8
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  %35 = load i32*, i32** @nfs4_procedures, align 8
  %36 = load i64, i64* @NFSPROC4_CLNT_LINK, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %34, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  %40 = call i32* (...) @nfs_alloc_fattr()
  %41 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 0
  store i32* %40, i32** %41, align 8
  %42 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  br label %65

46:                                               ; preds = %3
  %47 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %48 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %51 = getelementptr inbounds %struct.nfs4_link_arg, %struct.nfs4_link_arg* %8, i32 0, i32 0
  %52 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 2
  %53 = call i32 @nfs4_call_sync(i32 %49, %struct.nfs_server* %50, %struct.rpc_message* %10, i32* %51, i32* %52, i32 1)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 1
  %59 = call i32 @update_changeattr(%struct.inode* %57, i32* %58)
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @nfs_post_op_update_inode(%struct.inode* %60, i32* %62)
  br label %64

64:                                               ; preds = %56, %46
  br label %65

65:                                               ; preds = %64, %45
  %66 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %9, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @nfs_free_fattr(i32* %67)
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #1

declare dso_local i32 @update_changeattr(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
