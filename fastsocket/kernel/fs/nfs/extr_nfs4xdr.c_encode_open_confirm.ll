; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_open_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_open_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_open_confirmargs = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@NFS4_STATEID_SIZE = common dso_local global i64 0, align 8
@OP_OPEN_CONFIRM = common dso_local global i32 0, align 4
@decode_open_confirm_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_open_confirmargs*, %struct.compound_hdr*)* @encode_open_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_open_confirm(%struct.xdr_stream* %0, %struct.nfs_open_confirmargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_open_confirmargs*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_open_confirmargs* %1, %struct.nfs_open_confirmargs** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i64, i64* @NFS4_STATEID_SIZE, align 8
  %10 = add nsw i64 4, %9
  %11 = add nsw i64 %10, 4
  %12 = call i8** @reserve_space(%struct.xdr_stream* %8, i64 %11)
  store i8** %12, i8*** %7, align 8
  %13 = load i32, i32* @OP_OPEN_CONFIRM, align 4
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %7, align 8
  store i8* %14, i8** %15, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load %struct.nfs_open_confirmargs*, %struct.nfs_open_confirmargs** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_open_confirmargs, %struct.nfs_open_confirmargs* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @NFS4_STATEID_SIZE, align 8
  %24 = call i8** @xdr_encode_opaque_fixed(i8** %17, i32 %22, i64 %23)
  store i8** %24, i8*** %7, align 8
  %25 = load %struct.nfs_open_confirmargs*, %struct.nfs_open_confirmargs** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_open_confirmargs, %struct.nfs_open_confirmargs* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load i8**, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  %34 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i64, i64* @decode_open_confirm_maxsz, align 8
  %39 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  ret void
}

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8** @xdr_encode_opaque_fixed(i8**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
