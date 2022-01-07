; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_proc_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.page = type { i32 }
%struct.iattr = type { i32 }
%struct.nfs3_createdata = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.iattr*, %struct.page**, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@NFS3_MAXPATHLEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"NFS call  symlink %s\0A\00", align 1
@nfs3_procedures = common dso_local global i32* null, align 8
@NFS3PROC_SYMLINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"NFS reply symlink: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.page*, i32, %struct.iattr*)* @nfs3_proc_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_proc_symlink(%struct.inode* %0, %struct.dentry* %1, %struct.page* %2, i32 %3, %struct.iattr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr*, align 8
  %12 = alloca %struct.nfs3_createdata*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.page* %2, %struct.page** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.iattr* %4, %struct.iattr** %11, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @NFS3_MAXPATHLEN, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ENAMETOOLONG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %85

22:                                               ; preds = %5
  %23 = load %struct.dentry*, %struct.dentry** %8, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call %struct.nfs3_createdata* (...) @nfs3_alloc_createdata()
  store %struct.nfs3_createdata* %28, %struct.nfs3_createdata** %12, align 8
  %29 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %30 = icmp eq %struct.nfs3_createdata* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %81

32:                                               ; preds = %22
  %33 = load i32*, i32** @nfs3_procedures, align 8
  %34 = load i64, i64* @NFS3PROC_SYMLINK, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %37 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @NFS_FH(%struct.inode* %39)
  %41 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %42 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  store i32 %40, i32* %44, align 4
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %50 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.dentry*, %struct.dentry** %8, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %58 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  store i32 %56, i32* %60, align 8
  %61 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %62 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store %struct.page** %9, %struct.page*** %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %67 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.iattr*, %struct.iattr** %11, align 8
  %71 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %72 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store %struct.iattr* %70, %struct.iattr** %74, align 8
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = load %struct.dentry*, %struct.dentry** %8, align 8
  %77 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %78 = call i32 @nfs3_do_create(%struct.inode* %75, %struct.dentry* %76, %struct.nfs3_createdata* %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %12, align 8
  %80 = call i32 @nfs3_free_createdata(%struct.nfs3_createdata* %79)
  br label %81

81:                                               ; preds = %32, %31
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %19
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local %struct.nfs3_createdata* @nfs3_alloc_createdata(...) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs3_do_create(%struct.inode*, %struct.dentry*, %struct.nfs3_createdata*) #1

declare dso_local i32 @nfs3_free_createdata(%struct.nfs3_createdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
