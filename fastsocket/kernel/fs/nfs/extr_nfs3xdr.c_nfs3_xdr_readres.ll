; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvec* }
%struct.kvec = type { i64, i64 }
%struct.nfs_readres = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"NFS: READ count doesn't match RPC opaque count.\0A\00", align 1
@errno_NFSERR_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"NFS: READ reply header overflowed:length %Zu > %Zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"NFS: READ header is short. iovec will be shifted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"NFS: server cheating in read reply: count %u > recvd %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_readres*)* @nfs3_xdr_readres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_readres(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_readres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_readres*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs_readres* %2, %struct.nfs_readres** %7, align 8
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %15 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  store %struct.kvec* %17, %struct.kvec** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = call i8* @ntohl(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.nfs_readres*, %struct.nfs_readres** %7, align 8
  %25 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @xdr_decode_post_op_attr(i32* %23, i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @nfs_stat_to_errno(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %121

33:                                               ; preds = %3
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %34, align 4
  %37 = call i8* @ntohl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  %41 = load i32, i32* %39, align 4
  %42 = call i8* @ntohl(i32 %41)
  %43 = load %struct.nfs_readres*, %struct.nfs_readres** %7, align 8
  %44 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  %47 = load i32, i32* %45, align 4
  %48 = call i8* @ntohl(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %33
  %54 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @errno_NFSERR_IO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %121

57:                                               ; preds = %33
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.kvec*, %struct.kvec** %8, align 8
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = ptrtoint i32* %58 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  store i64 %66, i64* %9, align 8
  %67 = load %struct.kvec*, %struct.kvec** %8, align 8
  %68 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.kvec*, %struct.kvec** %8, align 8
  %75 = getelementptr inbounds %struct.kvec, %struct.kvec* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %73, i64 %76)
  %78 = load i32, i32* @errno_NFSERR_IO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %121

80:                                               ; preds = %57
  %81 = load %struct.kvec*, %struct.kvec** %8, align 8
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %89 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %88, i32 0, i32 0
  %90 = load %struct.kvec*, %struct.kvec** %8, align 8
  %91 = getelementptr inbounds %struct.kvec, %struct.kvec* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = sub i64 %92, %93
  %95 = call i32 @xdr_shift_buf(%struct.TYPE_2__* %89, i64 %94)
  br label %96

96:                                               ; preds = %86, %80
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %99 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %9, align 8
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %10, align 4
  %114 = load %struct.nfs_readres*, %struct.nfs_readres** %7, align 8
  %115 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %114, i32 0, i32 1
  store i8* null, i8** %115, align 8
  br label %116

116:                                              ; preds = %109, %97
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.nfs_readres*, %struct.nfs_readres** %7, align 8
  %119 = getelementptr inbounds %struct.nfs_readres, %struct.nfs_readres* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %116, %72, %53, %30
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @xdr_decode_post_op_attr(i32*, i32) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @xdr_shift_buf(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
