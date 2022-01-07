; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_fsinfores.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_encode_fsinfores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_fsinfores = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@xdr_zero = common dso_local global i8* null, align 8
@xdr_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_encode_fsinfores(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_fsinfores* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd3_fsinfores*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfsd3_fsinfores* %2, %struct.nfsd3_fsinfores** %6, align 8
  %7 = load i8*, i8** @xdr_zero, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %5, align 8
  store i32 %8, i32* %9, align 4
  %11 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %3
  %16 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @htonl(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %23 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %24 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %30 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @htonl(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %37 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %38 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @htonl(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %44 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %45 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @htonl(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  %51 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %52 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @htonl(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  %58 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %59 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @htonl(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %67 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32* @xdr_encode_hyper(i32* %65, i32 %68)
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* @xdr_one, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i8*, i8** @xdr_zero, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %77 = load %struct.nfsd3_fsinfores*, %struct.nfsd3_fsinfores** %6, align 8
  %78 = getelementptr inbounds %struct.nfsd3_fsinfores, %struct.nfsd3_fsinfores* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @htonl(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  br label %84

84:                                               ; preds = %15, %3
  %85 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @xdr_ressize_check(%struct.svc_rqst* %85, i32* %86)
  ret i32 %87
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
