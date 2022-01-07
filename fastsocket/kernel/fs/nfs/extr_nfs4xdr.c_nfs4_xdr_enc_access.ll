; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs4_accessargs = type { i32, i32, i32, i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs4_accessargs*)* @nfs4_xdr_enc_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_enc_access(%struct.rpc_rqst* %0, i32* %1, %struct.nfs4_accessargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs4_accessargs*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs4_accessargs* %2, %struct.nfs4_accessargs** %6, align 8
  %9 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %10 = load %struct.nfs4_accessargs*, %struct.nfs4_accessargs** %6, align 8
  %11 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %10, i32 0, i32 3
  %12 = call i32 @nfs4_xdr_minorversion(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %14 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %13, i32 0, i32 0
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @xdr_init_encode(%struct.xdr_stream* %7, i32* %14, i32* %15)
  %17 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %18 = call i32 @encode_compound_hdr(%struct.xdr_stream* %7, %struct.rpc_rqst* %17, %struct.compound_hdr* %8)
  %19 = load %struct.nfs4_accessargs*, %struct.nfs4_accessargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %19, i32 0, i32 3
  %21 = call i32 @encode_sequence(%struct.xdr_stream* %7, i32* %20, %struct.compound_hdr* %8)
  %22 = load %struct.nfs4_accessargs*, %struct.nfs4_accessargs** %6, align 8
  %23 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @encode_putfh(%struct.xdr_stream* %7, i32 %24, %struct.compound_hdr* %8)
  %26 = load %struct.nfs4_accessargs*, %struct.nfs4_accessargs** %6, align 8
  %27 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @encode_access(%struct.xdr_stream* %7, i32 %28, %struct.compound_hdr* %8)
  %30 = load %struct.nfs4_accessargs*, %struct.nfs4_accessargs** %6, align 8
  %31 = getelementptr inbounds %struct.nfs4_accessargs, %struct.nfs4_accessargs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @encode_getfattr(%struct.xdr_stream* %7, i32 %32, %struct.compound_hdr* %8)
  %34 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret i32 0
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_access(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_getfattr(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
