; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readlinkres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readlinkres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.nfsd_readlinkres = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_encode_readlinkres(%struct.svc_rqst* %0, i64* %1, %struct.nfsd_readlinkres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.nfsd_readlinkres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.nfsd_readlinkres* %2, %struct.nfsd_readlinkres** %6, align 8
  %7 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %6, align 8
  %8 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @htonl(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = load i64*, i64** %5, align 8
  %13 = getelementptr inbounds i64, i64* %12, i32 1
  store i64* %13, i64** %5, align 8
  store i64 %11, i64* %12, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = call i32 @xdr_ressize_check(%struct.svc_rqst* %14, i64* %15)
  %17 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %21 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %3
  %29 = load i64*, i64** %5, align 8
  %30 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %31 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64* %29, i64** %35, align 8
  %36 = load i64*, i64** %5, align 8
  store i64 0, i64* %36, align 8
  %37 = load %struct.nfsd_readlinkres*, %struct.nfsd_readlinkres** %6, align 8
  %38 = getelementptr inbounds %struct.nfsd_readlinkres, %struct.nfsd_readlinkres* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 3
  %41 = sub nsw i32 4, %40
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %43 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %41, i32* %47, align 8
  br label %48

48:                                               ; preds = %28, %3
  ret i32 1
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
