; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_readdirargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_readdirargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_auth* }
%struct.rpc_auth = type { i32 }
%struct.nfs_readdirargs = type { i32, i32, i32, i32 }

@RPC_REPHDRSIZE = common dso_local global i32 0, align 4
@NFS_readdirres_sz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_readdirargs*)* @nfs_xdr_readdirargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdr_readdirargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_readdirargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_readdirargs*, align 8
  %7 = alloca %struct.rpc_auth*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_readdirargs* %2, %struct.nfs_readdirargs** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.rpc_auth*, %struct.rpc_auth** %13, align 8
  store %struct.rpc_auth* %14, %struct.rpc_auth** %7, align 8
  %15 = load %struct.nfs_readdirargs*, %struct.nfs_readdirargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.nfs_readdirargs*, %struct.nfs_readdirargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @xdr_encode_fhandle(i32* %18, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load %struct.nfs_readdirargs*, %struct.nfs_readdirargs** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @htonl(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %36 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @xdr_adjust_iovec(i32 %37, i32* %38)
  %40 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @RPC_REPHDRSIZE, align 4
  %43 = load %struct.rpc_auth*, %struct.rpc_auth** %7, align 8
  %44 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* @NFS_readdirres_sz, align 4
  %48 = add nsw i32 %46, %47
  %49 = shl i32 %48, 2
  store i32 %49, i32* %8, align 4
  %50 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %51 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.nfs_readdirargs*, %struct.nfs_readdirargs** %6, align 8
  %54 = getelementptr inbounds %struct.nfs_readdirargs, %struct.nfs_readdirargs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @xdr_inline_pages(i32* %51, i32 %52, i32 %55, i32 0, i32 %56)
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

declare dso_local i32 @xdr_inline_pages(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
