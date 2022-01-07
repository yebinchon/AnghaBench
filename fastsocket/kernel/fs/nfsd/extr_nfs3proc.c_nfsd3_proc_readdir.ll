; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3proc.c_nfsd3_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_readdirargs = type { i32, i64, i64, i32, i32 }
%struct.nfsd3_readdirres = type { i32, i64, i64, i64, i32, %struct.TYPE_2__, i32, %struct.svc_rqst* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"nfsd: READDIR(3)  %s %d bytes at %d\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4
@nfs3svc_encode_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirres*)* @nfsd3_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd3_proc_readdir(%struct.svc_rqst* %0, %struct.nfsd3_readdirargs* %1, %struct.nfsd3_readdirres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_readdirargs*, align 8
  %7 = alloca %struct.nfsd3_readdirres*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_readdirargs* %1, %struct.nfsd3_readdirargs** %6, align 8
  store %struct.nfsd3_readdirres* %2, %struct.nfsd3_readdirres** %7, align 8
  %10 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %10, i32 0, i32 4
  %12 = call i32 @SVCFH_fmt(i32* %11)
  %13 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %19)
  %21 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 2
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %9, align 4
  %26 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %26, i32 0, i32 6
  %28 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %29 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %28, i32 0, i32 4
  %30 = call i32 @fh_copy(i32* %27, i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %33 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @nfs_ok, align 4
  %35 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %39 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %42 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %44 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %45 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %44, i32 0, i32 7
  store %struct.svc_rqst* %43, %struct.svc_rqst** %45, align 8
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %47 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %48 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %47, i32 0, i32 6
  %49 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %50 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %49, i32 0, i32 1
  %51 = bitcast i64* %50 to i32*
  %52 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %53 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %52, i32 0, i32 5
  %54 = load i32, i32* @nfs3svc_encode_entry, align 4
  %55 = call i32 @nfsd_readdir(%struct.svc_rqst* %46, i32* %48, i32* %51, %struct.TYPE_2__* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %57 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %60 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i32 %58, i32 %61, i32 8)
  %63 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %64 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %67 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %71 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %73 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %3
  %77 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %78 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %6, align 8
  %81 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @xdr_encode_hyper(i64 %79, i64 %82)
  br label %84

84:                                               ; preds = %76, %3
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @RETURN_STATUS(i32 %85)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @fh_copy(i32*, i32*) #1

declare dso_local i32 @nfsd_readdir(%struct.svc_rqst*, i32*, i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @xdr_encode_hyper(i64, i64) #1

declare dso_local i32 @RETURN_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
