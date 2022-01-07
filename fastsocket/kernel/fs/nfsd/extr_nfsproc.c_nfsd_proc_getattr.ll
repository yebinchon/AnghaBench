; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_fhandle = type { i32 }
%struct.nfsd_attrstat = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"nfsd: GETATTR  %s\0A\00", align 1
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFSD_MAY_BYPASS_GSS_ON_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd_fhandle*, %struct.nfsd_attrstat*)* @nfsd_proc_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_getattr(%struct.svc_rqst* %0, %struct.nfsd_fhandle* %1, %struct.nfsd_attrstat* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd_fhandle*, align 8
  %6 = alloca %struct.nfsd_attrstat*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd_fhandle* %1, %struct.nfsd_fhandle** %5, align 8
  store %struct.nfsd_attrstat* %2, %struct.nfsd_attrstat** %6, align 8
  %8 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %8, i32 0, i32 0
  %10 = call i32 @SVCFH_fmt(i32* %9)
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %12, i32 0, i32 0
  %14 = load %struct.nfsd_fhandle*, %struct.nfsd_fhandle** %5, align 8
  %15 = getelementptr inbounds %struct.nfsd_fhandle, %struct.nfsd_fhandle* %14, i32 0, i32 0
  %16 = call i32 @fh_copy(i32* %13, i32* %15)
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %18 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %18, i32 0, i32 0
  %20 = load i32, i32* @NFSD_MAY_NOP, align 4
  %21 = load i32, i32* @NFSD_MAY_BYPASS_GSS_ON_ROOT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @fh_verify(%struct.svc_rqst* %17, i32* %19, i32 0, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %26 = call i32 @nfsd_return_attrs(i32 %24, %struct.nfsd_attrstat* %25)
  ret i32 %26
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i32 @nfsd_return_attrs(i32, %struct.nfsd_attrstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
