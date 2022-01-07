; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_mknodargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_mknodargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32, i32 }
%struct.nfs3_mknodargs = type { i64, i32, i32, i32, i32, i32 }

@NF3CHR = common dso_local global i64 0, align 8
@NF3BLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs3_mknodargs*)* @nfs3_xdr_mknodargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_mknodargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs3_mknodargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs3_mknodargs*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs3_mknodargs* %2, %struct.nfs3_mknodargs** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %9 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @xdr_encode_fhandle(i32* %7, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %14 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @xdr_encode_array(i32* %12, i32 %15, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %21 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @htonl(i64 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %29 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @xdr_encode_sattr(i32* %27, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %33 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NF3CHR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %3
  %38 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %39 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NF3BLK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37, %3
  %44 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %45 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @MAJOR(i32 %46)
  %48 = call i8* @htonl(i64 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.nfs3_mknodargs*, %struct.nfs3_mknodargs** %6, align 8
  %53 = getelementptr inbounds %struct.nfs3_mknodargs, %struct.nfs3_mknodargs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @MINOR(i32 %54)
  %56 = call i8* @htonl(i64 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %60

60:                                               ; preds = %43, %37
  %61 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %62 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @xdr_adjust_iovec(i32 %63, i32* %64)
  %66 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %67 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i32* @xdr_encode_array(i32*, i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32* @xdr_encode_sattr(i32*, i32) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32 @xdr_adjust_iovec(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
