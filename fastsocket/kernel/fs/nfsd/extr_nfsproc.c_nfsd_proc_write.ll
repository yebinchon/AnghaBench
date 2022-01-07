; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_writeargs = type { i64, i32, i32, i32 }
%struct.nfsd_attrstat = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"nfsd: WRITE    %s %d bytes at %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd_writeargs*, %struct.nfsd_attrstat*)* @nfsd_proc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_write(%struct.svc_rqst* %0, %struct.nfsd_writeargs* %1, %struct.nfsd_attrstat* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd_writeargs*, align 8
  %6 = alloca %struct.nfsd_attrstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd_writeargs* %1, %struct.nfsd_writeargs** %5, align 8
  store %struct.nfsd_attrstat* %2, %struct.nfsd_attrstat** %6, align 8
  store i32 1, i32* %8, align 4
  %10 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %13, i32 0, i32 3
  %15 = call i32 @SVCFH_fmt(i32* %14)
  %16 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %5, align 8
  %20 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18, i32 %21)
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %24 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd_attrstat, %struct.nfsd_attrstat* %24, i32 0, i32 0
  %26 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %5, align 8
  %27 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %26, i32 0, i32 3
  %28 = call i32 @fh_copy(i32* %25, i32* %27)
  %29 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %33 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nfsd_writeargs*, %struct.nfsd_writeargs** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd_writeargs, %struct.nfsd_writeargs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nfsd_write(%struct.svc_rqst* %23, i32 %28, i32* null, i32 %31, i32 %34, i32 %37, i64* %9, i32* %8)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.nfsd_attrstat*, %struct.nfsd_attrstat** %6, align 8
  %41 = call i32 @nfsd_return_attrs(i32 %39, %struct.nfsd_attrstat* %40)
  ret i32 %41
}

declare dso_local i32 @dprintk(i8*, i32, i64, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @nfsd_write(%struct.svc_rqst*, i32, i32*, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_return_attrs(i32, %struct.nfsd_attrstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
