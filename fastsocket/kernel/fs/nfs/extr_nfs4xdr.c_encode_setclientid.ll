; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_setclientid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs4_setclientid = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.compound_hdr = type { i32, i32 }

@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@OP_SETCLIENTID = common dso_local global i32 0, align 4
@decode_setclientid_maxsz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs4_setclientid*, %struct.compound_hdr*)* @encode_setclientid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_setclientid(%struct.xdr_stream* %0, %struct.nfs4_setclientid* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs4_setclientid*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs4_setclientid* %1, %struct.nfs4_setclientid** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %9 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %10 = add nsw i32 4, %9
  %11 = call i8** @reserve_space(%struct.xdr_stream* %8, i32 %10)
  store i8** %11, i8*** %7, align 8
  %12 = load i32, i32* @OP_SETCLIENTID, align 4
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %7, align 8
  store i8* %13, i8** %14, align 8
  %16 = load i8**, i8*** %7, align 8
  %17 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %18 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %17, i32 0, i32 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %23 = call i32 @xdr_encode_opaque_fixed(i8** %16, i32 %21, i32 %22)
  %24 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %25 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %26 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %29 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @encode_string(%struct.xdr_stream* %24, i32 %27, i32 %30)
  %32 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %33 = call i8** @reserve_space(%struct.xdr_stream* %32, i32 4)
  store i8** %33, i8*** %7, align 8
  %34 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %35 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %40 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %41 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %44 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @encode_string(%struct.xdr_stream* %39, i32 %42, i32 %45)
  %47 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %48 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %49 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %52 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @encode_string(%struct.xdr_stream* %47, i32 %50, i32 %53)
  %55 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %56 = call i8** @reserve_space(%struct.xdr_stream* %55, i32 4)
  store i8** %56, i8*** %7, align 8
  %57 = load %struct.nfs4_setclientid*, %struct.nfs4_setclientid** %5, align 8
  %58 = getelementptr inbounds %struct.nfs4_setclientid, %struct.nfs4_setclientid* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load i8**, i8*** %7, align 8
  store i8* %60, i8** %61, align 8
  %62 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %63 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load i64, i64* @decode_setclientid_maxsz, align 8
  %67 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %68 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  ret void
}

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xdr_encode_opaque_fixed(i8**, i32, i32) #1

declare dso_local i32 @encode_string(%struct.xdr_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
