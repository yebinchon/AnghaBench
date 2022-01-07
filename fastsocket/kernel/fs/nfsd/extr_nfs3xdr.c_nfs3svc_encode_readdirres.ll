; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readdirres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_readdirres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.nfsd3_readdirres = type { i64, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@nfserr_eof = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_readdirres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_readdirres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_readdirres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_readdirres* %2, %struct.nfsd3_readdirres** %7, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %11 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %10, i32 0, i32 4
  %12 = call i32* @encode_post_op_attr(%struct.svc_rqst* %8, i32* %9, i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @memcpy(i32* %18, i32 %21, i32 8)
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  store i32* %24, i32** %6, align 8
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @xdr_ressize_check(%struct.svc_rqst* %25, i32* %26)
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %77

39:                                               ; preds = %17
  %40 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %41 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 2
  %44 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %45 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %49 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32* %47, i32** %53, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  store i32 0, i32* %54, align 4
  %56 = load %struct.nfsd3_readdirres*, %struct.nfsd3_readdirres** %7, align 8
  %57 = getelementptr inbounds %struct.nfsd3_readdirres, %struct.nfsd3_readdirres* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @nfserr_eof, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @htonl(i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  %67 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %68 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 8, i32* %72, align 8
  store i32 1, i32* %4, align 4
  br label %77

73:                                               ; preds = %3
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @xdr_ressize_check(%struct.svc_rqst* %74, i32* %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %39, %38
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @encode_post_op_attr(%struct.svc_rqst*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
