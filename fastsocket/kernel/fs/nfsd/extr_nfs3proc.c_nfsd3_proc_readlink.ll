; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_readlinkargs = type { i32, i32 }
%struct.nfsd3_readlinkres = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"nfsd: READLINK(3) %s\0A\00", align 1
@NFS3_MAXPATHLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_readlinkargs*, %struct.nfsd3_readlinkres*)* @nfsd3_proc_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_readlink(%struct.svc_rqst* %0, %struct.nfsd3_readlinkargs* %1, %struct.nfsd3_readlinkres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_readlinkargs*, align 8
  %7 = alloca %struct.nfsd3_readlinkres*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_readlinkargs* %1, %struct.nfsd3_readlinkargs** %6, align 8
  store %struct.nfsd3_readlinkres* %2, %struct.nfsd3_readlinkres** %7, align 8
  %9 = load %struct.nfsd3_readlinkargs*, %struct.nfsd3_readlinkargs** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd3_readlinkargs, %struct.nfsd3_readlinkargs* %9, i32 0, i32 1
  %11 = call i32 @SVCFH_fmt(i32* %10)
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %13, i32 0, i32 1
  %15 = load %struct.nfsd3_readlinkargs*, %struct.nfsd3_readlinkargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd3_readlinkargs, %struct.nfsd3_readlinkargs* %15, i32 0, i32 1
  %17 = call i32 @fh_copy(i32* %14, i32* %16)
  %18 = load i32, i32* @NFS3_MAXPATHLEN, align 4
  %19 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %22 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %23 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %22, i32 0, i32 1
  %24 = load %struct.nfsd3_readlinkargs*, %struct.nfsd3_readlinkargs** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd3_readlinkargs, %struct.nfsd3_readlinkargs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %27, i32 0, i32 0
  %29 = call i32 @nfsd_readlink(%struct.svc_rqst* %21, i32* %23, i32 %26, i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @RETURN_STATUS(i32 %30)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_readlink(%struct.svc_rqst*, i32*, i32, i32*) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
