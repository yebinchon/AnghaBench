; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_pathconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_fhandle = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nfsd3_pathconfres = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"nfsd: PATHCONF(3) %s\0A\00", align 1
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@EXT2_LINK_MAX = common dso_local global i32 0, align 4
@EXT2_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd_fhandle*, %struct.nfsd3_pathconfres*)* @nfsd3_proc_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_pathconf(%struct.svc_rqst* %0, %struct.nfsd_fhandle* %1, %struct.nfsd3_pathconfres* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd_fhandle*, align 8
  %7 = alloca %struct.nfsd3_pathconfres*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.super_block*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd_fhandle* %1, %struct.nfsd_fhandle** %6, align 8
  store %struct.nfsd3_pathconfres* %2, %struct.nfsd3_pathconfres** %7, align 8
  %10 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %10, i32 0, i32 0
  %12 = call i32 @SVCFH_fmt(%struct.TYPE_8__* %11)
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %15 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %14, i32 0, i32 0
  store i32 255, i32* %15, align 8
  %16 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %16, i32 0, i32 1
  store i32 255, i32* %17, align 4
  %18 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %19 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %20, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %23 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %22, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %24, i32 0, i32 4
  store i32 1, i32* %25, align 8
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %27 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %27, i32 0, i32 0
  %29 = load i32, i32* @NFSD_MAY_NOP, align 4
  %30 = call i64 @fh_verify(%struct.svc_rqst* %26, %struct.TYPE_8__* %28, i32 0, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %3
  %34 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.super_block*, %struct.super_block** %40, align 8
  store %struct.super_block* %41, %struct.super_block** %9, align 8
  %42 = load %struct.super_block*, %struct.super_block** %9, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %57 [
    i32 129, label %45
    i32 128, label %52
  ]

45:                                               ; preds = %33
  %46 = load i32, i32* @EXT2_LINK_MAX, align 4
  %47 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @EXT2_NAME_LEN, align 4
  %50 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %57

52:                                               ; preds = %33
  %53 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %54 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  %55 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %7, align 8
  %56 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %55, i32 0, i32 4
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %33, %52, %45
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %6, align 8
  %60 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %59, i32 0, i32 0
  %61 = call i32 @fh_put(%struct.TYPE_8__* %60)
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @RETURN_STATUS(i64 %62)
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(%struct.TYPE_8__*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @fh_put(%struct.TYPE_8__*) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
