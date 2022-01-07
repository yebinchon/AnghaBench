; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.nfsd3_readres = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_readres(%struct.svc_rqst* %0, i64* %1, %struct.nfsd3_readres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.nfsd3_readres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.nfsd3_readres* %2, %struct.nfsd3_readres** %7, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %11 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %10, i32 0, i32 3
  %12 = call i64* @encode_post_op_attr(%struct.svc_rqst* %8, i64* %9, i32* %11)
  store i64* %12, i64** %6, align 8
  %13 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %3
  %18 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %19 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @htonl(i32 %20)
  %22 = ptrtoint i8* %21 to i64
  %23 = load i64*, i64** %6, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %6, align 8
  store i64 %22, i64* %23, align 8
  %25 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %26 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @htonl(i32 %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load i64*, i64** %6, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %6, align 8
  store i64 %29, i64* %30, align 8
  %32 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %33 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @htonl(i32 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load i64*, i64** %6, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = call i32 @xdr_ressize_check(%struct.svc_rqst* %39, i64* %40)
  %42 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %49 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %17
  %54 = load i64*, i64** %6, align 8
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i64* %54, i64** %60, align 8
  %61 = load i64*, i64** %6, align 8
  store i64 0, i64* %61, align 8
  %62 = load %struct.nfsd3_readres*, %struct.nfsd3_readres** %7, align 8
  %63 = getelementptr inbounds %struct.nfsd3_readres, %struct.nfsd3_readres* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 3
  %66 = sub nsw i32 4, %65
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %68 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %66, i32* %72, align 8
  br label %73

73:                                               ; preds = %53, %17
  store i32 1, i32* %4, align 4
  br label %78

74:                                               ; preds = %3
  %75 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %76 = load i64*, i64** %6, align 8
  %77 = call i32 @xdr_ressize_check(%struct.svc_rqst* %75, i64* %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %73
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64* @encode_post_op_attr(%struct.svc_rqst*, i64*, i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
