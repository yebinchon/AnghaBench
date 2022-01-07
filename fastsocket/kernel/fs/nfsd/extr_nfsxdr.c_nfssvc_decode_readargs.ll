; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_readargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_readargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfsd_readargs = type { i32, i32, i8*, i32 }

@NFSSVC_MAXBLKSIZE_V2 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_decode_readargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd_readargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd_readargs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd_readargs* %2, %struct.nfsd_readargs** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.nfsd_readargs*, %struct.nfsd_readargs** %7, align 8
  %13 = getelementptr inbounds %struct.nfsd_readargs, %struct.nfsd_readargs* %12, i32 0, i32 3
  %14 = call i32* @decode_fh(i32* %11, i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %97

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = call i8* @ntohl(i32 %20)
  %22 = load %struct.nfsd_readargs*, %struct.nfsd_readargs** %7, align 8
  %23 = getelementptr inbounds %struct.nfsd_readargs, %struct.nfsd_readargs* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %24, align 4
  %27 = call i8* @ntohl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.nfsd_readargs*, %struct.nfsd_readargs** %7, align 8
  %30 = getelementptr inbounds %struct.nfsd_readargs, %struct.nfsd_readargs* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 %28, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @NFSSVC_MAXBLKSIZE_V2, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i32, i32* @NFSSVC_MAXBLKSIZE_V2, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %17
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %39
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %44 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  %47 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %48 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @page_address(i32 %53)
  %55 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %56 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %54, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %42
  %66 = load i32, i32* %8, align 4
  br label %69

67:                                               ; preds = %42
  %68 = load i32, i32* @PAGE_SIZE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %72 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 4
  %78 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %79 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %39

90:                                               ; preds = %39
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.nfsd_readargs*, %struct.nfsd_readargs** %7, align 8
  %93 = getelementptr inbounds %struct.nfsd_readargs, %struct.nfsd_readargs* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @xdr_argsize_check(%struct.svc_rqst* %94, i32* %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %90, %16
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
