; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_linkargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_nfs3svc_decode_linkargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_linkargs = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3svc_decode_linkargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_linkargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_linkargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_linkargs* %2, %struct.nfsd3_linkargs** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd3_linkargs, %struct.nfsd3_linkargs* %9, i32 0, i32 3
  %11 = call i32* @decode_fh(i32* %8, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd3_linkargs, %struct.nfsd3_linkargs* %15, i32 0, i32 2
  %17 = call i32* @decode_fh(i32* %14, i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd3_linkargs, %struct.nfsd3_linkargs* %21, i32 0, i32 1
  %23 = load %struct.nfsd3_linkargs*, %struct.nfsd3_linkargs** %7, align 8
  %24 = getelementptr inbounds %struct.nfsd3_linkargs, %struct.nfsd3_linkargs* %23, i32 0, i32 0
  %25 = call i32* @decode_filename(i32* %20, i32* %22, i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19, %13, %3
  store i32 0, i32* %4, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @xdr_argsize_check(%struct.svc_rqst* %29, i32* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_filename(i32*, i32*, i32*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
