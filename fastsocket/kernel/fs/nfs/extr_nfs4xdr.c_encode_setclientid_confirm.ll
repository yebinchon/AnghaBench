; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_setclientid_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_setclientid_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_setclientid_res = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@NFS4_VERIFIER_SIZE = common dso_local global i64 0, align 8
@OP_SETCLIENTID_CONFIRM = common dso_local global i32 0, align 4
@decode_setclientid_confirm_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs4_setclientid_res*, %struct.compound_hdr*)* @encode_setclientid_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_setclientid_confirm(%struct.xdr_stream* %0, %struct.nfs4_setclientid_res* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_setclientid_res*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_setclientid_res* %1, %struct.nfs4_setclientid_res** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i64, i64* @NFS4_VERIFIER_SIZE, align 8
  %10 = add nsw i64 12, %9
  %11 = call i32* @reserve_space(%struct.xdr_stream* %8, i64 %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* @OP_SETCLIENTID_CONFIRM, align 4
  %13 = call i32 @cpu_to_be32(i32 %12)
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid_res** %5, align 8
  %18 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @xdr_encode_hyper(i32* %16, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.nfs4_setclientid_res*, %struct.nfs4_setclientid_res** %5, align 8
  %23 = getelementptr inbounds %struct.nfs4_setclientid_res, %struct.nfs4_setclientid_res* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @NFS4_VERIFIER_SIZE, align 8
  %27 = call i32 @xdr_encode_opaque_fixed(i32* %21, i32 %25, i64 %26)
  %28 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i64, i64* @decode_setclientid_confirm_maxsz, align 8
  %33 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %34 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @xdr_encode_opaque_fixed(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
