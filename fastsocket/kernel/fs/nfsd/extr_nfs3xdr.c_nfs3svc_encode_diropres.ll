; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_diropres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_diropres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_diropres = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_diropres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_diropres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_diropres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfsd3_diropres* %2, %struct.nfsd3_diropres** %6, align 8
  %7 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %6, align 8
  %8 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %13, i32 0, i32 2
  %15 = call i32* @encode_fh(i32* %12, i32* %14)
  store i32* %15, i32** %5, align 8
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %18, i32 0, i32 2
  %20 = call i32* @encode_post_op_attr(%struct.svc_rqst* %16, i32* %17, i32* %19)
  store i32* %20, i32** %5, align 8
  br label %21

21:                                               ; preds = %11, %3
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.nfsd3_diropres*, %struct.nfsd3_diropres** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd3_diropres, %struct.nfsd3_diropres* %24, i32 0, i32 1
  %26 = call i32* @encode_post_op_attr(%struct.svc_rqst* %22, i32* %23, i32* %25)
  store i32* %26, i32** %5, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @xdr_ressize_check(%struct.svc_rqst* %27, i32* %28)
  ret i32 %29
}

declare dso_local i32* @encode_fh(i32*, i32*) #1

declare dso_local i32* @encode_post_op_attr(%struct.svc_rqst*, i32*, i32*) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
