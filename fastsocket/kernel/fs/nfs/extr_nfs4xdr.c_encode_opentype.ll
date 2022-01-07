; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_opentype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_opentype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { i32, i32 }

@O_CREAT = common dso_local global i32 0, align 4
@NFS4_OPEN_NOCREATE = common dso_local global i32 0, align 4
@NFS4_OPEN_CLAIM_NULL = common dso_local global i32 0, align 4
@NFS4_OPEN_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_openargs*)* @encode_opentype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_opentype(%struct.xdr_stream* %0, %struct.nfs_openargs* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs_openargs*, align 8
  %5 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs_openargs* %1, %struct.nfs_openargs** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = call i32* @reserve_space(%struct.xdr_stream* %6, i32 4)
  store i32* %7, i32** %5, align 8
  %8 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %17 [
    i32 0, label %13
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @NFS4_OPEN_NOCREATE, align 4
  %15 = call i32 @cpu_to_be32(i32 %14)
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NFS4_OPEN_CLAIM_NULL, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* @NFS4_OPEN_CREATE, align 4
  %26 = call i32 @cpu_to_be32(i32 %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %29 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %30 = call i32 @encode_createmode(%struct.xdr_stream* %28, %struct.nfs_openargs* %29)
  br label %31

31:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @encode_createmode(%struct.xdr_stream*, %struct.nfs_openargs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
