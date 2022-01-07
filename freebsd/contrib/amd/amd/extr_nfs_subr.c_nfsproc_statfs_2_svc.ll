; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_nfsproc_statfs_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_nfsproc_statfs_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, %struct.TYPE_19__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_23__ = type { i64 }

@nfsproc_statfs_2_svc.res = internal global %struct.TYPE_21__ zeroinitializer, align 8
@D_TRACE = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"statfs:\00", align 1
@VLOOK_CREATE = common dso_local global i32 0, align 4
@amd_stats = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"\09stat_fs(%s)\00", align 1
@gopt = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CFM_SHOW_STATFS_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"browsable\00", align 1
@NFS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @nfsproc_statfs_2_svc(i32* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %10 = load i32, i32* @D_TRACE, align 4
  %11 = call i64 @amuDebug(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @XLOG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @plog(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @VLOOK_CREATE, align 4
  %19 = call %struct.TYPE_24__* @fh_to_mp3(i32* %17, i32* %7, i32 %18)
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = icmp eq %struct.TYPE_24__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @amd_stats, i32 0, i32 0), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @amd_stats, i32 0, i32 0), align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %102

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @nfs_error(i32 %29)
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @nfsproc_statfs_2_svc.res, i32 0, i32 0), align 8
  br label %101

31:                                               ; preds = %16
  %32 = load i32, i32* @D_TRACE, align 4
  %33 = call i64 @amuDebug(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @XLOG_DEBUG, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @plog(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %31
  store %struct.TYPE_22__* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @nfsproc_statfs_2_svc.res, i32 0, i32 1, i32 0), %struct.TYPE_22__** %9, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  store i32 1024, i32* %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  store i32 1024, i32* %45, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gopt, i32 0, i32 0), align 4
  %47 = load i32, i32* @CFM_SHOW_STATFS_ENTRIES, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %41
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = icmp ne %struct.TYPE_18__* %55, null
  br i1 %56, label %57, label %87

57:                                               ; preds = %50
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %57
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = call i64 @amu_hasmntopt(%struct.TYPE_23__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %66
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 2
  %85 = call i32 @count_map_entries(%struct.TYPE_24__* %78, i64* %80, i64* %82, i64* %84)
  br label %86

86:                                               ; preds = %77, %66
  br label %94

87:                                               ; preds = %57, %50, %41
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %87, %86
  %95 = load i32, i32* @NFS_OK, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @nfsproc_statfs_2_svc.res, i32 0, i32 0), align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %28
  store %struct.TYPE_21__* @nfsproc_statfs_2_svc.res, %struct.TYPE_21__** %3, align 8
  br label %102

102:                                              ; preds = %101, %25
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %103
}

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @plog(i32, i8*, ...) #1

declare dso_local %struct.TYPE_24__* @fh_to_mp3(i32*, i32*, i32) #1

declare dso_local i32 @nfs_error(i32) #1

declare dso_local i64 @amu_hasmntopt(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @count_map_entries(%struct.TYPE_24__*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
