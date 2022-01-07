; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_diropargs = type { i32, i32, i32 }
%struct.nfsd_diropres = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"nfsd: LOOKUP   %s %.*s\0A\00", align 1
@NFS_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd_diropargs*, %struct.nfsd_diropres*)* @nfsd_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_lookup(%struct.svc_rqst* %0, %struct.nfsd_diropargs* %1, %struct.nfsd_diropres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd_diropargs*, align 8
  %6 = alloca %struct.nfsd_diropres*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd_diropargs* %1, %struct.nfsd_diropargs** %5, align 8
  store %struct.nfsd_diropres* %2, %struct.nfsd_diropres** %6, align 8
  %8 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %8, i32 0, i32 0
  %10 = call i32 @SVCFH_fmt(i32* %9)
  %11 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %5, align 8
  %15 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16)
  %18 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd_diropres, %struct.nfsd_diropres* %18, i32 0, i32 0
  %20 = load i32, i32* @NFS_FHSIZE, align 4
  %21 = call i32 @fh_init(i32* %19, i32 %20)
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %23 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %5, align 8
  %24 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %23, i32 0, i32 0
  %25 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %6, align 8
  %32 = getelementptr inbounds %struct.nfsd_diropres, %struct.nfsd_diropres* %31, i32 0, i32 0
  %33 = call i32 @nfsd_lookup(%struct.svc_rqst* %22, i32* %24, i32 %27, i32 %30, i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.nfsd_diropargs*, %struct.nfsd_diropargs** %5, align 8
  %35 = getelementptr inbounds %struct.nfsd_diropargs, %struct.nfsd_diropargs* %34, i32 0, i32 0
  %36 = call i32 @fh_put(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %6, align 8
  %39 = call i32 @nfsd_return_dirop(i32 %37, %struct.nfsd_diropres* %38)
  ret i32 %39
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_init(i32*, i32) #1

declare dso_local i32 @nfsd_lookup(%struct.svc_rqst*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fh_put(i32*) #1

declare dso_local i32 @nfsd_return_dirop(i32, %struct.nfsd_diropres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
