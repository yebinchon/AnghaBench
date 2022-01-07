; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_sattrargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_decode_sattrargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_sattrargs = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_decode_sattrargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd_sattrargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd_sattrargs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd_sattrargs* %2, %struct.nfsd_sattrargs** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load %struct.nfsd_sattrargs*, %struct.nfsd_sattrargs** %7, align 8
  %10 = getelementptr inbounds %struct.nfsd_sattrargs, %struct.nfsd_sattrargs* %9, i32 0, i32 1
  %11 = call i32* @decode_fh(i32* %8, i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.nfsd_sattrargs*, %struct.nfsd_sattrargs** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd_sattrargs, %struct.nfsd_sattrargs* %17, i32 0, i32 0
  %19 = call i32* @decode_sattr(i32* %16, i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @xdr_argsize_check(%struct.svc_rqst* %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32* @decode_fh(i32*, i32*) #1

declare dso_local i32* @decode_sattr(i32*, i32*) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
