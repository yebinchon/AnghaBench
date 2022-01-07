; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_deleg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_alloc_init_deleg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_delegation = type { %struct.TYPE_4__, i32, i32, i32, i64, i32, %struct.TYPE_3__, i64, i32*, %struct.nfs4_file*, %struct.nfs4_client*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.nfs4_file = type { i32, i64 }
%struct.nfs4_client = type { i32 }
%struct.nfs4_stateid = type { %struct.nfs4_file* }
%struct.svc_fh = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"NFSD alloc_init_deleg\0A\00", align 1
@NFS4_OPEN_DELEGATE_READ = common dso_local global i64 0, align 8
@num_delegations = common dso_local global i64 0, align 8
@max_delegations = common dso_local global i64 0, align 8
@deleg_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@boot_time = common dso_local global i32 0, align 4
@current_delegid = common dso_local global i32 0, align 4
@nfsd4_do_callback_rpc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_delegation* (%struct.nfs4_client*, %struct.nfs4_stateid*, %struct.svc_fh*, i64)* @alloc_init_deleg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_delegation* @alloc_init_deleg(%struct.nfs4_client* %0, %struct.nfs4_stateid* %1, %struct.svc_fh* %2, i64 %3) #0 {
  %5 = alloca %struct.nfs4_delegation*, align 8
  %6 = alloca %struct.nfs4_client*, align 8
  %7 = alloca %struct.nfs4_stateid*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfs4_delegation*, align 8
  %11 = alloca %struct.nfs4_file*, align 8
  store %struct.nfs4_client* %0, %struct.nfs4_client** %6, align 8
  store %struct.nfs4_stateid* %1, %struct.nfs4_stateid** %7, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.nfs4_stateid*, %struct.nfs4_stateid** %7, align 8
  %13 = getelementptr inbounds %struct.nfs4_stateid, %struct.nfs4_stateid* %12, i32 0, i32 0
  %14 = load %struct.nfs4_file*, %struct.nfs4_file** %13, align 8
  store %struct.nfs4_file* %14, %struct.nfs4_file** %11, align 8
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @NFS4_OPEN_DELEGATE_READ, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.nfs4_delegation* null, %struct.nfs4_delegation** %5, align 8
  br label %109

20:                                               ; preds = %4
  %21 = load %struct.nfs4_file*, %struct.nfs4_file** %11, align 8
  %22 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.nfs4_delegation* null, %struct.nfs4_delegation** %5, align 8
  br label %109

26:                                               ; preds = %20
  %27 = load i64, i64* @num_delegations, align 8
  %28 = load i64, i64* @max_delegations, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.nfs4_delegation* null, %struct.nfs4_delegation** %5, align 8
  br label %109

31:                                               ; preds = %26
  %32 = load i32, i32* @deleg_slab, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.nfs4_delegation* @kmem_cache_alloc(i32 %32, i32 %33)
  store %struct.nfs4_delegation* %34, %struct.nfs4_delegation** %10, align 8
  %35 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %36 = icmp eq %struct.nfs4_delegation* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  store %struct.nfs4_delegation* %38, %struct.nfs4_delegation** %5, align 8
  br label %109

39:                                               ; preds = %31
  %40 = load i64, i64* @num_delegations, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @num_delegations, align 8
  %42 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %43 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %46 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %45, i32 0, i32 1
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %49 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %48, i32 0, i32 11
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %52 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %53 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %52, i32 0, i32 10
  store %struct.nfs4_client* %51, %struct.nfs4_client** %53, align 8
  %54 = load %struct.nfs4_file*, %struct.nfs4_file** %11, align 8
  %55 = call i32 @get_nfs4_file(%struct.nfs4_file* %54)
  %56 = load %struct.nfs4_file*, %struct.nfs4_file** %11, align 8
  %57 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %58 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %57, i32 0, i32 9
  store %struct.nfs4_file* %56, %struct.nfs4_file** %58, align 8
  %59 = load %struct.nfs4_file*, %struct.nfs4_file** %11, align 8
  %60 = load i32, i32* @O_RDONLY, align 4
  %61 = call i32 @nfs4_file_get_access(%struct.nfs4_file* %59, i32 %60)
  %62 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %63 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %62, i32 0, i32 8
  store i32* null, i32** %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %66 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %65, i32 0, i32 7
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @boot_time, align 4
  %68 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %69 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @current_delegid, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @current_delegid, align 4
  %73 = sext i32 %71 to i64
  %74 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %75 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i64 %73, i64* %76, align 8
  %77 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %78 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %81 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %84 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %83, i32 0, i32 5
  %85 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %86 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %85, i32 0, i32 0
  %87 = call i32 @fh_copy_shallow(i32* %84, i32* %86)
  %88 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %89 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %91 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %90, i32 0, i32 3
  %92 = call i32 @atomic_set(i32* %91, i32 1)
  %93 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %94 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %93, i32 0, i32 2
  %95 = load %struct.nfs4_file*, %struct.nfs4_file** %11, align 8
  %96 = getelementptr inbounds %struct.nfs4_file, %struct.nfs4_file* %95, i32 0, i32 0
  %97 = call i32 @list_add(i32* %94, i32* %96)
  %98 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %99 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %98, i32 0, i32 1
  %100 = load %struct.nfs4_client*, %struct.nfs4_client** %6, align 8
  %101 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %100, i32 0, i32 0
  %102 = call i32 @list_add(i32* %99, i32* %101)
  %103 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  %104 = getelementptr inbounds %struct.nfs4_delegation, %struct.nfs4_delegation* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* @nfsd4_do_callback_rpc, align 4
  %107 = call i32 @INIT_WORK(i32* %105, i32 %106)
  %108 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %10, align 8
  store %struct.nfs4_delegation* %108, %struct.nfs4_delegation** %5, align 8
  br label %109

109:                                              ; preds = %39, %37, %30, %25, %19
  %110 = load %struct.nfs4_delegation*, %struct.nfs4_delegation** %5, align 8
  ret %struct.nfs4_delegation* %110
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local %struct.nfs4_delegation* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_nfs4_file(%struct.nfs4_file*) #1

declare dso_local i32 @nfs4_file_get_access(%struct.nfs4_file*, i32) #1

declare dso_local i32 @fh_copy_shallow(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
