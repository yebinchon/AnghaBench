; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_closeargs = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@NFS4_STATEID_SIZE = common dso_local global i64 0, align 8
@OP_CLOSE = common dso_local global i32 0, align 4
@decode_close_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_closeargs*, %struct.compound_hdr*)* @encode_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_close(%struct.xdr_stream* %0, %struct.nfs_closeargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_closeargs*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_closeargs* %1, %struct.nfs_closeargs** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i64, i64* @NFS4_STATEID_SIZE, align 8
  %10 = add nsw i64 8, %9
  %11 = call i32* @reserve_space(%struct.xdr_stream* %8, i64 %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* @OP_CLOSE, align 4
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %17 = load %struct.nfs_closeargs*, %struct.nfs_closeargs** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_closeargs, %struct.nfs_closeargs* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.nfs_closeargs*, %struct.nfs_closeargs** %5, align 8
  %30 = getelementptr inbounds %struct.nfs_closeargs, %struct.nfs_closeargs* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @NFS4_STATEID_SIZE, align 8
  %35 = call i32 @xdr_encode_opaque_fixed(i32* %28, i32 %33, i64 %34)
  %36 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i64, i64* @decode_close_maxsz, align 8
  %41 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_encode_opaque_fixed(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
