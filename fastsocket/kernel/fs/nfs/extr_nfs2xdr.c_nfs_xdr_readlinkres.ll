; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_readlinkres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_readlinkres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { i64, i64, %struct.kvec* }
%struct.kvec = type { i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"nfs: server returned giant symlink!\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"NFS: READLINK reply header overflowed:length %Zu > %Zu\0A\00", align 1
@errno_NFSERR_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"NFS: READLINK header is short. iovec will be shifted.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"NFS: server cheating in readlink reply: count %u > recvd %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, i8*)* @nfs_xdr_readlinkres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdr_readlinkres(%struct.rpc_rqst* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
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
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @nfs_stat_to_errno(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %102

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  %31 = load i32, i32* %29, align 4
  %32 = call i8* @ntohl(i32 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %36 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENAMETOOLONG, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %102

43:                                               ; preds = %28
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.kvec*, %struct.kvec** %9, align 8
  %46 = getelementptr inbounds %struct.kvec, %struct.kvec* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = ptrtoint i32* %44 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  store i64 %52, i64* %10, align 8
  %53 = load %struct.kvec*, %struct.kvec** %9, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %43
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.kvec*, %struct.kvec** %9, align 8
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %62)
  %64 = load i32, i32* @errno_NFSERR_IO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %102

66:                                               ; preds = %43
  %67 = load %struct.kvec*, %struct.kvec** %9, align 8
  %68 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %75 = load %struct.kvec*, %struct.kvec** %9, align 8
  %76 = getelementptr inbounds %struct.kvec, %struct.kvec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = sub i64 %77, %78
  %80 = call i32 @xdr_shift_buf(%struct.xdr_buf* %74, i64 %79)
  br label %81

81:                                               ; preds = %72, %66
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %84 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %86, %87
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %93, i64 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %102

98:                                               ; preds = %82
  %99 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @xdr_terminate_string(%struct.xdr_buf* %99, i64 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %92, %58, %39, %25
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i8* @ntohl(i32) #1

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
