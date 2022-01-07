; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_createargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_createargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_createargs = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_decode_createargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd_createargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd_createargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd_createargs* %2, %struct.nfsd_createargs** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd_createargs, %struct.nfsd_createargs* %9, i32 0, i32 3
  %11 = call i32* @decode_fh(i32* %8, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %7, align 8
  %16 = getelementptr inbounds %struct.nfsd_createargs, %struct.nfsd_createargs* %15, i32 0, i32 2
  %17 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd_createargs, %struct.nfsd_createargs* %17, i32 0, i32 1
  %19 = call i32* @decode_filename(i32* %14, i32* %16, i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %30

22:                                               ; preds = %13
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.nfsd_createargs*, %struct.nfsd_createargs** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd_createargs, %struct.nfsd_createargs* %24, i32 0, i32 0
  %26 = call i32* @decode_sattr(i32* %23, i32* %25)
  store i32* %26, i32** %6, align 8
  %27 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @xdr_argsize_check(%struct.svc_rqst* %27, i32* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_filename(i32*, i32*, i32*) #1

declare dso_local i32* @decode_sattr(i32*, i32*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
