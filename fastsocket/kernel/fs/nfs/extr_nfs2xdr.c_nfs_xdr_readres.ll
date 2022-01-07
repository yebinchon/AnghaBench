; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_readres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_readres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvec* }
%struct.kvec = type { i64, i64 }
%struct.nfs_readres = type { i32, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"NFS: READ reply header overflowed:length %Zu > %Zu\0A\00", align 1
@errno_NFSERR_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"NFS: READ header is short. iovec will be shifted.\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"NFS: server cheating in read reply: count %u > recvd %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"RPC:      readres OK count %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_readres*)* @nfs_xdr_readres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdr_readres(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_readres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_readres*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs_readres* %2, %struct.nfs_readres** %7, align 8
  %13 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.kvec*, %struct.kvec** %15, align 8
  store %struct.kvec* %16, %struct.kvec** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %17, align 4
  %20 = call i32 @ntohl(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @nfs_stat_to_errno(i32 %23)
  store i32 %24, i32* %4, align 4
  br label %100

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.nfs_readres*, %struct.nfs_readres** %7, align 8
  %28 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @xdr_decode_fattr(i32* %26, i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i32, i32* %31, align 4
  %34 = call i32 @ntohl(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.nfs_readres*, %struct.nfs_readres** %7, align 8
  %36 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.kvec*, %struct.kvec** %8, align 8
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = ptrtoint i32* %37 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  store i64 %45, i64* %9, align 8
  %46 = load %struct.kvec*, %struct.kvec** %8, align 8
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %25
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.kvec*, %struct.kvec** %8, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %55)
  %57 = load i32, i32* @errno_NFSERR_IO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %100

59:                                               ; preds = %25
  %60 = load %struct.kvec*, %struct.kvec** %8, align 8
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %68 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %67, i32 0, i32 0
  %69 = load %struct.kvec*, %struct.kvec** %8, align 8
  %70 = getelementptr inbounds %struct.kvec, %struct.kvec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = sub i64 %71, %72
  %74 = call i32 @xdr_shift_buf(%struct.TYPE_2__* %68, i64 %73)
  br label %75

75:                                               ; preds = %65, %59
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %78 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %88, %76
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.nfs_readres*, %struct.nfs_readres** %7, align 8
  %98 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %93, %51, %22
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

declare dso_local i32* @xdr_decode_fattr(i32*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @xdr_shift_buf(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
