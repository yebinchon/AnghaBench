; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_locku.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_locku.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_locku_args = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@NFS4_STATEID_SIZE = common dso_local global i64 0, align 8
@OP_LOCKU = common dso_local global i32 0, align 4
@decode_locku_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_locku_args*, %struct.compound_hdr*)* @encode_locku to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_locku(%struct.xdr_stream* %0, %struct.nfs_locku_args* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_locku_args*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_locku_args* %1, %struct.nfs_locku_args** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i64, i64* @NFS4_STATEID_SIZE, align 8
  %10 = add nsw i64 12, %9
  %11 = add nsw i64 %10, 16
  %12 = call i32* @reserve_space(%struct.xdr_stream* %8, i64 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* @OP_LOCKU, align 4
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %18 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = call i32 @nfs4_lock_type(%struct.TYPE_9__* %20, i32 0)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %26 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %39 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @NFS4_STATEID_SIZE, align 8
  %44 = call i32* @xdr_encode_opaque_fixed(i32* %37, i32 %42, i64 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %47 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @xdr_encode_hyper(i32* %45, i32 %50)
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.nfs_locku_args*, %struct.nfs_locku_args** %5, align 8
  %54 = getelementptr inbounds %struct.nfs_locku_args, %struct.nfs_locku_args* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @nfs4_lock_length(%struct.TYPE_9__* %55)
  %57 = call i32* @xdr_encode_hyper(i32* %52, i32 %56)
  %58 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load i64, i64* @decode_locku_maxsz, align 8
  %63 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %64 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nfs4_lock_type(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i32, i64) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @nfs4_lock_length(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
