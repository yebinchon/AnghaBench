; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c___ocfs2_increase_refcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c___ocfs2_increase_refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_refcount_rec = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [50 x i8] c"Tree owner %llu, add refcount start %llu, len %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"increase refcount rec, start %llu, len %u, count %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"insert refcount rec, start %llu, len %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"split refcount rec, start %llu, len %u, count %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*)* @__ocfs2_increase_refcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_increase_refcount(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i64 %3, i32 %4, i32 %5, %struct.ocfs2_alloc_context* %6, %struct.ocfs2_cached_dealloc_ctxt* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_caching_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_refcount_rec, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %15, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %7, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  store i32 0, i32* %17, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %23 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %22)
  %24 = load i64, i64* %12, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %13, align 4
  %27 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %151, %8
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %161

31:                                               ; preds = %28
  %32 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %32, %struct.buffer_head* %33, i64 %34, i32 %35, %struct.ocfs2_refcount_rec* %20, i32* %18, %struct.buffer_head** %19)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %162

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @le32_to_cpu(i8* %44)
  store i32 %45, i32* %21, align 4
  %46 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %78

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @le64_to_cpu(i32 %51)
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ule i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* %21, align 4
  %62 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @le32_to_cpu(i8* %63)
  %65 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %60, i32 %61, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ocfs2_change_refcount_rec(i32* %66, %struct.ocfs2_caching_info* %67, %struct.buffer_head* %68, i32 %69, i32 %70, i32 1)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %162

77:                                               ; preds = %59
  br label %151

78:                                               ; preds = %55, %49, %42
  %79 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %104, label %82

82:                                               ; preds = %78
  %83 = call i8* @cpu_to_le32(i32 1)
  %84 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @le64_to_cpu(i32 %86)
  %88 = load i32, i32* %21, align 4
  %89 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %87, i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %97 = call i32 @ocfs2_insert_refcount_rec(i32* %90, %struct.ocfs2_caching_info* %91, %struct.buffer_head* %92, %struct.buffer_head* %93, %struct.ocfs2_refcount_rec* %20, i32 %94, i32 %95, %struct.ocfs2_alloc_context* %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %82
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %162

103:                                              ; preds = %82
  br label %150

104:                                              ; preds = %78
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @le64_to_cpu(i32 %110)
  %112 = load i32, i32* %21, align 4
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i64 @min(i64 %108, i64 %114)
  %116 = load i64, i64* %12, align 8
  %117 = sub nsw i64 %115, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %21, align 4
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @cpu_to_le64(i64 %119)
  %121 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  store i32 %120, i32* %121, align 8
  %122 = load i32, i32* %21, align 4
  %123 = call i8* @cpu_to_le32(i32 %122)
  %124 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 2
  store i8* %123, i8** %124, align 8
  %125 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %126 = call i32 @le32_add_cpu(i8** %125, i32 1)
  %127 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @le64_to_cpu(i32 %128)
  %130 = load i32, i32* %21, align 4
  %131 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %20, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @le32_to_cpu(i8* %132)
  %134 = call i32 (i32, i8*, i64, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %129, i32 %130, i32 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %138 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %142 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %143 = call i32 @ocfs2_split_refcount_rec(i32* %135, %struct.ocfs2_caching_info* %136, %struct.buffer_head* %137, %struct.buffer_head* %138, %struct.ocfs2_refcount_rec* %20, i32 %139, i32 %140, %struct.ocfs2_alloc_context* %141, %struct.ocfs2_cached_dealloc_ctxt* %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %104
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @mlog_errno(i32 %147)
  br label %162

149:                                              ; preds = %104
  br label %150

150:                                              ; preds = %149, %103
  br label %151

151:                                              ; preds = %150, %77
  %152 = load i32, i32* %21, align 4
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %12, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %12, align 8
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %13, align 4
  %158 = sub i32 %157, %156
  store i32 %158, i32* %13, align 4
  %159 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %160 = call i32 @brelse(%struct.buffer_head* %159)
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  br label %28

161:                                              ; preds = %28
  br label %162

162:                                              ; preds = %161, %146, %100, %74, %39
  %163 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %164 = call i32 @brelse(%struct.buffer_head* %163)
  %165 = load i32, i32* %17, align 4
  ret i32 %165
}

declare dso_local i32 @mlog(i32, i8*, i64, i32, ...) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_change_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_insert_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @le32_add_cpu(i8**, i32) #1

declare dso_local i32 @ocfs2_split_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
