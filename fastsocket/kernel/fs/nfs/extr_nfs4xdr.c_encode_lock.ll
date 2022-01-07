; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_lock_args = type { %struct.TYPE_14__*, %struct.TYPE_12__*, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i64, %struct.TYPE_15__*, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@OP_LOCK = common dso_local global i64 0, align 8
@NFS4_STATEID_SIZE = common dso_local global i32 0, align 4
@decode_lock_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_lock_args*, %struct.compound_hdr*)* @encode_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_lock(%struct.xdr_stream* %0, %struct.nfs_lock_args* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_lock_args*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_lock_args* %1, %struct.nfs_lock_args** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i8** @reserve_space(%struct.xdr_stream* %8, i32 32)
  store i8** %9, i8*** %7, align 8
  %10 = load i64, i64* @OP_LOCK, align 8
  %11 = call i8* @cpu_to_be32(i64 %10)
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %7, align 8
  store i8* %11, i8** %12, align 8
  %14 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %14, i32 0, i32 6
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @nfs4_lock_type(%struct.TYPE_15__* %16, i32 %19)
  %21 = call i8* @cpu_to_be32(i64 %20)
  %22 = load i8**, i8*** %7, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %7, align 8
  store i8* %21, i8** %22, align 8
  %24 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @cpu_to_be32(i64 %26)
  %28 = load i8**, i8*** %7, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %7, align 8
  store i8* %27, i8** %28, align 8
  %30 = load i8**, i8*** %7, align 8
  %31 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %31, i32 0, i32 6
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8** @xdr_encode_hyper(i8** %30, i32 %35)
  store i8** %36, i8*** %7, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %39 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %38, i32 0, i32 6
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = call i32 @nfs4_lock_length(%struct.TYPE_15__* %40)
  %42 = call i8** @xdr_encode_hyper(i8** %37, i32 %41)
  store i8** %42, i8*** %7, align 8
  %43 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %44 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @cpu_to_be32(i64 %45)
  %47 = load i8**, i8*** %7, align 8
  store i8* %46, i8** %47, align 8
  %48 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %3
  %53 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %54 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %55 = add nsw i32 4, %54
  %56 = add nsw i32 %55, 4
  %57 = call i8** @reserve_space(%struct.xdr_stream* %53, i32 %56)
  store i8** %57, i8*** %7, align 8
  %58 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %59 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %58, i32 0, i32 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @cpu_to_be32(i64 %64)
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  %68 = load i8**, i8*** %7, align 8
  %69 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %70 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %75 = call i8** @xdr_encode_opaque_fixed(i8** %68, i32 %73, i32 %74)
  store i8** %75, i8*** %7, align 8
  %76 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %77 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @cpu_to_be32(i64 %82)
  %84 = load i8**, i8*** %7, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %7, align 8
  store i8* %83, i8** %84, align 8
  %86 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %87 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %88 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %87, i32 0, i32 2
  %89 = call i32 @encode_lockowner(%struct.xdr_stream* %86, i32* %88)
  br label %112

90:                                               ; preds = %3
  %91 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %92 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %93 = add nsw i32 %92, 4
  %94 = call i8** @reserve_space(%struct.xdr_stream* %91, i32 %93)
  store i8** %94, i8*** %7, align 8
  %95 = load i8**, i8*** %7, align 8
  %96 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %97 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NFS4_STATEID_SIZE, align 4
  %102 = call i8** @xdr_encode_opaque_fixed(i8** %95, i32 %100, i32 %101)
  store i8** %102, i8*** %7, align 8
  %103 = load %struct.nfs_lock_args*, %struct.nfs_lock_args** %5, align 8
  %104 = getelementptr inbounds %struct.nfs_lock_args, %struct.nfs_lock_args* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i8* @cpu_to_be32(i64 %109)
  %111 = load i8**, i8*** %7, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %90, %52
  %113 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %114 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load i64, i64* @decode_lock_maxsz, align 8
  %118 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %119 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  ret void
}

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @nfs4_lock_type(%struct.TYPE_15__*, i32) #1

declare dso_local i8** @xdr_encode_hyper(i8**, i32) #1

declare dso_local i32 @nfs4_lock_length(%struct.TYPE_15__*) #1

declare dso_local i8** @xdr_encode_opaque_fixed(i8**, i32, i32) #1

declare dso_local i32 @encode_lockowner(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
