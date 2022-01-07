; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_readargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_readargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.rpc_auth* }
%struct.rpc_auth = type { i32 }
%struct.nfs_readargs = type { i32, i32, i32, i32, i32 }

@RPC_REPHDRSIZE = common dso_local global i32 0, align 4
@NFS_readres_sz = common dso_local global i32 0, align 4
@XDRBUF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_readargs*)* @nfs_xdr_readargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdr_readargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_readargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_readargs*, align 8
  %7 = alloca %struct.rpc_auth*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_readargs* %2, %struct.nfs_readargs** %6, align 8
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.rpc_auth*, %struct.rpc_auth** %14, align 8
  store %struct.rpc_auth* %15, %struct.rpc_auth** %7, align 8
  %16 = load %struct.nfs_readargs*, %struct.nfs_readargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nfs_readargs*, %struct.nfs_readargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.nfs_readargs*, %struct.nfs_readargs** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @xdr_encode_fhandle(i32* %22, i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @htonl(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @htonl(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @htonl(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %42 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %43 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @xdr_adjust_iovec(i32 %44, i32* %45)
  %47 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %48 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @RPC_REPHDRSIZE, align 4
  %50 = load %struct.rpc_auth*, %struct.rpc_auth** %7, align 8
  %51 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = load i32, i32* @NFS_readres_sz, align 4
  %55 = add nsw i32 %53, %54
  %56 = shl i32 %55, 2
  store i32 %56, i32* %8, align 4
  %57 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %58 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %57, i32 0, i32 0
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.nfs_readargs*, %struct.nfs_readargs** %6, align 8
  %61 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfs_readargs*, %struct.nfs_readargs** %6, align 8
  %64 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @xdr_inline_pages(%struct.TYPE_4__* %58, i32 %59, i32 %62, i32 %65, i32 %66)
  %68 = load i32, i32* @XDRBUF_READ, align 4
  %69 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %70 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 8
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

declare dso_local i32 @xdr_inline_pages(%struct.TYPE_4__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
