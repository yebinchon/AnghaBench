; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_fsstatres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_fsstatres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_fsstatres = type { i64, i32, %struct.kstatfs }
%struct.kstatfs = type { i32, i32, i32, i32, i32, i32 }

@xdr_zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_fsstatres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_fsstatres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_fsstatres*, align 8
  %7 = alloca %struct.kstatfs*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfsd3_fsstatres* %2, %struct.nfsd3_fsstatres** %6, align 8
  %9 = load %struct.nfsd3_fsstatres*, %struct.nfsd3_fsstatres** %6, align 8
  %10 = getelementptr inbounds %struct.nfsd3_fsstatres, %struct.nfsd3_fsstatres* %9, i32 0, i32 2
  store %struct.kstatfs* %10, %struct.kstatfs** %7, align 8
  %11 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %12 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @xdr_zero, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %17 = load %struct.nfsd3_fsstatres*, %struct.nfsd3_fsstatres** %6, align 8
  %18 = getelementptr inbounds %struct.nfsd3_fsstatres, %struct.nfsd3_fsstatres* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %25 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = call i32* @xdr_encode_hyper(i32* %22, i32 %27)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %32 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = call i32* @xdr_encode_hyper(i32* %29, i32 %34)
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = call i32* @xdr_encode_hyper(i32* %36, i32 %41)
  store i32* %42, i32** %5, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %45 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @xdr_encode_hyper(i32* %43, i32 %46)
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %50 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @xdr_encode_hyper(i32* %48, i32 %51)
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @xdr_encode_hyper(i32* %53, i32 %56)
  store i32* %57, i32** %5, align 8
  %58 = load %struct.nfsd3_fsstatres*, %struct.nfsd3_fsstatres** %6, align 8
  %59 = getelementptr inbounds %struct.nfsd3_fsstatres, %struct.nfsd3_fsstatres* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @htonl(i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %21, %3
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @xdr_ressize_check(%struct.svc_rqst* %65, i32* %66)
  ret i32 %67
}

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
