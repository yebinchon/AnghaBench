; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_cache_block_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_cache_block_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_per_slot_free_list = type { %struct.ocfs2_cached_block_free* }
%struct.ocfs2_cached_block_free = type { i32, %struct.ocfs2_cached_block_free*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Insert: (type %d, slot %u, bit %u, blk %llu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_cache_block_dealloc(%struct.ocfs2_cached_dealloc_ctxt* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_per_slot_free_list*, align 8
  %13 = alloca %struct.ocfs2_cached_block_free*, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %0, %struct.ocfs2_cached_dealloc_ctxt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %6, align 8
  %17 = call %struct.ocfs2_per_slot_free_list* @ocfs2_find_per_slot_free_list(i32 %14, i32 %15, %struct.ocfs2_cached_dealloc_ctxt* %16)
  store %struct.ocfs2_per_slot_free_list* %17, %struct.ocfs2_per_slot_free_list** %12, align 8
  %18 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %12, align 8
  %19 = icmp eq %struct.ocfs2_per_slot_free_list* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  br label %55

25:                                               ; preds = %5
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call %struct.ocfs2_cached_block_free* @kmalloc(i32 24, i32 %26)
  store %struct.ocfs2_cached_block_free* %27, %struct.ocfs2_cached_block_free** %13, align 8
  %28 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %13, align 8
  %29 = icmp eq %struct.ocfs2_cached_block_free* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %55

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i64 %39)
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %13, align 8
  %43 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %13, align 8
  %46 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %12, align 8
  %48 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %47, i32 0, i32 0
  %49 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %48, align 8
  %50 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %13, align 8
  %51 = getelementptr inbounds %struct.ocfs2_cached_block_free, %struct.ocfs2_cached_block_free* %50, i32 0, i32 1
  store %struct.ocfs2_cached_block_free* %49, %struct.ocfs2_cached_block_free** %51, align 8
  %52 = load %struct.ocfs2_cached_block_free*, %struct.ocfs2_cached_block_free** %13, align 8
  %53 = load %struct.ocfs2_per_slot_free_list*, %struct.ocfs2_per_slot_free_list** %12, align 8
  %54 = getelementptr inbounds %struct.ocfs2_per_slot_free_list, %struct.ocfs2_per_slot_free_list* %53, i32 0, i32 0
  store %struct.ocfs2_cached_block_free* %52, %struct.ocfs2_cached_block_free** %54, align 8
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %35, %30, %20
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local %struct.ocfs2_per_slot_free_list* @ocfs2_find_per_slot_free_list(i32, i32, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_cached_block_free* @kmalloc(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
