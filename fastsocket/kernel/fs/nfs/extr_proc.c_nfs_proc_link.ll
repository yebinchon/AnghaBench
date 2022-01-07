; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_proc.c_nfs_proc_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.nfs_linkargs = type { i32, i32, i32, i32 }
%struct.rpc_message = type { %struct.nfs_linkargs*, i32* }

@nfs_procedures = common dso_local global i32* null, align 8
@NFSPROC_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"NFS call  link %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"NFS reply link: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.qstr*)* @nfs_proc_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_proc_link(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.nfs_linkargs, align 4
  %8 = alloca %struct.rpc_message, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.qstr* %2, %struct.qstr** %6, align 8
  %10 = getelementptr inbounds %struct.nfs_linkargs, %struct.nfs_linkargs* %7, i32 0, i32 0
  %11 = load %struct.qstr*, %struct.qstr** %6, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.nfs_linkargs, %struct.nfs_linkargs* %7, i32 0, i32 1
  %15 = load %struct.qstr*, %struct.qstr** %6, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.nfs_linkargs, %struct.nfs_linkargs* %7, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @NFS_FH(%struct.inode* %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.nfs_linkargs, %struct.nfs_linkargs* %7, i32 0, i32 3
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @NFS_FH(%struct.inode* %22)
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 0
  store %struct.nfs_linkargs* %7, %struct.nfs_linkargs** %24, align 8
  %25 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %8, i32 0, i32 1
  %26 = load i32*, i32** @nfs_procedures, align 8
  %27 = load i64, i64* @NFSPROC_LINK, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %25, align 8
  %29 = load %struct.qstr*, %struct.qstr** %6, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @NFS_CLIENT(%struct.inode* %33)
  %35 = call i32 @rpc_call_sync(i32 %34, %struct.rpc_message* %8, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @nfs_mark_for_revalidate(%struct.inode* %36)
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call i32 @nfs_mark_for_revalidate(%struct.inode* %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @rpc_call_sync(i32, %struct.rpc_message*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
