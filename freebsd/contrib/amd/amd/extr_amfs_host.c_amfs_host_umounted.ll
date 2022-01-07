; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_amfs_host_umounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_amfs_host_umounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i8*, i64, %struct.sockaddr_in* }
%struct.sockaddr_in = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.timeval = type { i32, i64 }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@MFF_WEBNFS = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"amfs_host_umounted: cannot support WebNFS\00", align 1
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"amfs_host_umounted: NFS version %d\00", align 1
@MOUNTVERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"get_mount_client failed for %s\00", align 1
@nfs_auth = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Unmounting all from %s\00", align 1
@MOUNTPROC_UMNTALL = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@RPC_SYSTEMERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"unmount all from %s rpc failed: %s\00", align 1
@AM_MOUNTVERS3 = common dso_local global i32 0, align 4
@NFS_VERSION3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @amfs_host_umounted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amfs_host_umounted(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %11 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %16, %1
  br label %119

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MFF_WEBNFS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @XLOG_ERROR, align 4
  %36 = call i32 (i32, i8*, ...) @plog(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %119

37:                                               ; preds = %27
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load %struct.sockaddr_in*, %struct.sockaddr_in** %46, align 8
  %48 = bitcast %struct.sockaddr_in* %6 to i8*
  %49 = bitcast %struct.sockaddr_in* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = load i32, i32* @XLOG_INFO, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32, i8*, ...) @plog(i32 %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @MOUNTVERS, align 4
  store i32 %58, i32* %9, align 4
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 10, i32* %59, align 8
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.TYPE_10__* @get_mount_client(i8* %61, %struct.sockaddr_in* %6, %struct.timeval* %8, i32* %7, i32 %62)
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %4, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = icmp eq %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %37
  %67 = load i32, i32* @XLOG_ERROR, align 4
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 (i32, i8*, ...) @plog(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  br label %106

70:                                               ; preds = %37
  %71 = load i64, i64* @nfs_auth, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = call i64 (...) @make_nfs_auth()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %106

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i64, i64* @nfs_auth, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @dlog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = load i32, i32* @MOUNTPROC_UMNTALL, align 4
  %86 = load i64, i64* @xdr_void, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i64, i64* @xdr_void, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @clnt_call(%struct.TYPE_10__* %84, i32 %85, i32 %87, i32 0, i32 %89, i32 0, %struct.timeval* byval(%struct.timeval) align 8 %8)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @RPC_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %78
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @RPC_SYSTEMERROR, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = call i8* @clnt_sperrno(i32 %99)
  store i8* %100, i8** %10, align 8
  %101 = load i32, i32* @XLOG_ERROR, align 4
  %102 = load i8*, i8** %3, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 (i32, i8*, ...) @plog(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %102, i8* %103)
  br label %106

105:                                              ; preds = %94, %78
  br label %106

106:                                              ; preds = %105, %98, %76, %66
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @RPC_ANYSOCK, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @amu_close(i32 %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %118 = call i32 @clnt_destroy(%struct.TYPE_10__* %117)
  br label %119

119:                                              ; preds = %26, %34, %116, %113
  ret void
}

declare dso_local i32 @plog(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_10__* @get_mount_client(i8*, %struct.sockaddr_in*, %struct.timeval*, i32*, i32) #1

declare dso_local i64 @make_nfs_auth(...) #1

declare dso_local i32 @dlog(i8*, i8*) #1

declare dso_local i32 @clnt_call(%struct.TYPE_10__*, i32, i32, i32, i32, i32, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i8* @clnt_sperrno(i32) #1

declare dso_local i32 @amu_close(i32) #1

declare dso_local i32 @clnt_destroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
