; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_change_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_change_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_block = type { %struct.ocfs2_refcount_list }
%struct.ocfs2_refcount_list = type { i32, %struct.ocfs2_refcount_rec* }
%struct.ocfs2_refcount_rec = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"change index %d, old count %u, change %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, i32)* @ocfs2_change_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_change_refcount_rec(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_refcount_block*, align 8
  %15 = alloca %struct.ocfs2_refcount_list*, align 8
  %16 = alloca %struct.ocfs2_refcount_rec*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %20, %struct.ocfs2_refcount_block** %14, align 8
  %21 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %22 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %21, i32 0, i32 0
  store %struct.ocfs2_refcount_list* %22, %struct.ocfs2_refcount_list** %15, align 8
  %23 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %24 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %23, i32 0, i32 1
  %25 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %25, i64 %27
  store %struct.ocfs2_refcount_rec* %28, %struct.ocfs2_refcount_rec** %16, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %32 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %33 = call i32 @ocfs2_journal_access_rb(i32* %29, %struct.ocfs2_caching_info* %30, %struct.buffer_head* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %111

39:                                               ; preds = %6
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %42 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44, i32 %45)
  %47 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %48 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %47, i32 0, i32 0
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @le32_add_cpu(i32* %48, i32 %49)
  %51 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %52 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %93, label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %58 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = sub nsw i32 %60, 1
  %62 = icmp ne i32 %56, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %55
  %64 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %65 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %16, align 8
  %66 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %65, i64 1
  %67 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %68 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memmove(%struct.ocfs2_refcount_rec* %64, %struct.ocfs2_refcount_rec* %66, i32 %76)
  %78 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %79 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %78, i32 0, i32 1
  %80 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %79, align 8
  %81 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %82 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %80, i64 %86
  %88 = call i32 @memset(%struct.ocfs2_refcount_rec* %87, i32 0, i32 4)
  br label %89

89:                                               ; preds = %63, %55
  %90 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %15, align 8
  %91 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %90, i32 0, i32 0
  %92 = call i32 @le16_add_cpu(i32* %91, i32 -1)
  br label %101

93:                                               ; preds = %39
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %104 = call i32 @ocfs2_journal_dirty(i32* %102, %struct.buffer_head* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %110

110:                                              ; preds = %107, %101
  br label %111

111:                                              ; preds = %110, %36
  %112 = load i32, i32* %13, align 4
  ret i32 %112
}

declare dso_local i32 @ocfs2_journal_access_rb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memmove(%struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_refcount_rec*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
