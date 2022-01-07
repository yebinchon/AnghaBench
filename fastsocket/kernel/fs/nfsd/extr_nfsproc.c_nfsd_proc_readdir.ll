; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsproc.c_nfsd_proc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_readdirargs = type { i32, i32, i64, i32 }
%struct.nfsd_readdirres = type { i32, i32*, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"nfsd: READDIR  %s %d bytes at %d\0A\00", align 1
@nfs_ok = common dso_local global i32 0, align 4
@nfssvc_encode_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd_readdirargs*, %struct.nfsd_readdirres*)* @nfsd_proc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_proc_readdir(%struct.svc_rqst* %0, %struct.nfsd_readdirargs* %1, %struct.nfsd_readdirres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd_readdirargs*, align 8
  %6 = alloca %struct.nfsd_readdirres*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd_readdirargs* %1, %struct.nfsd_readdirargs** %5, align 8
  store %struct.nfsd_readdirres* %2, %struct.nfsd_readdirres** %6, align 8
  %10 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %11 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %10, i32 0, i32 1
  %12 = call i32 @SVCFH_fmt(i32* %11)
  %13 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 2
  %24 = sub nsw i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %25, 2
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %32 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %37 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %40 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @nfs_ok, align 4
  %42 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %43 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %46 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  %48 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %49 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %50 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %49, i32 0, i32 1
  %51 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %52 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %51, i32 0, i32 4
  %53 = load i32, i32* @nfssvc_encode_entry, align 4
  %54 = call i32 @nfsd_readdir(%struct.svc_rqst* %48, i32* %50, i32* %9, %struct.TYPE_2__* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %56 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %59 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %63 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %65 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %30
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @htonl(i32 %69)
  %71 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %72 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %30
  %75 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %5, align 8
  %76 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %75, i32 0, i32 1
  %77 = call i32 @fh_put(i32* %76)
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local i32 @nfsd_readdir(%struct.svc_rqst*, i32*, i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @fh_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
