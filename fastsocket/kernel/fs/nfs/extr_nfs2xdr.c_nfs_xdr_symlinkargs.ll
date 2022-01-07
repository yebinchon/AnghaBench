; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_symlinkargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_symlinkargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.xdr_buf }
%struct.xdr_buf = type { i64, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nfs_symlinkargs = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_symlinkargs*)* @nfs_xdr_symlinkargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdr_symlinkargs(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_symlinkargs* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_symlinkargs*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca i64, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_symlinkargs* %2, %struct.nfs_symlinkargs** %6, align 8
  %9 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %9, i32 0, i32 0
  store %struct.xdr_buf* %10, %struct.xdr_buf** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.nfs_symlinkargs*, %struct.nfs_symlinkargs** %6, align 8
  %13 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @xdr_encode_fhandle(i32* %11, i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.nfs_symlinkargs*, %struct.nfs_symlinkargs** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfs_symlinkargs*, %struct.nfs_symlinkargs** %6, align 8
  %21 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @xdr_encode_array(i32* %16, i32 %19, i32 %22)
  store i32* %23, i32** %5, align 8
  %24 = load %struct.nfs_symlinkargs*, %struct.nfs_symlinkargs** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @htonl(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %30 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %31 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @xdr_adjust_iovec(%struct.TYPE_2__* %32, i32* %33)
  %35 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %36 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %38 = load %struct.nfs_symlinkargs*, %struct.nfs_symlinkargs** %6, align 8
  %39 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfs_symlinkargs*, %struct.nfs_symlinkargs** %6, align 8
  %42 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @xdr_encode_pages(%struct.xdr_buf* %37, i32 %40, i32 0, i32 %43)
  %45 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %46 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %52, %3
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.nfs_symlinkargs*, %struct.nfs_symlinkargs** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_symlinkargs, %struct.nfs_symlinkargs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @xdr_encode_sattr(i32* %56, i32 %59)
  store i32* %60, i32** %5, align 8
  %61 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %62 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @xdr_adjust_iovec(%struct.TYPE_2__* %63, i32* %64)
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %65, %66
  %68 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %69 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, %67
  store i64 %71, i64* %69, align 8
  ret i32 0
}

declare dso_local i32* @xdr_encode_fhandle(i32*, i32) #1

declare dso_local i32* @xdr_encode_array(i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @xdr_adjust_iovec(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @xdr_encode_pages(%struct.xdr_buf*, i32, i32, i32) #1

declare dso_local i32* @xdr_encode_sattr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
