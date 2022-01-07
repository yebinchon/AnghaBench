; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readlinkres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readlinkres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.nfsd3_readlinkres = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_readlinkres(%struct.svc_rqst* %0, i64* %1, %struct.nfsd3_readlinkres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.nfsd3_readlinkres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.nfsd3_readlinkres* %2, %struct.nfsd3_readlinkres** %7, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %11 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %10, i32 0, i32 2
  %12 = call i64* @encode_post_op_attr(%struct.svc_rqst* %8, i64* %9, i32* %11)
  store i64* %12, i64** %6, align 8
  %13 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %3
  %18 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %19 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @htonl(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = load i64*, i64** %6, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %6, align 8
  store i64 %22, i64* %23, align 8
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = call i32 @xdr_ressize_check(%struct.svc_rqst* %25, i64* %26)
  %28 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %32 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %35 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %17
  %40 = load i64*, i64** %6, align 8
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %42 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i64* %40, i64** %46, align 8
  %47 = load i64*, i64** %6, align 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.nfsd3_readlinkres*, %struct.nfsd3_readlinkres** %7, align 8
  %49 = getelementptr inbounds %struct.nfsd3_readlinkres, %struct.nfsd3_readlinkres* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 3
  %52 = sub nsw i32 4, %51
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %54 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 8
  br label %59

59:                                               ; preds = %39, %17
  store i32 1, i32* %4, align 4
  br label %64

60:                                               ; preds = %3
  %61 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = call i32 @xdr_ressize_check(%struct.svc_rqst* %61, i64* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64* @encode_post_op_attr(%struct.svc_rqst*, i64*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
