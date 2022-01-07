; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_cache_extent_block_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_cache_extent_block_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_block = type { i32, i32, i32 }

@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_extent_block*)* @ocfs2_cache_extent_block_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cache_extent_block_free(%struct.ocfs2_cached_dealloc_ctxt* %0, %struct.ocfs2_extent_block* %1) #0 {
  %3 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %4 = alloca %struct.ocfs2_extent_block*, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %0, %struct.ocfs2_cached_dealloc_ctxt** %3, align 8
  store %struct.ocfs2_extent_block* %1, %struct.ocfs2_extent_block** %4, align 8
  %5 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %3, align 8
  %6 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %7 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %4, align 8
  %8 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  %11 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le64_to_cpu(i32 %13)
  %15 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = call i32 @ocfs2_cache_block_dealloc(%struct.ocfs2_cached_dealloc_ctxt* %5, i32 %6, i32 %10, i32 %14, i32 %18)
  ret i32 %19
}

declare dso_local i32 @ocfs2_cache_block_dealloc(%struct.ocfs2_cached_dealloc_ctxt*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
