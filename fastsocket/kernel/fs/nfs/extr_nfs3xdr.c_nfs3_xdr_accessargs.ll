; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_accessargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_accessargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32 }
%struct.nfs3_accessargs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs3_accessargs*)* @nfs3_xdr_accessargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_accessargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs3_accessargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs3_accessargs*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs3_accessargs* %2, %struct.nfs3_accessargs** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.nfs3_accessargs*, %struct.nfs3_accessargs** %6, align 8
  %9 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @xdr_encode_fhandle(i32* %7, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load %struct.nfs3_accessargs*, %struct.nfs3_accessargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfs3_accessargs, %struct.nfs3_accessargs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @htonl(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %18 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @xdr_adjust_iovec(i32 %20, i32* %21)
  %23 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
