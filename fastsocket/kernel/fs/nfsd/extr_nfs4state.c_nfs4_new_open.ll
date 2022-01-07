; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_new_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfs4_new_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfs4_stateid = type { i32 }
%struct.nfs4_file = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfsd4_open = type { i32 }

@nfserr_resource = common dso_local global i64 0, align 8
@stateid_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfs4_stateid**, %struct.nfs4_file*, %struct.svc_fh*, %struct.nfsd4_open*)* @nfs4_new_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_new_open(%struct.svc_rqst* %0, %struct.nfs4_stateid** %1, %struct.nfs4_file* %2, %struct.svc_fh* %3, %struct.nfsd4_open* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.nfs4_stateid**, align 8
  %9 = alloca %struct.nfs4_file*, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca %struct.nfsd4_open*, align 8
  %12 = alloca %struct.nfs4_stateid*, align 8
  %13 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.nfs4_stateid** %1, %struct.nfs4_stateid*** %8, align 8
  store %struct.nfs4_file* %2, %struct.nfs4_file** %9, align 8
  store %struct.svc_fh* %3, %struct.svc_fh** %10, align 8
  store %struct.nfsd4_open* %4, %struct.nfsd4_open** %11, align 8
  %14 = call %struct.nfs4_stateid* (...) @nfs4_alloc_stateid()
  store %struct.nfs4_stateid* %14, %struct.nfs4_stateid** %12, align 8
  %15 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %12, align 8
  %16 = icmp eq %struct.nfs4_stateid* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64, i64* @nfserr_resource, align 8
  store i64 %18, i64* %6, align 8
  br label %37

19:                                               ; preds = %5
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %21 = load %struct.nfs4_file*, %struct.nfs4_file** %9, align 8
  %22 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %23 = load %struct.nfsd4_open*, %struct.nfsd4_open** %11, align 8
  %24 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @nfs4_get_vfs_file(%struct.svc_rqst* %20, %struct.nfs4_file* %21, %struct.svc_fh* %22, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @stateid_slab, align 4
  %31 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %12, align 8
  %32 = call i32 @kmem_cache_free(i32 %30, %struct.nfs4_stateid* %31)
  %33 = load i64, i64* %13, align 8
  store i64 %33, i64* %6, align 8
  br label %37

34:                                               ; preds = %19
  %35 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %12, align 8
  %36 = load %struct.nfs4_stateid**, %struct.nfs4_stateid*** %8, align 8
  store %struct.nfs4_stateid* %35, %struct.nfs4_stateid** %36, align 8
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %34, %29, %17
  %38 = load i64, i64* %6, align 8
  ret i64 %38
}

declare dso_local %struct.nfs4_stateid* @nfs4_alloc_stateid(...) #1

declare dso_local i64 @nfs4_get_vfs_file(%struct.svc_rqst*, %struct.nfs4_file*, %struct.svc_fh*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nfs4_stateid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
