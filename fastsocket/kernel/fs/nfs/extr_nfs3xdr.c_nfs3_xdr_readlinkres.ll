; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readlinkres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readlinkres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { i64, i64, %struct.kvec* }
%struct.kvec = type { i64, i64 }
%struct.nfs_fattr = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"nfs: server returned giant symlink!\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"NFS: READLINK reply header overflowed:length %Zu > %Zu\0A\00", align 1
@errno_NFSERR_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"NFS: READLINK header is short. iovec will be shifted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"NFS: server cheating in readlink reply: count %u > recvd %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_fattr*)* @nfs3_xdr_readlinkres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_readlinkres(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_fattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %7, align 8
  %14 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %15 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %14, i32 0, i32 0
  store %struct.xdr_buf* %15, %struct.xdr_buf** %8, align 8
  %16 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %17 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %16, i32 0, i32 2
  %18 = load %struct.kvec*, %struct.kvec** %17, align 8
  store %struct.kvec* %18, %struct.kvec** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %6, align 8
  %21 = load i32, i32* %19, align 4
  %22 = call i8* @ntohl(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %26 = call i32* @xdr_decode_post_op_attr(i32* %24, %struct.nfs_fattr* %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @nfs_stat_to_errno(i32 %30)
  store i32 %31, i32* %4, align 4
  br label %106

32:                                               ; preds = %3
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  %35 = load i32, i32* %33, align 4
  %36 = call i8* @ntohl(i32 %35)
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %40 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENAMETOOLONG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %106

47:                                               ; preds = %32
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.kvec*, %struct.kvec** %9, align 8
  %50 = getelementptr inbounds %struct.kvec, %struct.kvec* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = ptrtoint i32* %48 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  store i64 %56, i64* %10, align 8
  %57 = load %struct.kvec*, %struct.kvec** %9, align 8
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %47
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.kvec*, %struct.kvec** %9, align 8
  %65 = getelementptr inbounds %struct.kvec, %struct.kvec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %63, i64 %66)
  %68 = load i32, i32* @errno_NFSERR_IO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %106

70:                                               ; preds = %47
  %71 = load %struct.kvec*, %struct.kvec** %9, align 8
  %72 = getelementptr inbounds %struct.kvec, %struct.kvec* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %79 = load %struct.kvec*, %struct.kvec** %9, align 8
  %80 = getelementptr inbounds %struct.kvec, %struct.kvec* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @xdr_shift_buf(%struct.xdr_buf* %78, i64 %83)
  br label %85

85:                                               ; preds = %76, %70
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %88 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %10, align 8
  %92 = sub i64 %90, %91
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %97, i64 %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %106

102:                                              ; preds = %86
  %103 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @xdr_terminate_string(%struct.xdr_buf* %103, i64 %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %96, %62, %43, %29
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @xdr_decode_post_op_attr(i32*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @xdr_shift_buf(%struct.xdr_buf*, i64) #1

declare dso_local i32 @xdr_terminate_string(%struct.xdr_buf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
