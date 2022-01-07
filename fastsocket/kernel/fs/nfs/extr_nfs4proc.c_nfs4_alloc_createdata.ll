; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_alloc_createdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_alloc_createdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_createdata = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32*, i32*, %struct.nfs_server* }
%struct.nfs_server = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.iattr*, %struct.qstr*, %struct.nfs_server*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32* }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.iattr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_CREATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_createdata* (%struct.inode*, %struct.qstr*, %struct.iattr*, i32)* @nfs4_alloc_createdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_createdata* @nfs4_alloc_createdata(%struct.inode* %0, %struct.qstr* %1, %struct.iattr* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs4_createdata*, align 8
  %10 = alloca %struct.nfs_server*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nfs4_createdata* @kzalloc(i32 96, i32 %11)
  store %struct.nfs4_createdata* %12, %struct.nfs4_createdata** %9, align 8
  %13 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %14 = icmp ne %struct.nfs4_createdata* %13, null
  br i1 %14, label %15, label %80

15:                                               ; preds = %4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %16)
  store %struct.nfs_server* %17, %struct.nfs_server** %10, align 8
  %18 = load i32*, i32** @nfs4_procedures, align 8
  %19 = load i64, i64* @NFSPROC4_CLNT_CREATE, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %22 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32* %20, i32** %23, align 8
  %24 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %25 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %24, i32 0, i32 3
  %26 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %27 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %30 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %29, i32 0, i32 0
  %31 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %32 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %33, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @NFS_FH(%struct.inode* %34)
  %36 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %37 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 8
  %39 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %40 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %41 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store %struct.nfs_server* %39, %struct.nfs_server** %42, align 8
  %43 = load %struct.qstr*, %struct.qstr** %6, align 8
  %44 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %45 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store %struct.qstr* %43, %struct.qstr** %46, align 8
  %47 = load %struct.iattr*, %struct.iattr** %7, align 8
  %48 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %49 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store %struct.iattr* %47, %struct.iattr** %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %53 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %56 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %59 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %62 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %63 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store %struct.nfs_server* %61, %struct.nfs_server** %64, align 8
  %65 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %66 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %65, i32 0, i32 2
  %67 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %68 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32* %66, i32** %69, align 8
  %70 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %71 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %70, i32 0, i32 1
  %72 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %73 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  %75 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  %76 = getelementptr inbounds %struct.nfs4_createdata, %struct.nfs4_createdata* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @nfs_fattr_init(i32* %78)
  br label %80

80:                                               ; preds = %15, %4
  %81 = load %struct.nfs4_createdata*, %struct.nfs4_createdata** %9, align 8
  ret %struct.nfs4_createdata* %81
}

declare dso_local %struct.nfs4_createdata* @kzalloc(i32, i32) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @NFS_FH(%struct.inode*) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
