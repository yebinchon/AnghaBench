; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_writeres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_nfs3_xdr_writeres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs_writeres = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_writeres*)* @nfs3_xdr_writeres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_xdr_writeres(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_writeres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfs_writeres*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfs_writeres* %2, %struct.nfs_writeres** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i8* @ntohl(i32 %11)
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.nfs_writeres*, %struct.nfs_writeres** %7, align 8
  %16 = getelementptr inbounds %struct.nfs_writeres, %struct.nfs_writeres* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @xdr_decode_wcc_data(i32* %14, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @nfs_stat_to_errno(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i8* @ntohl(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.nfs_writeres*, %struct.nfs_writeres** %7, align 8
  %31 = getelementptr inbounds %struct.nfs_writeres, %struct.nfs_writeres* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  %34 = load i32, i32* %32, align 4
  %35 = call i8* @ntohl(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.nfs_writeres*, %struct.nfs_writeres** %7, align 8
  %38 = getelementptr inbounds %struct.nfs_writeres, %struct.nfs_writeres* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %6, align 8
  %43 = load i32, i32* %41, align 4
  %44 = load %struct.nfs_writeres*, %struct.nfs_writeres** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_writeres, %struct.nfs_writeres* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %43, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  %52 = load i32, i32* %50, align 4
  %53 = load %struct.nfs_writeres*, %struct.nfs_writeres** %7, align 8
  %54 = getelementptr inbounds %struct.nfs_writeres, %struct.nfs_writeres* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %52, i32* %58, align 4
  %59 = load %struct.nfs_writeres*, %struct.nfs_writeres** %7, align 8
  %60 = getelementptr inbounds %struct.nfs_writeres, %struct.nfs_writeres* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %24, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32* @xdr_decode_wcc_data(i32*, i32) #1

declare dso_local i32 @nfs_stat_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
