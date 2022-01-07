; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_stubs.c_nfsproc_getattr_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/hlfsd/extr_stubs.c_nfsproc_getattr_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i8*, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.svc_req = type { i32 }

@nfsproc_getattr_2_svc.res = internal global %struct.TYPE_11__ zeroinitializer, align 8
@INVALIDID = common dso_local global i32 0, align 4
@started = common dso_local global i32 0, align 4
@startup = common dso_local global i8* null, align 8
@rootfattr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@slinkfattr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@un_fattr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@nfsxprt = common dso_local global i32 0, align 4
@NFSERR_STALE = common dso_local global i8* null, align 8
@root = common dso_local global i32 0, align 4
@NFS_OK = common dso_local global i8* null, align 8
@slink = common dso_local global i32 0, align 4
@hlfs_gid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"nfs_getattr: successful search for uid=%ld, gid=%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @nfsproc_getattr_2_svc(%struct.TYPE_12__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %8 = load i32, i32* @INVALIDID, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @INVALIDID, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* @started, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @started, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @started, align 4
  %17 = load i8*, i8** @startup, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rootfattr, i32 0, i32 3), align 8
  %18 = load i8*, i8** @startup, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @rootfattr, i32 0, i32 2), align 8
  %19 = load i8*, i8** @startup, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @slinkfattr, i32 0, i32 3), align 8
  %20 = load i8*, i8** @startup, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @slinkfattr, i32 0, i32 2), align 8
  %21 = load i8*, i8** @startup, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @un_fattr, i32 0, i32 3), align 8
  %22 = load i8*, i8** @startup, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @un_fattr, i32 0, i32 2), align 8
  br label %23

23:                                               ; preds = %14, %2
  %24 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %25 = load i32, i32* @nfsxprt, align 4
  %26 = call i64 @getcreds(%struct.svc_req* %24, i64* %6, i64* %7, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** @NFSERR_STALE, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 0), align 8
  store %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, %struct.TYPE_11__** %3, align 8
  br label %75

30:                                               ; preds = %23
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call i64 @eq_fh(%struct.TYPE_12__* %31, i32* @root)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i8*, i8** @NFS_OK, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 0), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 1, i32 0) to i8*), i8* align 8 bitcast (%struct.TYPE_13__* @rootfattr to i8*), i64 32, i1 false)
  br label %74

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = call i64 @eq_fh(%struct.TYPE_12__* %37, i32* @slink)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @slinkfattr, i32 0, i32 0), align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 @clocktime(i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @slinkfattr, i32 0, i32 2))
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @slinkfattr, i32 0, i32 0), align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i8*, i8** @NFS_OK, align 8
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 0), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 1, i32 0) to i8*), i8* align 8 bitcast (%struct.TYPE_13__* @slinkfattr to i8*), i64 32, i1 false)
  br label %73

49:                                               ; preds = %36
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @hlfs_gid, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** @NFSERR_STALE, align 8
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 0), align 8
  br label %72

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i64* %6, i32 %58, i32 8)
  %60 = load i64, i64* %6, align 8
  %61 = call i32* @plt_search(i64 %60)
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i8*, i8** @NFS_OK, align 8
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 0), align 8
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @un_fattr, i32 0, i32 1), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 1, i32 0) to i8*), i8* align 8 bitcast (%struct.TYPE_13__* @un_fattr to i8*), i64 32, i1 false)
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @dlog(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %67)
  br label %71

69:                                               ; preds = %55
  %70 = load i8*, i8** @NFSERR_STALE, align 8
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, i32 0, i32 0), align 8
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %53
  br label %73

73:                                               ; preds = %72, %47
  br label %74

74:                                               ; preds = %73, %34
  store %struct.TYPE_11__* @nfsproc_getattr_2_svc.res, %struct.TYPE_11__** %3, align 8
  br label %75

75:                                               ; preds = %74, %28
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %76
}

declare dso_local i64 @getcreds(%struct.svc_req*, i64*, i64*, i32) #1

declare dso_local i64 @eq_fh(%struct.TYPE_12__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clocktime(i8**) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32* @plt_search(i64) #1

declare dso_local i32 @dlog(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
