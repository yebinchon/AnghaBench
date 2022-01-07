; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_fhandle = type { i32 }
%struct.nfsd3_attrstat = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"nfsd: GETATTR(3)  %s\0A\00", align 1
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFSD_MAY_BYPASS_GSS_ON_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd_fhandle*, %struct.nfsd3_attrstat*)* @nfsd3_proc_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_getattr(%struct.svc_rqst* %0, %struct.nfsd_fhandle* %1, %struct.nfsd3_attrstat* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd_fhandle*, align 8
  %7 = alloca %struct.nfsd3_attrstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd_fhandle* %1, %struct.nfsd_fhandle** %6, align 8
  store %struct.nfsd3_attrstat* %2, %struct.nfsd3_attrstat** %7, align 8
  %10 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %10, i32 0, i32 0
  %12 = call i32 @SVCFH_fmt(i32* %11)
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %7, align 8
  %15 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %14, i32 0, i32 1
  %16 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %16, i32 0, i32 0
  %18 = call i32 @fh_copy(%struct.TYPE_7__* %15, i32* %17)
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %20 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %20, i32 0, i32 1
  %22 = load i32, i32* @NFSD_MAY_NOP, align 4
  %23 = load i32, i32* @NFSD_MAY_BYPASS_GSS_ON_ROOT, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @fh_verify(%struct.svc_rqst* %19, %struct.TYPE_7__* %21, i32 0, i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @RETURN_STATUS(i64 %29)
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %7, align 8
  %33 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nfsd3_attrstat*, %struct.nfsd3_attrstat** %7, align 8
  %44 = getelementptr inbounds %struct.nfsd3_attrstat, %struct.nfsd3_attrstat* %43, i32 0, i32 0
  %45 = call i32 @vfs_getattr(i32 %38, i32 %42, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @nfserrno(i32 %46)
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @RETURN_STATUS(i64 %48)
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

declare dso_local i32 @vfs_getattr(i32, i32, i32*) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
