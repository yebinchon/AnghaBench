; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_writeargs = type { i64, i32, i64, i64, i32 }
%struct.nfsd3_writeres = type { i64, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"nfsd: WRITE(3)    %s %d bytes at %ld%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" stable\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_writeargs*, %struct.nfsd3_writeres*)* @nfsd3_proc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_write(%struct.svc_rqst* %0, %struct.nfsd3_writeargs* %1, %struct.nfsd3_writeres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_writeargs*, align 8
  %7 = alloca %struct.nfsd3_writeres*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_writeargs* %1, %struct.nfsd3_writeargs** %6, align 8
  store %struct.nfsd3_writeres* %2, %struct.nfsd3_writeres** %7, align 8
  %10 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %13, i32 0, i32 4
  %15 = call i32 @SVCFH_fmt(i32* %14)
  %16 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %23 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18, i64 %21, i8* %27)
  %29 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %29, i32 0, i32 2
  %31 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %32 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %31, i32 0, i32 4
  %33 = call i32 @fh_copy(i32* %30, i32* %32)
  %34 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %7, align 8
  %38 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %40 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %7, align 8
  %41 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %40, i32 0, i32 2
  %42 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfsd3_writeargs*, %struct.nfsd3_writeargs** %6, align 8
  %49 = getelementptr inbounds %struct.nfsd3_writeargs, %struct.nfsd3_writeargs* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %7, align 8
  %52 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %51, i32 0, i32 1
  %53 = call i32 @nfsd_write(%struct.svc_rqst* %39, i32* %41, i32* null, i64 %44, i32 %47, i32 %50, i64* %9, i64* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.nfsd3_writeres*, %struct.nfsd3_writeres** %7, align 8
  %56 = getelementptr inbounds %struct.nfsd3_writeres, %struct.nfsd3_writeres* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @RETURN_STATUS(i32 %57)
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @dprintk(i8*, i32, i64, i64, i8*) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_write(%struct.svc_rqst*, i32*, i32*, i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
