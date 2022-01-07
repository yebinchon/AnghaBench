; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_getacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_enc_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32 }
%struct.nfs_getaclargs = type { i32, i32, i32, i32, i32 }
%struct.xdr_stream = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@op_decode_hdr_maxsz = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_getaclargs*)* @nfs4_xdr_enc_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_enc_getacl(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_getaclargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_getaclargs*, align 8
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_getaclargs* %2, %struct.nfs_getaclargs** %6, align 8
  %10 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 1
  %12 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %12, i32 0, i32 4
  %14 = call i32 @nfs4_xdr_minorversion(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %15, i32 0, i32 1
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @xdr_init_encode(%struct.xdr_stream* %7, i32* %16, i32* %17)
  %19 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %20 = call i32 @encode_compound_hdr(%struct.xdr_stream* %7, %struct.rpc_rqst* %19, %struct.compound_hdr* %8)
  %21 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %6, align 8
  %22 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %21, i32 0, i32 4
  %23 = call i32 @encode_sequence(%struct.xdr_stream* %7, i32* %22, %struct.compound_hdr* %8)
  %24 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @encode_putfh(%struct.xdr_stream* %7, i32 %26, %struct.compound_hdr* %8)
  %28 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @op_decode_hdr_maxsz, align 4
  %31 = add nsw i32 %29, %30
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %34 = call i32 @encode_getattr_two(%struct.xdr_stream* %7, i32 %33, i32 0, %struct.compound_hdr* %8)
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %36 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 %37, 2
  %39 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %6, align 8
  %40 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfs_getaclargs*, %struct.nfs_getaclargs** %6, align 8
  %46 = getelementptr inbounds %struct.nfs_getaclargs, %struct.nfs_getaclargs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xdr_inline_pages(i32* %36, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = call i32 @encode_nops(%struct.compound_hdr* %8)
  ret i32 0
}

declare dso_local i32 @nfs4_xdr_minorversion(i32*) #1

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @encode_compound_hdr(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_sequence(%struct.xdr_stream*, i32*, %struct.compound_hdr*) #1

declare dso_local i32 @encode_putfh(%struct.xdr_stream*, i32, %struct.compound_hdr*) #1

declare dso_local i32 @encode_getattr_two(%struct.xdr_stream*, i32, i32, %struct.compound_hdr*) #1

declare dso_local i32 @xdr_inline_pages(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @encode_nops(%struct.compound_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
