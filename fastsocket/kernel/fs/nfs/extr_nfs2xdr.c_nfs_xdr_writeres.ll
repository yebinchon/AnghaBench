; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_writeres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs2xdr.c_nfs_xdr_writeres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.nfs_writeres = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NFS_FILE_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, i32*, %struct.nfs_writeres*)* @nfs_xdr_writeres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdr_writeres(%struct.rpc_rqst* %0, i32* %1, %struct.nfs_writeres* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nfs_writeres*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nfs_writeres* %2, %struct.nfs_writeres** %6, align 8
  %7 = load i32, i32* @NFS_FILE_SYNC, align 4
  %8 = load %struct.nfs_writeres*, %struct.nfs_writeres** %6, align 8
  %9 = getelementptr inbounds %struct.nfs_writeres, %struct.nfs_writeres* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.nfs_writeres*, %struct.nfs_writeres** %6, align 8
  %15 = getelementptr inbounds %struct.nfs_writeres, %struct.nfs_writeres* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @nfs_xdr_attrstat(%struct.rpc_rqst* %12, i32* %13, i32 %16)
  ret i32 %17
}

declare dso_local i32 @nfs_xdr_attrstat(%struct.rpc_rqst*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
