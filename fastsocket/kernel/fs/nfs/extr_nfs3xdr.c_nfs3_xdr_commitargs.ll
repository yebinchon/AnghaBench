; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_commitargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_commitargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32 }
%struct.nfs_commitargs = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_commitargs*)* @nfs3_xdr_commitargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_commitargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_commitargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_commitargs*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_commitargs* %2, %struct.nfs_commitargs** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.nfs_commitargs*, %struct.nfs_commitargs** %6, align 8
  %9 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @xdr_encode_fhandle(i32* %7, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.nfs_commitargs*, %struct.nfs_commitargs** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @xdr_encode_hyper(i32* %12, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load %struct.nfs_commitargs*, %struct.nfs_commitargs** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htonl(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @xdr_adjust_iovec(i32 %25, i32* %26)
  %28 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %29 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
