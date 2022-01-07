; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_diropres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_diropres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_diropres = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_encode_diropres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd_diropres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd_diropres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfsd_diropres* %2, %struct.nfsd_diropres** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %6, align 8
  %9 = getelementptr inbounds %struct.nfsd_diropres, %struct.nfsd_diropres* %8, i32 0, i32 1
  %10 = call i32* @encode_fh(i32* %7, i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd_diropres, %struct.nfsd_diropres* %13, i32 0, i32 1
  %15 = load %struct.nfsd_diropres*, %struct.nfsd_diropres** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd_diropres, %struct.nfsd_diropres* %15, i32 0, i32 0
  %17 = call i32* @encode_fattr(%struct.svc_rqst* %11, i32* %12, i32* %14, i32* %16)
  store i32* %17, i32** %5, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @xdr_ressize_check(%struct.svc_rqst* %18, i32* %19)
  ret i32 %20
}

declare dso_local i32* @encode_fh(i32*, i32*) #1

declare dso_local i32* @encode_fattr(%struct.svc_rqst*, i32*, i32*, i32*) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
