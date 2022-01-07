; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_setclientid_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_setclientid_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs4_setclientid_res = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32 }

@FATTR4_WORD0_LEASE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs4_setclientid_res*)* @nfs4_xdr_enc_setclientid_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_enc_setclientid_confirm(%struct.rpc_rqst* %0, i32* %1, %struct.nfs4_setclientid_res* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs4_setclientid_res*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs4_setclientid_res* %2, %struct.nfs4_setclientid_res** %6, align 8
  %10 = bitcast %struct.compound_hdr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %12 = load i32, i32* @FATTR4_WORD0_LEASE_TIME, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %14, i32 0, i32 0
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @xdr_init_encode(%struct.xdr_stream* %7, i32* %15, i32* %16)
  %18 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %19 = call i32 @encode_compound_hdr(%struct.xdr_stream* %7, %struct.rpc_rqst* %18, %struct.compound_hdr* %8)
  %20 = load %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid_res** %6, align 8
  %21 = call i32 @encode_setclientid_confirm(%struct.xdr_stream* %7, %struct.nfs4_setclientid_res* %20, %struct.compound_hdr* %8)
  %22 = call i32 @encode_putrootfh(%struct.xdr_stream* %7, %struct.compound_hdr* %8)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %24 = call i32 @encode_fsinfo(%struct.xdr_stream* %7, i32* %23, %struct.compound_hdr* %8)
  %25 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, i32*, i32*) #2

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #2

declare dso_local i32 @encode_setclientid_confirm(%struct.xdr_stream*, %struct.nfs4_setclientid_res*, %struct.compound_hdr*) #2

declare dso_local i32 @encode_putrootfh(%struct.xdr_stream*, %struct.compound_hdr*) #2

declare dso_local i32 @encode_fsinfo(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #2

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
