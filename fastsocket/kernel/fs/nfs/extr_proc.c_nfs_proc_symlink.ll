; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_symlinkargs = type { i32, i32, %struct.iattr*, %struct.page**, i32, i32 }
%struct.rpc_message = type { %struct.nfs_symlinkargs*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_SYMLINK = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"NFS call  symlink %s\0A\00", align 1
@NFS2_MAXPATHLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply symlink: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)* @nfs_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_symlink(%struct.inode* %0, %struct.dentry* %1, %struct.page* %2, i32 %3, %struct.iattr* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iattr*, align 8
  %11 = alloca %struct.nfs_fh*, align 8
  %12 = alloca %struct.nfs_fattr*, align 8
  %13 = alloca %struct.nfs_symlinkargs, align 8
  %14 = alloca %struct.rpc_message, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.iattr* %4, %struct.iattr** %10, align 8
  %16 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %16, align 8
  %21 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 1
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 2
  %24 = load %struct.iattr*, %struct.iattr** %10, align 8
  store %struct.iattr* %24, %struct.iattr** %23, align 8
  %25 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 3
  store %struct.page** %8, %struct.page*** %25, align 8
  %26 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 4
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %26, align 8
  %31 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %13, i32 0, i32 5
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @NFS_FH(%struct.inode* %32)
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store %struct.nfs_symlinkargs* %13, %struct.nfs_symlinkargs** %34, align 8
  %35 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 1
  %36 = load i32*, i32** @nfs_procedures, align 8
  %37 = load i64, i64* @NFSPROC_SYMLINK, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %35, align 8
  %39 = load i32, i32* @ENAMETOOLONG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @NFS2_MAXPATHLEN, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %5
  br label %80

50:                                               ; preds = %5
  %51 = call %struct.nfs_fh* (...) @nfs_alloc_fhandle()
  store %struct.nfs_fh* %51, %struct.nfs_fh** %11, align 8
  %52 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %52, %struct.nfs_fattr** %12, align 8
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %15, align 4
  %55 = load %struct.nfs_fh*, %struct.nfs_fh** %11, align 8
  %56 = icmp eq %struct.nfs_fh* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load %struct.nfs_fattr*, %struct.nfs_fattr** %12, align 8
  %59 = icmp eq %struct.nfs_fattr* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %50
  br label %75

61:                                               ; preds = %57
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @NFS_CLIENT(%struct.inode* %62)
  %64 = call i32 @rpc_call_sync(i32 %63, %struct.rpc_message* %14, i32 0)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call i32 @nfs_mark_for_revalidate(%struct.inode* %65)
  %67 = load i32, i32* %15, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.dentry*, %struct.dentry** %7, align 8
  %71 = load %struct.nfs_fh*, %struct.nfs_fh** %11, align 8
  %72 = load %struct.nfs_fattr*, %struct.nfs_fattr** %12, align 8
  %73 = call i32 @nfs_instantiate(%struct.dentry* %70, %struct.nfs_fh* %71, %struct.nfs_fattr* %72)
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %69, %61
  br label %75

75:                                               ; preds = %74, %60
  %76 = load %struct.nfs_fattr*, %struct.nfs_fattr** %12, align 8
  %77 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %76)
  %78 = load %struct.nfs_fh*, %struct.nfs_fh** %11, align 8
  %79 = call i32 @nfs_free_fhandle(%struct.nfs_fh* %78)
  br label %80

80:                                               ; preds = %75, %49
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %15, align 4
  ret i32 %83
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.nfs_fh* @nfs_alloc_fhandle(...) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

declare dso_local i32 @nfs_instantiate(%struct.dentry*, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fhandle(%struct.nfs_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
