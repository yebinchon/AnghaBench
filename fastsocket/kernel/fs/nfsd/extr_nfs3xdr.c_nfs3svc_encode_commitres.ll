; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_commitres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_commitres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.svc_rqst = type { i32 }
%struct.nfsd3_commitres = type { i64, i32 }

@nfssvc_boot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_commitres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_commitres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_commitres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfsd3_commitres* %2, %struct.nfsd3_commitres** %6, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd3_commitres, %struct.nfsd3_commitres* %9, i32 0, i32 1
  %11 = call i32* @encode_wcc_data(%struct.svc_rqst* %7, i32* %8, i32* %10)
  store i32* %11, i32** %5, align 8
  %12 = load %struct.nfsd3_commitres*, %struct.nfsd3_commitres** %6, align 8
  %13 = getelementptr inbounds %struct.nfsd3_commitres, %struct.nfsd3_commitres* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfssvc_boot, i32 0, i32 1), align 4
  %18 = call i8* @htonl(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nfssvc_boot, i32 0, i32 0), align 4
  %23 = call i8* @htonl(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @xdr_ressize_check(%struct.svc_rqst* %28, i32* %29)
  ret i32 %30
}

declare dso_local i32* @encode_wcc_data(%struct.svc_rqst*, i32*, i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
