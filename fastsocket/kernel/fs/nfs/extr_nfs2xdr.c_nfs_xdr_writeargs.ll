; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_writeargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_writeargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { i32, i32, i32 }
%struct.nfs_writeargs = type { i32, i32, i32, i32, i32 }

@XDRBUF_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_writeargs*)* @nfs_xdr_writeargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdr_writeargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_writeargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_writeargs*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_writeargs* %2, %struct.nfs_writeargs** %6, align 8
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  store %struct.xdr_buf* %11, %struct.xdr_buf** %7, align 8
  %12 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @xdr_encode_fhandle(i32* %18, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @htonl(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @htonl(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @htonl(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i8* @htonl(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  %43 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %44 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @xdr_adjust_iovec(i32 %45, i32* %46)
  %48 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %49 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %51 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %52 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfs_writeargs*, %struct.nfs_writeargs** %6, align 8
  %55 = getelementptr inbounds %struct.nfs_writeargs, %struct.nfs_writeargs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @xdr_encode_pages(%struct.xdr_buf* %50, i32 %53, i32 %56, i32 %57)
  %59 = load i32, i32* @XDRBUF_WRITE, align 4
  %60 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %61 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

declare dso_local i32 @xdr_encode_pages(%struct.xdr_buf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
