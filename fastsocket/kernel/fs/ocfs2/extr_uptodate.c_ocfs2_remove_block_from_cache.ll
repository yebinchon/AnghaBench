; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_uptodate.c_ocfs2_remove_block_from_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_uptodate.c_ocfs2_remove_block_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32, i32 }
%struct.ocfs2_meta_cache_item = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Owner %llu, remove %llu, items = %u, array = %u\0A\00", align 1
@OCFS2_CACHE_FL_INLINE = common dso_local global i32 0, align 4
@ocfs2_uptodate_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_caching_info*, i64)* @ocfs2_remove_block_from_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_remove_block_from_cache(%struct.ocfs2_caching_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_caching_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_meta_cache_item*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.ocfs2_meta_cache_item* null, %struct.ocfs2_meta_cache_item** %6, align 8
  %7 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %8 = call i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info* %7)
  %9 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %10 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %9)
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11, i32 %14, i32 %19)
  %21 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_caching_info, %struct.ocfs2_caching_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OCFS2_CACHE_FL_INLINE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @ocfs2_search_cache_array(%struct.ocfs2_caching_info* %28, i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ocfs2_remove_metadata_array(%struct.ocfs2_caching_info* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %27
  br label %49

38:                                               ; preds = %2
  %39 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call %struct.ocfs2_meta_cache_item* @ocfs2_search_cache_tree(%struct.ocfs2_caching_info* %39, i64 %40)
  store %struct.ocfs2_meta_cache_item* %41, %struct.ocfs2_meta_cache_item** %6, align 8
  %42 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %43 = icmp ne %struct.ocfs2_meta_cache_item* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %46 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %47 = call i32 @ocfs2_remove_metadata_tree(%struct.ocfs2_caching_info* %45, %struct.ocfs2_meta_cache_item* %46)
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %3, align 8
  %51 = call i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info* %50)
  %52 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %53 = icmp ne %struct.ocfs2_meta_cache_item* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @ocfs2_uptodate_cachep, align 4
  %56 = load %struct.ocfs2_meta_cache_item*, %struct.ocfs2_meta_cache_item** %6, align 8
  %57 = call i32 @kmem_cache_free(i32 %55, %struct.ocfs2_meta_cache_item* %56)
  br label %58

58:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @ocfs2_metadata_cache_lock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_search_cache_array(%struct.ocfs2_caching_info*, i64) #1

declare dso_local i32 @ocfs2_remove_metadata_array(%struct.ocfs2_caching_info*, i32) #1

declare dso_local %struct.ocfs2_meta_cache_item* @ocfs2_search_cache_tree(%struct.ocfs2_caching_info*, i64) #1

declare dso_local i32 @ocfs2_remove_metadata_tree(%struct.ocfs2_caching_info*, %struct.ocfs2_meta_cache_item*) #1

declare dso_local i32 @ocfs2_metadata_cache_unlock(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ocfs2_meta_cache_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
