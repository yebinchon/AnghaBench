; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_readdirplusargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_readdirplusargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32*, i32 }
%struct.nfsd3_readdirargs = type { i32, i32, i8*, i32*, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_readdirplusargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_readdirargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_readdirargs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_readdirargs* %2, %struct.nfsd3_readdirargs** %7, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %12 = call i32 @svc_max_payload(%struct.svc_rqst* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %15 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %14, i32 0, i32 5
  %16 = call i32* @decode_fh(i32* %13, i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %21, i32 0, i32 4
  %23 = call i32* @xdr_decode_hyper(i32* %20, i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %26 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i8* @ntohl(i32 %31)
  %33 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %34 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 8
  %37 = load i32, i32* %35, align 4
  %38 = call i8* @ntohl(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %41 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %43 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %19
  %48 = load i32, i32* %10, align 4
  br label %53

49:                                               ; preds = %19
  %50 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i32 [ %48, %47 ], [ %52, %49 ]
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %57 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %81, %53
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %58
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %63 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  store i32 %64, i32* %9, align 4
  %66 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %67 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %61
  %71 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %72 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @page_address(i32 %77)
  %79 = load %struct.nfsd3_readdirargs*, %struct.nfsd3_readdirargs** %7, align 8
  %80 = getelementptr inbounds %struct.nfsd3_readdirargs, %struct.nfsd3_readdirargs* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %70, %61
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %58

87:                                               ; preds = %58
  %88 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @xdr_argsize_check(%struct.svc_rqst* %88, i32* %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %18
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @svc_max_payload(%struct.svc_rqst*) #1

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
