; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.nfsd_readres = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_encode_readres(%struct.svc_rqst* %0, i64* %1, %struct.nfsd_readres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nfsd_readres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.nfsd_readres* %2, %struct.nfsd_readres** %6, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load %struct.nfsd_readres*, %struct.nfsd_readres** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %9, i32 0, i32 2
  %11 = load %struct.nfsd_readres*, %struct.nfsd_readres** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %11, i32 0, i32 1
  %13 = call i64* @encode_fattr(%struct.svc_rqst* %7, i64* %8, i32* %10, i32* %12)
  store i64* %13, i64** %5, align 8
  %14 = load %struct.nfsd_readres*, %struct.nfsd_readres** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @htonl(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i32 1
  store i64* %20, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = call i32 @xdr_ressize_check(%struct.svc_rqst* %21, i64* %22)
  %24 = load %struct.nfsd_readres*, %struct.nfsd_readres** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.nfsd_readres*, %struct.nfsd_readres** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %3
  %36 = load i64*, i64** %5, align 8
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %38 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i64* %36, i64** %42, align 8
  %43 = load i64*, i64** %5, align 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.nfsd_readres*, %struct.nfsd_readres** %6, align 8
  %45 = getelementptr inbounds %struct.nfsd_readres, %struct.nfsd_readres* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  %48 = sub nsw i32 4, %47
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %50 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 8
  br label %55

55:                                               ; preds = %35, %3
  ret i32 1
}

declare dso_local i64* @encode_fattr(%struct.svc_rqst*, i64*, i32*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
