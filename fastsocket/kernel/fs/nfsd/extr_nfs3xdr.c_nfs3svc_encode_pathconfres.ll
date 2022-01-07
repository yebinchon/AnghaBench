; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_pathconfres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_pathconfres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_pathconfres = type { i64, i32, i32, i32, i32, i32, i32 }

@xdr_zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_pathconfres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_pathconfres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_pathconfres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfsd3_pathconfres* %2, %struct.nfsd3_pathconfres** %6, align 8
  %7 = load i32, i32* @xdr_zero, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %5, align 8
  store i32 %7, i32* %8, align 4
  %10 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  %15 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @htonl(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %22 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %6, align 8
  %23 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @htonl(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %29 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %6, align 8
  %30 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htonl(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %36 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %6, align 8
  %37 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @htonl(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %43 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %6, align 8
  %44 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @htonl(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.nfsd3_pathconfres*, %struct.nfsd3_pathconfres** %6, align 8
  %51 = getelementptr inbounds %struct.nfsd3_pathconfres, %struct.nfsd3_pathconfres* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @htonl(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %57

57:                                               ; preds = %14, %3
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @xdr_ressize_check(%struct.svc_rqst* %58, i32* %59)
  ret i32 %60
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
