; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_commitargs = type { i32, i32 }
%struct.compound_hdr = type { i32, i32 }

@OP_COMMIT = common dso_local global i32 0, align 4
@decode_commit_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_commitargs*, %struct.compound_hdr*)* @encode_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_commit(%struct.xdr_stream* %0, %struct.nfs_commitargs* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_commitargs*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_commitargs* %1, %struct.nfs_commitargs** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = call i8** @reserve_space(%struct.xdr_stream* %8, i32 16)
  store i8** %9, i8*** %7, align 8
  %10 = load i32, i32* @OP_COMMIT, align 4
  %11 = call i8* @cpu_to_be32(i32 %10)
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %7, align 8
  store i8* %11, i8** %12, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load %struct.nfs_commitargs*, %struct.nfs_commitargs** %5, align 8
  %16 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8** @xdr_encode_hyper(i8** %14, i32 %17)
  store i8** %18, i8*** %7, align 8
  %19 = load %struct.nfs_commitargs*, %struct.nfs_commitargs** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_commitargs, %struct.nfs_commitargs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = load i8**, i8*** %7, align 8
  store i8* %22, i8** %23, align 8
  %24 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i64, i64* @decode_commit_maxsz, align 8
  %29 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %30 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  ret void
}

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8** @xdr_encode_hyper(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
