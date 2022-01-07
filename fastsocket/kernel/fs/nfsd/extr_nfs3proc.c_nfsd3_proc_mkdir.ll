; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_createargs = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd3_diropres = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nfsd: MKDIR(3)    %s %.*s\0A\00", align 1
@ATTR_SIZE = common dso_local global i32 0, align 4
@NFS3_FHSIZE = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_createargs*, %struct.nfsd3_diropres*)* @nfsd3_proc_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_mkdir(%struct.svc_rqst* %0, %struct.nfsd3_createargs* %1, %struct.nfsd3_diropres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_createargs*, align 8
  %7 = alloca %struct.nfsd3_diropres*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_createargs* %1, %struct.nfsd3_createargs** %6, align 8
  store %struct.nfsd3_diropres* %2, %struct.nfsd3_diropres** %7, align 8
  %9 = load %struct.nfsd3_createargs*, %struct.nfsd3_createargs** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd3_createargs, %struct.nfsd3_createargs* %9, i32 0, i32 3
  %11 = call i32 @SVCFH_fmt(i32* %10)
  %12 = load %struct.nfsd3_createargs*, %struct.nfsd3_createargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_createargs, %struct.nfsd3_createargs* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfsd3_createargs*, %struct.nfsd3_createargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd3_createargs, %struct.nfsd3_createargs* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load i32, i32* @ATTR_SIZE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.nfsd3_createargs*, %struct.nfsd3_createargs** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd3_createargs, %struct.nfsd3_createargs* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %26, i32 0, i32 0
  %28 = load %struct.nfsd3_createargs*, %struct.nfsd3_createargs** %6, align 8
  %29 = getelementptr inbounds %struct.nfsd3_createargs, %struct.nfsd3_createargs* %28, i32 0, i32 3
  %30 = call i32 @fh_copy(i32* %27, i32* %29)
  %31 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %32 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %31, i32 0, i32 1
  %33 = load i32, i32* @NFS3_FHSIZE, align 4
  %34 = call i32 @fh_init(i32* %32, i32 %33)
  %35 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %36 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %36, i32 0, i32 0
  %38 = load %struct.nfsd3_createargs*, %struct.nfsd3_createargs** %6, align 8
  %39 = getelementptr inbounds %struct.nfsd3_createargs, %struct.nfsd3_createargs* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfsd3_createargs*, %struct.nfsd3_createargs** %6, align 8
  %42 = getelementptr inbounds %struct.nfsd3_createargs, %struct.nfsd3_createargs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfsd3_createargs*, %struct.nfsd3_createargs** %6, align 8
  %45 = getelementptr inbounds %struct.nfsd3_createargs, %struct.nfsd3_createargs* %44, i32 0, i32 0
  %46 = load i32, i32* @S_IFDIR, align 4
  %47 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %47, i32 0, i32 1
  %49 = call i32 @nfsd_create(%struct.svc_rqst* %35, i32* %37, i32 %40, i32 %43, %struct.TYPE_2__* %45, i32 %46, i32 0, i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %50, i32 0, i32 0
  %52 = call i32 @fh_unlock(i32* %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @RETURN_STATUS(i32 %53)
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @fh_init(i32*, i32) #1

declare dso_local i32 @nfsd_create(%struct.svc_rqst*, i32*, i32, i32, %struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @fh_unlock(i32*) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
