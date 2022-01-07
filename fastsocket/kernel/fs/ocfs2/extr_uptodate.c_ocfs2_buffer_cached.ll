; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_uptodate.c_ocfs2_buffer_cached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_uptodate.c_ocfs2_buffer_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_meta_cache_item = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Owner %llu, query block %llu (inline = %u)\0A\00", align 1
@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"index = %d, item = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_caching_info*, %struct.buffer_head*)* @ocfs2_buffer_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_buffer_cached(%struct.ocfs2_caching_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_meta_cache_item*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 -1, i32* %5, align 4
  store %struct.ocfs2_meta_cache_item* null, %struct.ocfs2_meta_cache_item** %6, align 8
  %7 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %8 = call i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info* %7)
  %9 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %10 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %9)
  %11 = trunc i64 %10 to i32
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %14, i32 %23)
  %25 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ocfs2_search_cache_array(%struct.ocfs2_caching_info* %32, i64 %35)
  store i32 %36, i32* %5, align 4
  br label %43

37:                                               ; preds = %2
  %38 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %40 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.ocfs2_meta_cache_item* @ocfs2_search_cache_tree(%struct.ocfs2_caching_info* %38, i64 %41)
  store %struct.ocfs2_meta_cache_item* %42, %struct.ocfs2_meta_cache_item** %6, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %45 = call i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info* %44)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %48 = ptrtoint %struct.ocfs2_meta_cache_item* %47 to i64
  %49 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %54 = icmp ne %struct.ocfs2_meta_cache_item* %53, null
  br label %55

55:                                               ; preds = %52, %43
  %56 = phi i1 [ true, %43 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_search_cache_array(%struct.ocfs2_caching_info*, i64) #1

declare dso_local %struct.ocfs2_meta_cache_item* @ocfs2_search_cache_tree(%struct.ocfs2_caching_info*, i64) #1

declare dso_local i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
