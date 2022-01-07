; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_req_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_direct.c_nfs_direct_req_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_direct_req = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@nfs_direct_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nfs_direct_write_schedule_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_direct_req* ()* @nfs_direct_req_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_direct_req* @nfs_direct_req_alloc() #0 {
  %1 = alloca %struct.nfs_direct_req*, align 8
  %2 = alloca %struct.nfs_direct_req*, align 8
  %3 = load i32, i32* @nfs_direct_cachep, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.nfs_direct_req* @kmem_cache_zalloc(i32 %3, i32 %4)
  store %struct.nfs_direct_req* %5, %struct.nfs_direct_req** %2, align 8
  %6 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %7 = icmp ne %struct.nfs_direct_req* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.nfs_direct_req* null, %struct.nfs_direct_req** %1, align 8
  br label %31

9:                                                ; preds = %0
  %10 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %10, i32 0, i32 4
  %12 = call i32 @kref_init(i32* %11)
  %13 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %14 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %13, i32 0, i32 4
  %15 = call i32 @kref_get(i32* %14)
  %16 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %17 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %16, i32 0, i32 3
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %23, i32 0, i32 1
  %25 = load i32, i32* @nfs_direct_write_schedule_work, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %28 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  store %struct.nfs_direct_req* %30, %struct.nfs_direct_req** %1, align 8
  br label %31

31:                                               ; preds = %9, %8
  %32 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %1, align 8
  ret %struct.nfs_direct_req* %32
}

declare dso_local %struct.nfs_direct_req* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
