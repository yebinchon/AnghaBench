; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_decrease_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_decrease_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_refcount_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ocfs2_refcount_rec* }
%struct.ocfs2_refcount_rec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [79 x i8] c"split refcount rec, start %llu, len %u, count %u, original start %llu, len %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, i32, i64, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_decrease_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_decrease_refcount_rec(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, i32 %4, i64 %5, i32 %6, %struct.ocfs2_alloc_context* %7, %struct.ocfs2_cached_dealloc_ctxt* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_caching_info*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_refcount_block*, align 8
  %21 = alloca %struct.ocfs2_refcount_rec*, align 8
  %22 = alloca %struct.ocfs2_refcount_rec, align 4
  store i32* %0, i32** %10, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %11, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %8, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %26, %struct.ocfs2_refcount_block** %20, align 8
  %27 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %28 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %30, i64 %32
  store %struct.ocfs2_refcount_rec* %33, %struct.ocfs2_refcount_rec** %21, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %36 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le64_to_cpu(i32 %37)
  %39 = icmp slt i64 %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i64, i64* %15, align 8
  %43 = load i32, i32* %16, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %47 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le64_to_cpu(i32 %48)
  %50 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %51 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %49, %54
  %56 = icmp sgt i64 %45, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load i64, i64* %15, align 8
  %60 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %61 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le64_to_cpu(i32 %62)
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %9
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %68 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @ocfs2_change_refcount_rec(i32* %73, %struct.ocfs2_caching_info* %74, %struct.buffer_head* %75, i32 %76, i32 1, i32 -1)
  store i32 %77, i32* %19, align 4
  br label %114

78:                                               ; preds = %65, %9
  %79 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %80 = bitcast %struct.ocfs2_refcount_rec* %22 to i8*
  %81 = bitcast %struct.ocfs2_refcount_rec* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 12, i1 false)
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @cpu_to_le64(i64 %82)
  %84 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %22, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %22, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %22, i32 0, i32 2
  %89 = call i32 @le32_add_cpu(i32* %88, i32 -1)
  %90 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %22, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le64_to_cpu(i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %22, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  %97 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %98 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le64_to_cpu(i32 %99)
  %101 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %21, align 8
  %102 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i64 %92, i32 %93, i32 %96, i64 %100, i32 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %112 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %113 = call i32 @ocfs2_split_refcount_rec(i32* %106, %struct.ocfs2_caching_info* %107, %struct.buffer_head* %108, %struct.buffer_head* %109, %struct.ocfs2_refcount_rec* %22, i32 %110, i32 1, %struct.ocfs2_alloc_context* %111, %struct.ocfs2_cached_dealloc_ctxt* %112)
  store i32 %113, i32* %19, align 4
  br label %114

114:                                              ; preds = %78, %72
  %115 = load i32, i32* %19, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @mlog_errno(i32 %118)
  br label %145

120:                                              ; preds = %114
  %121 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %122 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %144, label %126

126:                                              ; preds = %120
  %127 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %129 = icmp ne %struct.buffer_head* %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i32*, i32** %10, align 8
  %132 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %11, align 8
  %133 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %135 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %136 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %18, align 8
  %137 = call i32 @ocfs2_remove_refcount_extent(i32* %131, %struct.ocfs2_caching_info* %132, %struct.buffer_head* %133, %struct.buffer_head* %134, %struct.ocfs2_alloc_context* %135, %struct.ocfs2_cached_dealloc_ctxt* %136)
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @mlog_errno(i32 %141)
  br label %143

143:                                              ; preds = %140, %130
  br label %144

144:                                              ; preds = %143, %126, %120
  br label %145

145:                                              ; preds = %144, %117
  %146 = load i32, i32* %19, align 4
  ret i32 %146
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_change_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32, i64, i32) #1

declare dso_local i32 @ocfs2_split_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_remove_refcount_extent(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
