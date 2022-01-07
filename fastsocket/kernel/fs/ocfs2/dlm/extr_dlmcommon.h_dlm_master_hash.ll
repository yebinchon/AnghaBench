; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_master_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmcommon.h_dlm_master_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.dlm_ctxt = type { %struct.hlist_head** }

@DLM_BUCKETS_PER_PAGE = common dso_local global i32 0, align 4
@DLM_HASH_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (%struct.dlm_ctxt*, i32)* @dlm_master_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @dlm_master_hash(%struct.dlm_ctxt* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %6 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %5, i32 0, i32 0
  %7 = load %struct.hlist_head**, %struct.hlist_head*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DLM_BUCKETS_PER_PAGE, align 4
  %10 = udiv i32 %8, %9
  %11 = load i32, i32* @DLM_HASH_PAGES, align 4
  %12 = urem i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.hlist_head*, %struct.hlist_head** %7, i64 %13
  %15 = load %struct.hlist_head*, %struct.hlist_head** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DLM_BUCKETS_PER_PAGE, align 4
  %18 = urem i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %15, i64 %19
  ret %struct.hlist_head* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
