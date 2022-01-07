; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_readargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_readargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfsd3_readargs = type { i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_readargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_readargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_readargs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_readargs* %2, %struct.nfsd3_readargs** %7, align 8
  %12 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %13 = call i32 @svc_max_payload(%struct.svc_rqst* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %15, i32 0, i32 3
  %17 = call i32* @decode_fh(i32* %14, i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %7, align 8
  %23 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %22, i32 0, i32 2
  %24 = call i32* @xdr_decode_hyper(i32* %21, i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i32 @ntohl(i32 %27)
  %29 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 %28, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %20
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp ugt i32 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %37
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %42 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @page_address(i32 %51)
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %54 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %52, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %40
  %64 = load i32, i32* %8, align 4
  br label %67

65:                                               ; preds = %40
  %66 = load i32, i32* @PAGE_SIZE, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %70 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  %76 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %77 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %37

88:                                               ; preds = %37
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.nfsd3_readargs*, %struct.nfsd3_readargs** %7, align 8
  %91 = getelementptr inbounds %struct.nfsd3_readargs, %struct.nfsd3_readargs* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @xdr_argsize_check(%struct.svc_rqst* %92, i32* %93)
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %19
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @svc_max_payload(%struct.svc_rqst*) #1

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
