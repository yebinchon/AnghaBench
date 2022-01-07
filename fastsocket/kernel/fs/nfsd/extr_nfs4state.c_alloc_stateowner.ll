; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_stateowner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_stateowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_stateowner = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xdr_netobj = type { i32, i32 }

@stateowner_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_stateowner* (%struct.xdr_netobj*)* @alloc_stateowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_stateowner* @alloc_stateowner(%struct.xdr_netobj* %0) #0 {
  %2 = alloca %struct.nfs4_stateowner*, align 8
  %3 = alloca %struct.xdr_netobj*, align 8
  %4 = alloca %struct.nfs4_stateowner*, align 8
  store %struct.xdr_netobj* %0, %struct.xdr_netobj** %3, align 8
  %5 = load i32, i32* @stateowner_slab, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nfs4_stateowner* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.nfs4_stateowner* %7, %struct.nfs4_stateowner** %4, align 8
  %8 = icmp ne %struct.nfs4_stateowner* %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load %struct.xdr_netobj*, %struct.xdr_netobj** %3, align 8
  %11 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kmalloc(i32 %12, i32 %13)
  %15 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = icmp ne i32 %14, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %9
  %20 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %21 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xdr_netobj*, %struct.xdr_netobj** %3, align 8
  %25 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xdr_netobj*, %struct.xdr_netobj** %3, align 8
  %28 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %26, i32 %29)
  %31 = load %struct.xdr_netobj*, %struct.xdr_netobj** %3, align 8
  %32 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %35 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %38 = getelementptr inbounds %struct.nfs4_stateowner, %struct.nfs4_stateowner* %37, i32 0, i32 0
  %39 = call i32 @kref_init(i32* %38)
  %40 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  store %struct.nfs4_stateowner* %40, %struct.nfs4_stateowner** %2, align 8
  br label %46

41:                                               ; preds = %9
  %42 = load i32, i32* @stateowner_slab, align 4
  %43 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %4, align 8
  %44 = call i32 @kmem_cache_free(i32 %42, %struct.nfs4_stateowner* %43)
  br label %45

45:                                               ; preds = %41, %1
  store %struct.nfs4_stateowner* null, %struct.nfs4_stateowner** %2, align 8
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.nfs4_stateowner*, %struct.nfs4_stateowner** %2, align 8
  ret %struct.nfs4_stateowner* %47
}

declare dso_local %struct.nfs4_stateowner* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_stateowner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
