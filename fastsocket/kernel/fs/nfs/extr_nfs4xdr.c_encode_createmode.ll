; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_createmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4xdr.c_encode_createmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.iattr* }
%struct.iattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_openargs*)* @encode_createmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_createmode(%struct.xdr_stream* %0, %struct.nfs_openargs* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs_openargs*, align 8
  %5 = alloca %struct.iattr, align 4
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs_openargs* %1, %struct.nfs_openargs** %4, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %8 = call i32* @reserve_space(%struct.xdr_stream* %7, i32 4)
  store i32* %8, i32** %6, align 8
  %9 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %58 [
    i32 128, label %12
    i32 129, label %24
    i32 131, label %36
    i32 130, label %44
  ]

12:                                               ; preds = %2
  %13 = call i32 @cpu_to_be32(i32 128)
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %16 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %17 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.iattr*, %struct.iattr** %18, align 8
  %20 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @encode_attrs(%struct.xdr_stream* %15, %struct.iattr* %19, i32 %22)
  br label %58

24:                                               ; preds = %2
  %25 = call i32 @cpu_to_be32(i32 129)
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %28 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.iattr*, %struct.iattr** %30, align 8
  %32 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %33 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @encode_attrs(%struct.xdr_stream* %27, %struct.iattr* %31, i32 %34)
  br label %58

36:                                               ; preds = %2
  %37 = call i32 @cpu_to_be32(i32 131)
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %40 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %41 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @encode_nfs4_verifier(%struct.xdr_stream* %39, i32* %42)
  br label %58

44:                                               ; preds = %2
  %45 = call i32 @cpu_to_be32(i32 130)
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %48 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %49 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @encode_nfs4_verifier(%struct.xdr_stream* %47, i32* %50)
  %52 = getelementptr inbounds %struct.iattr, %struct.iattr* %5, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %54 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %55 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @encode_attrs(%struct.xdr_stream* %53, %struct.iattr* %5, i32 %56)
  br label %58

58:                                               ; preds = %44, %2, %36, %24, %12
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @encode_attrs(%struct.xdr_stream*, %struct.iattr*, i32) #1

declare dso_local i32 @encode_nfs4_verifier(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
