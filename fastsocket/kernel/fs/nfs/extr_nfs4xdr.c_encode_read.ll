; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_readargs = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@OP_READ = common dso_local global i32 0, align 4
@NFS4_STATEID_SIZE = common dso_local global i32 0, align 4
@decode_read_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_readargs*, %struct.compound_hdr*)* @encode_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_read(%struct.xdr_stream* %0, %struct.nfs_readargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_readargs*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_readargs* %1, %struct.nfs_readargs** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @reserve_space(%struct.xdr_stream* %8, i32 4)
  store i32* %9, i32** %7, align 8
  %10 = load i32, i32* @OP_READ, align 4
  %11 = call i32 @cpu_to_be32(i32 %10)
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = load %struct.nfs_readargs*, %struct.nfs_readargs** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %19 = call i32 @encode_opaque_fixed(%struct.xdr_stream* %13, i32 %17, i32 %18)
  %20 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %21 = call i32* @reserve_space(%struct.xdr_stream* %20, i32 12)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.nfs_readargs*, %struct.nfs_readargs** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @xdr_encode_hyper(i32* %22, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load %struct.nfs_readargs*, %struct.nfs_readargs** %5, align 8
  %28 = getelementptr inbounds %struct.nfs_readargs, %struct.nfs_readargs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_be32(i32 %29)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i64, i64* @decode_read_maxsz, align 8
  %37 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @encode_opaque_fixed(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
