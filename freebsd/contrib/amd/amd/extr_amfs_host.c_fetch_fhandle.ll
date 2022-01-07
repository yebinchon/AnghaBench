; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_fetch_fhandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_fetch_fhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.timeval = type { i32, i64 }
%struct.fhstatus = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Fetching fhandle for %s\00", align 1
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"fetch_fhandle: NFS version %d\00", align 1
@MOUNTPROC_MNT = common dso_local global i32 0, align 4
@xdr_dirpath = common dso_local global i64 0, align 8
@xdr_fhstatus = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"mountd rpc failed: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"fhandle fetch for mount version 1 failed: %m\00", align 1
@NFS_FHSIZE = common dso_local global i32 0, align 4
@NFS_VERSION3 = common dso_local global i64 0, align 8
@NFS_VERSION4 = common dso_local global i64 0, align 8
@xdr_am_mountres3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_11__*, i64)* @fetch_fhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_fhandle(i32* %0, i8* %1, %struct.TYPE_11__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fhstatus, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 20, i32* %13, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @XLOG_INFO, align 4
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @plog(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @MOUNTPROC_MNT, align 4
  %23 = load i64, i64* @xdr_dirpath, align 8
  %24 = trunc i64 %23 to i32
  %25 = ptrtoint i8** %7 to i32
  %26 = load i64, i64* @xdr_fhstatus, align 8
  %27 = trunc i64 %26 to i32
  %28 = ptrtoint %struct.fhstatus* %12 to i32
  %29 = call i32 @clnt_call(i32* %21, i32 %22, i32 %24, i32 %25, i32 %27, i32 %28, %struct.timeval* byval(%struct.timeval) align 8 %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @RPC_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load i32, i32* @XLOG_ERROR, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @clnt_sperrno(i32 %35)
  %37 = call i32 @plog(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EIO, align 4
  store i32 %38, i32* %5, align 4
  br label %54

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.fhstatus, %struct.fhstatus* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.fhstatus, %struct.fhstatus* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* @errno, align 4
  %46 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @errno, align 4
  store i32 %47, i32* %5, align 4
  br label %54

48:                                               ; preds = %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.fhstatus, %struct.fhstatus* %12, i32 0, i32 1
  %52 = load i32, i32* @NFS_FHSIZE, align 4
  %53 = call i32 @memmove(i32* %50, i32* %51, i32 %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %43, %33
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @dlog(i8*, ...) #1

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, i32, i32, i32, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_sperrno(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
