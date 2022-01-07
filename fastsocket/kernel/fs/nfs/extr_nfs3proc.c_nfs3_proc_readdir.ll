; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.rpc_cred = type { i32 }
%struct.page = type { i32 }
%struct.nfs3_readdirargs = type { i32, i32, %struct.page**, i32, i64, i32 }
%struct.nfs3_readdirres = type { i32, i32*, i32* }
%struct.rpc_message = type { i32*, %struct.rpc_cred*, %struct.nfs3_readdirres*, %struct.nfs3_readdirargs* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_READDIR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NFS3PROC_READDIRPLUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"NFS call  readdir%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"NFS reply readdir%s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.rpc_cred*, i64, %struct.page**, i32, i32)* @nfs3_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_readdir(%struct.dentry* %0, %struct.rpc_cred* %1, i64 %2, %struct.page** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.rpc_cred*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nfs3_readdirargs, align 8
  %16 = alloca %struct.nfs3_readdirres, align 8
  %17 = alloca %struct.rpc_message, align 8
  %18 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.page** %3, %struct.page*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %13, align 8
  %22 = load %struct.inode*, %struct.inode** %13, align 8
  %23 = call i32* @NFS_COOKIEVERF(%struct.inode* %22)
  store i32* %23, i32** %14, align 8
  %24 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 0
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 1
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 2
  %29 = load %struct.page**, %struct.page*** %10, align 8
  store %struct.page** %29, %struct.page*** %28, align 8
  %30 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 3
  %31 = load i32*, i32** %14, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 4
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 5
  %37 = load %struct.inode*, %struct.inode** %13, align 8
  %38 = call i32 @NFS_FH(%struct.inode* %37)
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 0
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 2
  %43 = load i32*, i32** %14, align 8
  store i32* %43, i32** %42, align 8
  %44 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 0
  %45 = load i32*, i32** @nfs3_procedures, align 8
  %46 = load i64, i64* @NFS3PROC_READDIR, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %44, align 8
  %48 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 1
  %49 = load %struct.rpc_cred*, %struct.rpc_cred** %8, align 8
  store %struct.rpc_cred* %49, %struct.rpc_cred** %48, align 8
  %50 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 2
  store %struct.nfs3_readdirres* %16, %struct.nfs3_readdirres** %50, align 8
  %51 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 3
  store %struct.nfs3_readdirargs* %15, %struct.nfs3_readdirargs** %51, align 8
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %6
  %57 = load i32*, i32** @nfs3_procedures, align 8
  %58 = load i64, i64* @NFS3PROC_READDIRPLUS, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %17, i32 0, i32 0
  store i32* %59, i32** %60, align 8
  br label %61

61:                                               ; preds = %56, %6
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %67)
  %69 = call i32* (...) @nfs_alloc_fattr()
  %70 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  store i32* %69, i32** %70, align 8
  %71 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %88

75:                                               ; preds = %61
  %76 = load %struct.inode*, %struct.inode** %13, align 8
  %77 = call i32 @NFS_CLIENT(%struct.inode* %76)
  %78 = call i32 @rpc_call_sync(i32 %77, %struct.rpc_message* %17, i32 0)
  store i32 %78, i32* %18, align 4
  %79 = load %struct.inode*, %struct.inode** %13, align 8
  %80 = call i32 @nfs_invalidate_atime(%struct.inode* %79)
  %81 = load %struct.inode*, %struct.inode** %13, align 8
  %82 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @nfs_refresh_inode(%struct.inode* %81, i32* %83)
  %85 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %16, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @nfs_free_fattr(i32* %86)
  br label %88

88:                                               ; preds = %75, %74
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %92, i32 %93)
  %95 = load i32, i32* %18, align 4
  ret i32 %95
}

declare dso_local i32* @NFS_COOKIEVERF(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i8*, i32) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_invalidate_atime(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
