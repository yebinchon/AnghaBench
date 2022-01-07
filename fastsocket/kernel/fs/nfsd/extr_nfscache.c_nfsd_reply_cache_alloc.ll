; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfscache.c_nfsd_reply_cache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_cacherep = type { i32, i32, i32, i32 }

@drc_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_UNUSED = common dso_local global i32 0, align 4
@RC_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_cacherep* ()* @nfsd_reply_cache_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_cacherep* @nfsd_reply_cache_alloc() #0 {
  %1 = alloca %struct.svc_cacherep*, align 8
  %2 = load i32, i32* @drc_slab, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.svc_cacherep* @kmem_cache_alloc(i32 %2, i32 %3)
  store %struct.svc_cacherep* %4, %struct.svc_cacherep** %1, align 8
  %5 = load %struct.svc_cacherep*, %struct.svc_cacherep** %1, align 8
  %6 = icmp ne %struct.svc_cacherep* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i32, i32* @RC_UNUSED, align 4
  %9 = load %struct.svc_cacherep*, %struct.svc_cacherep** %1, align 8
  %10 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @RC_NOCACHE, align 4
  %12 = load %struct.svc_cacherep*, %struct.svc_cacherep** %1, align 8
  %13 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.svc_cacherep*, %struct.svc_cacherep** %1, align 8
  %15 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %14, i32 0, i32 1
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.svc_cacherep*, %struct.svc_cacherep** %1, align 8
  %18 = getelementptr inbounds %struct.svc_cacherep, %struct.svc_cacherep* %17, i32 0, i32 0
  %19 = call i32 @INIT_HLIST_NODE(i32* %18)
  br label %20

20:                                               ; preds = %7, %0
  %21 = load %struct.svc_cacherep*, %struct.svc_cacherep** %1, align 8
  ret %struct.svc_cacherep* %21
}

declare dso_local %struct.svc_cacherep* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
