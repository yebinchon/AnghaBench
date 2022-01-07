; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_writeargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_writeargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { i32, i32, i32 }
%struct.nfs_writeargs = type { i32, i32, i32, i32, i32, i32 }

@XDRBUF_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_writeargs*)* @nfs3_xdr_writeargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_writeargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_writeargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_writeargs*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_writeargs* %2, %struct.nfs_writeargs** %6, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 0
  store %struct.xdr_buf* %10, %struct.xdr_buf** %7, align 8
  %11 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %12 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @xdr_encode_fhandle(i32* %14, i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %21 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @xdr_encode_hyper(i32* %19, i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @htonl(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %29 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @htonl(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @htonl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %41 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %42 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @xdr_adjust_iovec(i32 %43, i32* %44)
  %46 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %47 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %49 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %50 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @xdr_encode_pages(%struct.xdr_buf* %48, i32 %51, i32 %54, i32 %55)
  %57 = load i32, i32* @XDRBUF_WRITE, align 4
  %58 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %59 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

declare dso_local i32 @xdr_encode_pages(%struct.xdr_buf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
