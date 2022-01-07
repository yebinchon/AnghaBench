; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readdirargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readdirargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_auth* }
%struct.rpc_auth = type { i32 }
%struct.nfs3_readdirargs = type { i32, i32, i64, i32*, i32, i32 }

@RPC_REPHDRSIZE = common dso_local global i32 0, align 4
@NFS3_readdirres_sz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs3_readdirargs*)* @nfs3_xdr_readdirargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_readdirargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs3_readdirargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs3_readdirargs*, align 8
  %7 = alloca %struct.rpc_auth*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs3_readdirargs* %2, %struct.nfs3_readdirargs** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.rpc_auth*, %struct.rpc_auth** %13, align 8
  store %struct.rpc_auth* %14, %struct.rpc_auth** %7, align 8
  %15 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @xdr_encode_fhandle(i32* %18, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %6, align 8
  %25 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @xdr_encode_hyper(i32* %23, i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %6, align 8
  %29 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %35 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %6, align 8
  %36 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %42 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %6, align 8
  %43 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %3
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 3
  %49 = call i8* @htonl(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %53

53:                                               ; preds = %46, %3
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @htonl(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %60 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @xdr_adjust_iovec(i32 %61, i32* %62)
  %64 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %65 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @RPC_REPHDRSIZE, align 4
  %67 = load %struct.rpc_auth*, %struct.rpc_auth** %7, align 8
  %68 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* @NFS3_readdirres_sz, align 4
  %72 = add nsw i32 %70, %71
  %73 = shl i32 %72, 2
  store i32 %73, i32* %8, align 4
  %74 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %75 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.nfs3_readdirargs*, %struct.nfs3_readdirargs** %6, align 8
  %78 = getelementptr inbounds %struct.nfs3_readdirargs, %struct.nfs3_readdirargs* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @xdr_inline_pages(i32* %75, i32 %76, i32 %79, i32 0, i32 %80)
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

declare dso_local i32 @xdr_inline_pages(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
