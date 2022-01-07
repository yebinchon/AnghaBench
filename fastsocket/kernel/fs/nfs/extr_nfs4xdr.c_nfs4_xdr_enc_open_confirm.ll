; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_open_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_open_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs_open_confirmargs = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_open_confirmargs*)* @nfs4_xdr_enc_open_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_enc_open_confirm(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_open_confirmargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_open_confirmargs*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_open_confirmargs* %2, %struct.nfs_open_confirmargs** %6, align 8
  %9 = bitcast %struct.compound_hdr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %10, i32 0, i32 0
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @xdr_init_encode(%struct.xdr_stream* %7, i32* %11, i32* %12)
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %15 = call i32 @encode_compound_hdr(%struct.xdr_stream* %7, %struct.rpc_rqst* %14, %struct.compound_hdr* %8)
  %16 = load %struct.nfs_open_confirmargs*, %struct.nfs_open_confirmargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfs_open_confirmargs, %struct.nfs_open_confirmargs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @encode_putfh(%struct.xdr_stream* %7, i32 %18, %struct.compound_hdr* %8)
  %20 = load %struct.nfs_open_confirmargs*, %struct.nfs_open_confirmargs** %6, align 8
  %21 = call i32 @encode_open_confirm(%struct.xdr_stream* %7, %struct.nfs_open_confirmargs* %20, %struct.compound_hdr* %8)
  %22 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, i32*, i32*) #2

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #2

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #2

declare dso_local i32 @encode_open_confirm(%struct.xdr_stream*, %struct.nfs_open_confirmargs*, %struct.compound_hdr*) #2

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
