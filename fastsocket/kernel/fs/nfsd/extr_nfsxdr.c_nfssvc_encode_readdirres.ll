; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readdirres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_readdirres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nfsd_readdirres = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64 }

@nfserr_eof = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_encode_readdirres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd_readdirres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd_readdirres*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfsd_readdirres* %2, %struct.nfsd_readdirres** %6, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @xdr_ressize_check(%struct.svc_rqst* %7, i32* %8)
  %10 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.nfsd_readdirres*, %struct.nfsd_readdirres** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd_readdirres, %struct.nfsd_readdirres* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @nfserr_eof, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @htonl(i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = sub i64 %27, 1
  %29 = load i64, i64* @PAGE_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = and i64 %28, %30
  %32 = add i64 %31, 1
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %34 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  ret i32 1
}

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

declare dso_local i64 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
