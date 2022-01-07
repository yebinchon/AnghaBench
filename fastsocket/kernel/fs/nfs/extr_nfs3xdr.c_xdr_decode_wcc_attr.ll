; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_xdr_decode_wcc_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3xdr.c_xdr_decode_wcc_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fattr = type { i32, i32, i32, i32 }

@NFS_ATTR_FATTR_PRESIZE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PREMTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nfs_fattr*)* @xdr_decode_wcc_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_decode_wcc_attr(i32* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %7 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %6, i32 0, i32 3
  %8 = call i32* @xdr_decode_hyper(i32* %5, i32* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %10, i32 0, i32 2
  %12 = call i32* @xdr_decode_time3(i32* %9, i32* %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %14, i32 0, i32 1
  %16 = call i32* @xdr_decode_time3(i32* %13, i32* %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %18 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %25 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32* @xdr_decode_hyper(i32*, i32*) #1

declare dso_local i32* @xdr_decode_time3(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
