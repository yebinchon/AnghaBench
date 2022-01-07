; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_statfsres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_nfssvc_encode_statfsres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd_statfsres = type { %struct.kstatfs }
%struct.kstatfs = type { i32, i32, i32, i32 }

@NFSSVC_MAXBLKSIZE_V2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfssvc_encode_statfsres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd_statfsres* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfsd_statfsres*, align 8
  %7 = alloca %struct.kstatfs*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfsd_statfsres* %2, %struct.nfsd_statfsres** %6, align 8
  %8 = load %struct.nfsd_statfsres*, %struct.nfsd_statfsres** %6, align 8
  %9 = getelementptr inbounds %struct.nfsd_statfsres, %struct.nfsd_statfsres* %8, i32 0, i32 0
  store %struct.kstatfs* %9, %struct.kstatfs** %7, align 8
  %10 = load i32, i32* @NFSSVC_MAXBLKSIZE_V2, align 4
  %11 = call i8* @htonl(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %15 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %16 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @htonl(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @htonl(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %29 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %30 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htonl(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %36 = load %struct.kstatfs*, %struct.kstatfs** %7, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @htonl(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %43 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @xdr_ressize_check(%struct.svc_rqst* %43, i32* %44)
  ret i32 %45
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
