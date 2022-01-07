; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_got_nfs_fh_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_got_nfs_fh_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i8*, i32, %struct.TYPE_14__*, %struct.TYPE_13__, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.fhstatus }
%struct.fhstatus = type { i32, i32, %struct.TYPE_12__, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32 }

@xdr_fhstatus = common dso_local global i64 0, align 8
@NFS_FHSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"got filehandle for %s:%s\00", align 1
@XLOG_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"filehandle denied for %s:%s\00", align 1
@EACCES = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Calling wakeup on %#lx\00", align 1
@NFS_VERSION3 = common dso_local global i64 0, align 8
@xdr_am_mountres3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sockaddr_in*, %struct.sockaddr_in*, i32, i32)* @got_nfs_fh_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @got_nfs_fh_mount(i32 %0, i32 %1, %struct.sockaddr_in* %2, %struct.sockaddr_in* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.fhstatus, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %9, align 8
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call %struct.TYPE_15__* @find_nfs_fhandle_cache(i32 %15, i32 %16)
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %13, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %85

21:                                               ; preds = %6
  %22 = call i32 @memset(%struct.fhstatus* %14, i32 0, i32 48)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = ptrtoint %struct.fhstatus* %14 to i32
  %26 = load i64, i64* @xdr_fhstatus, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i8* @pickup_rpc_reply(i32 %23, i32 %24, i32 %25, i32 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds %struct.fhstatus, %struct.fhstatus* %14, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @unx_error(i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.fhstatus, %struct.fhstatus* %14, i32 0, i32 0
  %40 = load i32, i32* @NFS_FHSIZE, align 4
  %41 = call i32 @memmove(i32* %38, i32* %39, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %21
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, i64, ...) @dlog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %55)
  br label %71

57:                                               ; preds = %21
  %58 = load i32, i32* @XLOG_USER, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @plog(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i8*, i8** @EACCES, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %57, %46
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, i64, ...) @dlog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @wakeup(i64 %83)
  br label %85

85:                                               ; preds = %20, %76, %71
  ret void
}

declare dso_local %struct.TYPE_15__* @find_nfs_fhandle_cache(i32, i32) #1

declare dso_local i32 @memset(%struct.fhstatus*, i32, i32) #1

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
