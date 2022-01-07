; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_compound_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_compound_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.rpc_rqst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rpc_auth* }
%struct.rpc_auth = type { i64 }
%struct.compound_hdr = type { i64, i64, i32, i8**, i32, i32 }

@RPC_REPHDRSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"encode_compound: tag=%.*s\0A\00", align 1
@NFS4_MAXTAGLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.rpc_rqst*, %struct.compound_hdr*)* @encode_compound_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_compound_hdr(%struct.xdr_stream* %0, %struct.rpc_rqst* %1, %struct.compound_hdr* %2) #0 {
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.compound_hdr*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.rpc_auth*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.rpc_rqst* %1, %struct.rpc_rqst** %5, align 8
  store %struct.compound_hdr* %2, %struct.compound_hdr** %6, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.rpc_auth*, %struct.rpc_auth** %12, align 8
  store %struct.rpc_auth* %13, %struct.rpc_auth** %8, align 8
  %14 = load i64, i64* @RPC_REPHDRSIZE, align 8
  %15 = load %struct.rpc_auth*, %struct.rpc_auth** %8, align 8
  %16 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = add nsw i64 %18, 3
  %20 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %21 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NFS4_MAXTAGLEN, align 8
  %38 = icmp sgt i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %42 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %43 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 4, %44
  %46 = add nsw i64 %45, 8
  %47 = call i8** @reserve_space(%struct.xdr_stream* %41, i64 %46)
  store i8** %47, i8*** %7, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %53 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i8** @xdr_encode_opaque(i8** %48, i32 %51, i64 %54)
  store i8** %55, i8*** %7, align 8
  %56 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %57 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %7, align 8
  store i8* %59, i8** %60, align 8
  %62 = load i8**, i8*** %7, align 8
  %63 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %64 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %63, i32 0, i32 3
  store i8** %62, i8*** %64, align 8
  %65 = load %struct.compound_hdr*, %struct.compound_hdr** %6, align 8
  %66 = getelementptr inbounds %struct.compound_hdr, %struct.compound_hdr* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @cpu_to_be32(i32 %67)
  %69 = load i8**, i8*** %7, align 8
  store i8* %68, i8** %69, align 8
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8** @reserve_space(%struct.xdr_stream*, i64) #1

declare dso_local i8** @xdr_encode_opaque(i8**, i32, i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
