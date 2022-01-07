; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_cluster_bitmap_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_cluster_bitmap_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_alloc_context = type { i32, i32 }

@OCFS2_AC_USE_MAIN = common dso_local global i32 0, align 4
@ocfs2_cluster_group_search = common dso_local global i32 0, align 4
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@ALLOC_NEW_GROUP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reserve_cluster_bitmap_bits(%struct.ocfs2_super* %0, %struct.ocfs2_alloc_context* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_alloc_context*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %4, align 8
  %6 = load i32, i32* @OCFS2_AC_USE_MAIN, align 4
  %7 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %4, align 8
  %8 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @ocfs2_cluster_group_search, align 4
  %10 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %13 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %4, align 8
  %14 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %15 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %16 = load i32, i32* @ALLOC_NEW_GROUP, align 4
  %17 = call i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super* %12, %struct.ocfs2_alloc_context* %13, i32 %14, i32 %15, i32* null, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %29

28:                                               ; preds = %20, %2
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
