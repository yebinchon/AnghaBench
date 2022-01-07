; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readdirres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_readdirres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { i64, i64, %struct.page**, %struct.kvec* }
%struct.page = type { i32 }
%struct.kvec = type { i64, i64 }
%struct.nfs3_readdirres = type { i32*, i32 }

@.str = private unnamed_addr constant [55 x i8] c"NFS: READDIR reply header overflowed:length %Zu > %Zu\0A\00", align 1
@errno_NFSERR_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"NFS: READDIR header is short. iovec will be shifted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs3_readdirres*)* @nfs3_xdr_readdirres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_readdirres(%struct.rpc_rqst* %0, i32* %1, %struct.nfs3_readdirres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs3_readdirres*, align 8
  %8 = alloca %struct.xdr_buf*, align 8
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs3_readdirres* %2, %struct.nfs3_readdirres** %7, align 8
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %16 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %15, i32 0, i32 0
  store %struct.xdr_buf* %16, %struct.xdr_buf** %8, align 8
  %17 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %18 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %17, i32 0, i32 3
  %19 = load %struct.kvec*, %struct.kvec** %18, align 8
  store %struct.kvec* %19, %struct.kvec** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %6, align 8
  %22 = load i32, i32* %20, align 4
  %23 = call i32 @ntohl(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.nfs3_readdirres*, %struct.nfs3_readdirres** %7, align 8
  %26 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @xdr_decode_post_op_attr(i32* %24, i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @nfs_stat_to_errno(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %116

34:                                               ; preds = %3
  %35 = load %struct.nfs3_readdirres*, %struct.nfs3_readdirres** %7, align 8
  %36 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %6, align 8
  %42 = load i32, i32* %40, align 4
  %43 = load %struct.nfs3_readdirres*, %struct.nfs3_readdirres** %7, align 8
  %44 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8
  %49 = load i32, i32* %47, align 4
  %50 = load %struct.nfs3_readdirres*, %struct.nfs3_readdirres** %7, align 8
  %51 = getelementptr inbounds %struct.nfs3_readdirres, %struct.nfs3_readdirres* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  br label %57

54:                                               ; preds = %34
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %6, align 8
  br label %57

57:                                               ; preds = %54, %39
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.kvec*, %struct.kvec** %9, align 8
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = ptrtoint i32* %58 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  store i64 %66, i64* %11, align 8
  %67 = load %struct.kvec*, %struct.kvec** %9, align 8
  %68 = getelementptr inbounds %struct.kvec, %struct.kvec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.kvec*, %struct.kvec** %9, align 8
  %75 = getelementptr inbounds %struct.kvec, %struct.kvec* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %73, i64 %76)
  %78 = load i32, i32* @errno_NFSERR_IO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %116

80:                                               ; preds = %57
  %81 = load %struct.kvec*, %struct.kvec** %9, align 8
  %82 = getelementptr inbounds %struct.kvec, %struct.kvec* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %89 = load %struct.kvec*, %struct.kvec** %9, align 8
  %90 = getelementptr inbounds %struct.kvec, %struct.kvec* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = sub i64 %91, %92
  %94 = call i32 @xdr_shift_buf(%struct.xdr_buf* %88, i64 %93)
  br label %95

95:                                               ; preds = %86, %80
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %98 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %13, align 8
  %100 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %101 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = sub i64 %102, %103
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %13, align 8
  br label %110

110:                                              ; preds = %108, %96
  %111 = load %struct.xdr_buf*, %struct.xdr_buf** %8, align 8
  %112 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %111, i32 0, i32 2
  %113 = load %struct.page**, %struct.page*** %112, align 8
  store %struct.page** %113, %struct.page*** %10, align 8
  %114 = load i64, i64* %13, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %110, %72, %31
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32* @xdr_decode_post_op_attr(i32*, i32) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @xdr_shift_buf(%struct.xdr_buf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
