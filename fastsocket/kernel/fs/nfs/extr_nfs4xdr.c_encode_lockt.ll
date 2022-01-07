; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_lockt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_lockt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_lockt_args = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@OP_LOCKT = common dso_local global i32 0, align 4
@decode_lockt_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_lockt_args*, %struct.compound_hdr*)* @encode_lockt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_lockt(%struct.xdr_stream* %0, %struct.nfs_lockt_args* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_lockt_args*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_lockt_args* %1, %struct.nfs_lockt_args** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i32* @reserve_space(%struct.xdr_stream* %8, i32 24)
  store i32* %9, i32** %7, align 8
  %10 = load i32, i32* @OP_LOCKT, align 4
  %11 = call i8* @cpu_to_be32(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %15 = load %struct.nfs_lockt_args*, %struct.nfs_lockt_args** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_lockt_args, %struct.nfs_lockt_args* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = call i32 @nfs4_lock_type(%struct.TYPE_3__* %17, i32 0)
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.nfs_lockt_args*, %struct.nfs_lockt_args** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_lockt_args, %struct.nfs_lockt_args* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @xdr_encode_hyper(i32* %23, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.nfs_lockt_args*, %struct.nfs_lockt_args** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_lockt_args, %struct.nfs_lockt_args* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @nfs4_lock_length(%struct.TYPE_3__* %33)
  %35 = call i32* @xdr_encode_hyper(i32* %30, i32 %34)
  store i32* %35, i32** %7, align 8
  %36 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %37 = load %struct.nfs_lockt_args*, %struct.nfs_lockt_args** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_lockt_args, %struct.nfs_lockt_args* %37, i32 0, i32 0
  %39 = call i32 @encode_lockowner(%struct.xdr_stream* %36, i32* %38)
  %40 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %41 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i64, i64* @decode_lockt_maxsz, align 8
  %45 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %46 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nfs4_lock_type(%struct.TYPE_3__*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @nfs4_lock_length(%struct.TYPE_3__*) #1

declare dso_local i32 @encode_lockowner(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
