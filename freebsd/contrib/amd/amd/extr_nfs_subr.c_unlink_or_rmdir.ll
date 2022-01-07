; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_unlink_or_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_unlink_or_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* (%struct.TYPE_19__*, i32, i32*, i32)* }
%struct.TYPE_14__ = type { i64 }

@unlink_or_rmdir.res = internal global i32 0, align 4
@VLOOK_DELETE = common dso_local global i32 0, align 4
@amd_stats = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@NFDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@D_TRACE = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\09remove(%s, %s)\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NFS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, %struct.svc_req*, i32)* @unlink_or_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @unlink_or_rmdir(%struct.TYPE_18__* %0, %struct.svc_req* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.svc_req* %1, %struct.svc_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = load i32, i32* @VLOOK_DELETE, align 4
  %13 = call %struct.TYPE_19__* @fh_to_mp3(i32* %11, i32* %8, i32 %12)
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %9, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %15 = icmp eq %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @amd_stats, i32 0, i32 0), align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @amd_stats, i32 0, i32 0), align 4
  store i32* null, i32** %4, align 8
  br label %85

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @nfs_error(i32 %23)
  store i32 %24, i32* @unlink_or_rmdir.res, align 4
  br label %84

25:                                               ; preds = %3
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NFDIR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOTDIR, align 4
  %34 = call i32 @nfs_error(i32 %33)
  store i32 %34, i32* @unlink_or_rmdir.res, align 4
  br label %84

35:                                               ; preds = %25
  %36 = load i32, i32* @D_TRACE, align 4
  %37 = call i64 @amuDebug(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* @XLOG_DEBUG, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @plog(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %35
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_19__* (%struct.TYPE_19__*, i32, i32*, i32)*, %struct.TYPE_19__* (%struct.TYPE_19__*, i32, i32*, i32)** %56, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VLOOK_DELETE, align 4
  %63 = call %struct.TYPE_19__* %57(%struct.TYPE_19__* %58, i32 %61, i32* %8, i32 %62)
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %9, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %65 = icmp eq %struct.TYPE_19__* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %48
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %70
  br label %76

76:                                               ; preds = %75, %69
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @nfs_error(i32 %77)
  store i32 %78, i32* @unlink_or_rmdir.res, align 4
  br label %83

79:                                               ; preds = %48
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %81 = call i32 @forcibly_timeout_mp(%struct.TYPE_19__* %80)
  %82 = load i32, i32* @NFS_OK, align 4
  store i32 %82, i32* @unlink_or_rmdir.res, align 4
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83, %32, %22
  store i32* @unlink_or_rmdir.res, i32** %4, align 8
  br label %85

85:                                               ; preds = %84, %19
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

declare dso_local %struct.TYPE_19__* @fh_to_mp3(i32*, i32*, i32) #1

declare dso_local i32 @nfs_error(i32) #1

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @plog(i32, i8*, i32, i32) #1

declare dso_local i32 @forcibly_timeout_mp(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
