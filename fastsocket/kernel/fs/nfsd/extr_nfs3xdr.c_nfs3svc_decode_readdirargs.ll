; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_readdirargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_readdirargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32* }
%struct.nfsd3_readdirargs = type { i64, i32, i32, i32*, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_readdirargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_readdirargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_readdirargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_readdirargs* %2, %struct.nfsd3_readdirargs** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %9, i32 0, i32 5
  %11 = call i32* @decode_fh(i32* %8, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %16, i32 0, i32 4
  %18 = call i32* @xdr_decode_hyper(i32* %15, i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32* %23, i32** %6, align 8
  %24 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %24, i32 0, i32 2
  store i32 -1, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %26, align 4
  %29 = call i64 @ntohl(i32 %28)
  %30 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %31 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %33 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %14
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %14
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %43 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @page_address(i32 %51)
  %53 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %54 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @xdr_argsize_check(%struct.svc_rqst* %55, i32* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %41, %13
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
