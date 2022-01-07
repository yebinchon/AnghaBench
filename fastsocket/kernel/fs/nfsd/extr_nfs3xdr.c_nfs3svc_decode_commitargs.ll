; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_commitargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_commitargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_commitargs = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_commitargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_commitargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_commitargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_commitargs* %2, %struct.nfsd3_commitargs** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %9, i32 0, i32 2
  %11 = call i32* @decode_fh(i32* %8, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %16, i32 0, i32 1
  %18 = call i32* @xdr_decode_hyper(i32* %15, i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  %22 = call i32 @ntohl(i32 %21)
  %23 = load %struct.nfsd3_commitargs*, %struct.nfsd3_commitargs** %7, align 8
  %24 = getelementptr inbounds %struct.nfsd3_commitargs, %struct.nfsd3_commitargs* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @xdr_argsize_check(%struct.svc_rqst* %25, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %14, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
