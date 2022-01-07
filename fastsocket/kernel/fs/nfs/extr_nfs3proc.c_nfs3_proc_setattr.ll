; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.nfs3_sattrargs = type { %struct.iattr*, i32 }
%struct.rpc_message = type { i32, %struct.nfs_fattr*, %struct.nfs3_sattrargs*, i32* }

@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_SETATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"NFS call  setattr\0A\00", align 1
@ATTR_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply setattr: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)* @nfs3_proc_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_setattr(%struct.dentry* %0, %struct.nfs_fattr* %1, %struct.iattr* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nfs3_sattrargs, align 8
  %9 = alloca %struct.rpc_message, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  store %struct.iattr* %2, %struct.iattr** %6, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = getelementptr inbounds %struct.nfs3_sattrargs, %struct.nfs3_sattrargs* %8, i32 0, i32 0
  %15 = load %struct.iattr*, %struct.iattr** %6, align 8
  store %struct.iattr* %15, %struct.iattr** %14, align 8
  %16 = getelementptr inbounds %struct.nfs3_sattrargs, %struct.nfs3_sattrargs* %8, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call i32 @NFS_FH(%struct.inode* %17)
  store i32 %18, i32* %16, align 8
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 1
  %21 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  store %struct.nfs_fattr* %21, %struct.nfs_fattr** %20, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 2
  store %struct.nfs3_sattrargs* %8, %struct.nfs3_sattrargs** %22, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 3
  %24 = load i32*, i32** @nfs3_procedures, align 8
  %25 = load i64, i64* @NFS3PROC_SETATTR, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %23, align 8
  %27 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.iattr*, %struct.iattr** %6, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATTR_FILE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.iattr*, %struct.iattr** %6, align 8
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nfs_file_cred(i32 %37)
  %39 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %3
  %41 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %42 = call i32 @nfs_fattr_init(%struct.nfs_fattr* %41)
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i32 @NFS_CLIENT(%struct.inode* %43)
  %45 = call i32 @rpc_call_sync(i32 %44, %struct.rpc_message* %9, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = load %struct.iattr*, %struct.iattr** %6, align 8
  %51 = call i32 @nfs_setattr_update_inode(%struct.inode* %49, %struct.iattr* %50)
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @nfs_file_cred(i32) #1

declare dso_local i32 @nfs_fattr_init(%struct.nfs_fattr*) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_setattr_update_inode(%struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
