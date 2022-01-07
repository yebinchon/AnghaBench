; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_commitargs = type { i64, i32, i32 }
%struct.nfsd3_commitres = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"nfsd: COMMIT(3)   %s %u@%Lu\0A\00", align 1
@NFS_OFFSET_MAX = common dso_local global i64 0, align 8
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_commitargs*, %struct.nfsd3_commitres*)* @nfsd3_proc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_commit(%struct.svc_rqst* %0, %struct.nfsd3_commitargs* %1, %struct.nfsd3_commitres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_commitargs*, align 8
  %7 = alloca %struct.nfsd3_commitres*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_commitargs* %1, %struct.nfsd3_commitargs** %6, align 8
  store %struct.nfsd3_commitres* %2, %struct.nfsd3_commitres** %7, align 8
  %9 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %9, i32 0, i32 2
  %11 = call i32 @SVCFH_fmt(i32* %10)
  %12 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i64 %17)
  %19 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NFS_OFFSET_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @nfserr_inval, align 4
  %26 = call i32 @RETURN_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd3_commitres, %struct.nfsd3_commitres* %28, i32 0, i32 0
  %30 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %30, i32 0, i32 2
  %32 = call i32 @fh_copy(i32* %29, i32* %31)
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %34 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %7, align 8
  %35 = getelementptr inbounds %struct.nfsd3_commitres, %struct.nfsd3_commitres* %34, i32 0, i32 0
  %36 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %37 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %6, align 8
  %40 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nfsd_commit(%struct.svc_rqst* %33, i32* %35, i64 %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @RETURN_STATUS(i32 %43)
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @dprintk(i8*, i32, i32, i64) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_commit(%struct.svc_rqst*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
