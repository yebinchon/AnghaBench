; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_sattrargs = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nfsd_attrstat = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"nfsd: SETATTR  %s, valid=%x, size=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd_sattrargs*, %struct.nfsd_attrstat*)* @nfsd_proc_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_setattr(%struct.svc_rqst* %0, %struct.nfsd_sattrargs* %1, %struct.nfsd_attrstat* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd_sattrargs*, align 8
  %6 = alloca %struct.nfsd_attrstat*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd_sattrargs* %1, %struct.nfsd_sattrargs** %5, align 8
  store %struct.nfsd_attrstat* %2, %struct.nfsd_attrstat** %6, align 8
  %8 = load %struct.nfsd_sattrargs*, %struct.nfsd_sattrargs** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd_sattrargs, %struct.nfsd_sattrargs* %8, i32 0, i32 1
  %10 = call i32 @SVCFH_fmt(i32* %9)
  %11 = load %struct.nfsd_sattrargs*, %struct.nfsd_sattrargs** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd_sattrargs, %struct.nfsd_sattrargs* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nfsd_sattrargs*, %struct.nfsd_sattrargs** %5, align 8
  %16 = getelementptr inbounds %struct.nfsd_sattrargs, %struct.nfsd_sattrargs* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i64 %18)
  %20 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %21 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %20, i32 0, i32 0
  %22 = load %struct.nfsd_sattrargs*, %struct.nfsd_sattrargs** %5, align 8
  %23 = getelementptr inbounds %struct.nfsd_sattrargs, %struct.nfsd_sattrargs* %22, i32 0, i32 1
  %24 = call i32 @fh_copy(i32* %21, i32* %23)
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %26 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %27 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %26, i32 0, i32 0
  %28 = load %struct.nfsd_sattrargs*, %struct.nfsd_sattrargs** %5, align 8
  %29 = getelementptr inbounds %struct.nfsd_sattrargs, %struct.nfsd_sattrargs* %28, i32 0, i32 0
  %30 = call i32 @nfsd_setattr(%struct.svc_rqst* %25, i32* %27, %struct.TYPE_2__* %29, i32 0, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %33 = call i32 @nfsd_return_attrs(i32 %31, %struct.nfsd_attrstat* %32)
  ret i32 %33
}

declare dso_local i32 @dprintk(i8*, i32, i32, i64) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_setattr(%struct.svc_rqst*, i32*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @nfsd_return_attrs(i32, %struct.nfsd_attrstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
