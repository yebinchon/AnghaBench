; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_readdirargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_readdirargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32* }
%struct.nfsd_readdirargs = type { i64, i32, i8*, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_decode_readdirargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd_readdirargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd_readdirargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd_readdirargs* %2, %struct.nfsd_readdirargs** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %9, i32 0, i32 3
  %11 = call i32* @decode_fh(i32* %8, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* %15, align 4
  %18 = call i8* @ntohl(i32 %17)
  %19 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %7, align 8
  %20 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  %24 = call i8* @ntohl(i32 %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %14
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %7, align 8
  %36 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %14
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %39 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %42 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @page_address(i32 %47)
  %49 = load %struct.nfsd_readdirargs*, %struct.nfsd_readdirargs** %7, align 8
  %50 = getelementptr inbounds %struct.nfsd_readdirargs, %struct.nfsd_readdirargs* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @xdr_argsize_check(%struct.svc_rqst* %51, i32* %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %37, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
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
