; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_got_nfs_fh_webnfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_got_nfs_fh_webnfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i8*, i32, %struct.TYPE_19__*, %struct.TYPE_16__, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32, i32, %struct.TYPE_15__, i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32 }

@xdr_diropres = common dso_local global i64 0, align 8
@NFS_FHSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"got filehandle for %s:%s\00", align 1
@XLOG_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"filehandle denied for %s:%s\00", align 1
@EACCES = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Calling wakeup on %#lx\00", align 1
@NFS_VERSION3 = common dso_local global i64 0, align 8
@xdr_am_LOOKUP3res = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sockaddr_in*, %struct.sockaddr_in*, i32, i32)* @got_nfs_fh_webnfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @got_nfs_fh_webnfs(i32 %0, i32 %1, %struct.sockaddr_in* %2, %struct.sockaddr_in* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %9, align 8
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call %struct.TYPE_21__* @find_nfs_fhandle_cache(i32 %15, i32 %16)
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %13, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %19 = icmp ne %struct.TYPE_21__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %87

21:                                               ; preds = %6
  %22 = call i32 @memset(%struct.TYPE_20__* %14, i32 0, i32 48)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = ptrtoint %struct.TYPE_20__* %14 to i32
  %26 = load i64, i64* @xdr_diropres, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @pickup_rpc_reply(i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @unx_error(i32 %32)
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* @NFS_FHSIZE, align 4
  %43 = call i32 @memmove(i32* %38, i32* %41, i32 %42)
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %21
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i64, ...) @dlog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %54, i32 %57)
  br label %73

59:                                               ; preds = %21
  %60 = load i32, i32* @XLOG_USER, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @plog(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i8*, i8** @EACCES, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %59, %48
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, i64, ...) @dlog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @wakeup(i64 %85)
  br label %87

87:                                               ; preds = %20, %78, %73
  ret void
}

declare dso_local %struct.TYPE_21__* @find_nfs_fhandle_cache(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i8* @pickup_rpc_reply(i32, i32, i32, i32) #1

declare dso_local i8* @unx_error(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @dlog(i8*, i64, ...) #1

declare dso_local i32 @plog(i32, i8*, i32, i32) #1

declare dso_local i32 @wakeup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
