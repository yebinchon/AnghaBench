; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.xdr_netobj = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_client* (i64)* @alloc_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_client* @alloc_client(i64 %0) #0 {
  %2 = alloca %struct.nfs4_client*, align 8
  %3 = alloca %struct.xdr_netobj, align 4
  %4 = alloca %struct.nfs4_client*, align 8
  %5 = bitcast %struct.xdr_netobj* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nfs4_client* @kzalloc(i32 16, i32 %6)
  store %struct.nfs4_client* %7, %struct.nfs4_client** %4, align 8
  %8 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %9 = icmp eq %struct.nfs4_client* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.nfs4_client* null, %struct.nfs4_client** %2, align 8
  br label %43

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 %13, i32 %14)
  %16 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %17 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32* %15, i32** %18, align 8
  %19 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %20 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %26 = call i32 @kfree(%struct.nfs4_client* %25)
  store %struct.nfs4_client* null, %struct.nfs4_client** %2, align 8
  br label %43

27:                                               ; preds = %11
  %28 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %29 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32* %31, i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  %40 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.nfs4_client*, %struct.nfs4_client** %4, align 8
  store %struct.nfs4_client* %42, %struct.nfs4_client** %2, align 8
  br label %43

43:                                               ; preds = %27, %24, %10
  %44 = load %struct.nfs4_client*, %struct.nfs4_client** %2, align 8
  ret %struct.nfs4_client* %44
}

declare dso_local %struct.nfs4_client* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.nfs4_client*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
