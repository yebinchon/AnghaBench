; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_setattrargs = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfs_server = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@NFS4_STATEID_SIZE = common dso_local global i64 0, align 8
@OP_SETATTR = common dso_local global i32 0, align 4
@decode_setattr_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_setattrargs*, %struct.nfs_server*, %struct.compound_hdr*)* @encode_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_setattr(%struct.xdr_stream* %0, %struct.nfs_setattrargs* %1, %struct.nfs_server* %2, %struct.compound_hdr* %3) #0 {
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.nfs_setattrargs*, align 8
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.compound_hdr*, align 8
  %9 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %5, align 8
  store %struct.nfs_setattrargs* %1, %struct.nfs_setattrargs** %6, align 8
  store %struct.nfs_server* %2, %struct.nfs_server** %7, align 8
  store %struct.compound_hdr* %3, %struct.compound_hdr** %8, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = load i64, i64* @NFS4_STATEID_SIZE, align 8
  %12 = add nsw i64 4, %11
  %13 = call i32* @reserve_space(%struct.xdr_stream* %10, i64 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* @OP_SETATTR, align 4
  %15 = call i32 @cpu_to_be32(i32 %14)
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %9, align 8
  store i32 %15, i32* %16, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @NFS4_STATEID_SIZE, align 8
  %24 = call i32 @xdr_encode_opaque_fixed(i32* %18, i32 %22, i64 %23)
  %25 = load %struct.compound_hdr*, %struct.compound_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i64, i64* @decode_setattr_maxsz, align 8
  %30 = load %struct.compound_hdr*, %struct.compound_hdr** %8, align 8
  %31 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %37 = load %struct.nfs_setattrargs*, %struct.nfs_setattrargs** %6, align 8
  %38 = getelementptr inbounds %struct.nfs_setattrargs, %struct.nfs_setattrargs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %41 = call i32 @encode_attrs(%struct.xdr_stream* %36, i32 %39, %struct.nfs_server* %40)
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_encode_opaque_fixed(i32*, i32, i64) #1

declare dso_local i32 @encode_attrs(%struct.xdr_stream*, i32, %struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
