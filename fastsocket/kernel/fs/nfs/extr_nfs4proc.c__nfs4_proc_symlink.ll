; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs4_createdata = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.page** }
%struct.TYPE_5__ = type { i32* }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@NFS4_MAXPATHLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NF4LNK = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SYMLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)* @_nfs4_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_proc_symlink(%struct.inode* %0, %struct.dentry* %1, %struct.page* %2, i32 %3, %struct.iattr* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iattr*, align 8
  %11 = alloca %struct.nfs4_createdata*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.iattr* %4, %struct.iattr** %10, align 8
  %13 = load i32, i32* @ENAMETOOLONG, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @NFS4_MAXPATHLEN, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %55

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.iattr*, %struct.iattr** %10, align 8
  %26 = load i32, i32* @NF4LNK, align 4
  %27 = call %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode* %22, i32* %24, %struct.iattr* %25, i32 %26)
  store %struct.nfs4_createdata* %27, %struct.nfs4_createdata** %11, align 8
  %28 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %29 = icmp eq %struct.nfs4_createdata* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %55

31:                                               ; preds = %19
  %32 = load i32*, i32** @nfs4_procedures, align 8
  %33 = load i64, i64* @NFSPROC4_CLNT_SYMLINK, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %36 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32* %34, i32** %37, align 8
  %38 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %39 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store %struct.page** %8, %struct.page*** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %45 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load %struct.dentry*, %struct.dentry** %7, align 8
  %51 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %52 = call i32 @nfs4_do_create(%struct.inode* %49, %struct.dentry* %50, %struct.nfs4_createdata* %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %11, align 8
  %54 = call i32 @nfs4_free_createdata(%struct.nfs4_createdata* %53)
  br label %55

55:                                               ; preds = %31, %30, %18
  %56 = load i32, i32* %12, align 4
  ret i32 %56
}

declare dso_local %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode*, i32*, %struct.iattr*, i32) #1

declare dso_local i32 @nfs4_do_create(%struct.inode*, %struct.dentry*, %struct.nfs4_createdata*) #1

declare dso_local i32 @nfs4_free_createdata(%struct.nfs4_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
