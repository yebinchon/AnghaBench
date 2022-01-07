; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_accessargs = type { i32, i32 }
%struct.nfsd3_accessres = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nfsd: ACCESS(3)   %s 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_accessargs*, %struct.nfsd3_accessres*)* @nfsd3_proc_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_access(%struct.svc_rqst* %0, %struct.nfsd3_accessargs* %1, %struct.nfsd3_accessres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_accessargs*, align 8
  %7 = alloca %struct.nfsd3_accessres*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_accessargs* %1, %struct.nfsd3_accessargs** %6, align 8
  store %struct.nfsd3_accessres* %2, %struct.nfsd3_accessres** %7, align 8
  %9 = load %struct.nfsd3_accessargs*, %struct.nfsd3_accessargs** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd3_accessargs, %struct.nfsd3_accessargs* %9, i32 0, i32 1
  %11 = call i32 @SVCFH_fmt(i32* %10)
  %12 = load %struct.nfsd3_accessargs*, %struct.nfsd3_accessargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_accessargs, %struct.nfsd3_accessargs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.nfsd3_accessres*, %struct.nfsd3_accessres** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd3_accessres, %struct.nfsd3_accessres* %16, i32 0, i32 1
  %18 = load %struct.nfsd3_accessargs*, %struct.nfsd3_accessargs** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd3_accessargs, %struct.nfsd3_accessargs* %18, i32 0, i32 1
  %20 = call i32 @fh_copy(i32* %17, i32* %19)
  %21 = load %struct.nfsd3_accessargs*, %struct.nfsd3_accessargs** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd3_accessargs, %struct.nfsd3_accessargs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfsd3_accessres*, %struct.nfsd3_accessres** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd3_accessres, %struct.nfsd3_accessres* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %27 = load %struct.nfsd3_accessres*, %struct.nfsd3_accessres** %7, align 8
  %28 = getelementptr inbounds %struct.nfsd3_accessres, %struct.nfsd3_accessres* %27, i32 0, i32 1
  %29 = load %struct.nfsd3_accessres*, %struct.nfsd3_accessres** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd3_accessres, %struct.nfsd3_accessres* %29, i32 0, i32 0
  %31 = call i32 @nfsd_access(%struct.svc_rqst* %26, i32* %28, i32* %30, i32* null)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @RETURN_STATUS(i32 %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_access(%struct.svc_rqst*, i32*, i32*, i32*) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
