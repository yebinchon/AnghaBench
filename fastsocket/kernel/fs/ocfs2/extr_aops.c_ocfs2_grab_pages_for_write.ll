; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_grab_pages_for_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_grab_pages_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, %struct.page**, %struct.page* }
%struct.page = type { %struct.address_space* }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.ocfs2_write_ctxt*, i32, i64, i32, %struct.page*)* @ocfs2_grab_pages_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_grab_pages_for_write(%struct.address_space* %0, %struct.ocfs2_write_ctxt* %1, i32 %2, i64 %3, i32 %4, %struct.page* %5) #0 {
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.ocfs2_write_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.inode*, align 8
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.ocfs2_write_ctxt* %1, %struct.ocfs2_write_ctxt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.page* %5, %struct.page** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.address_space*, %struct.address_space** %7, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %18, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  store i64 %24, i64* %16, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %6
  %28 = load %struct.inode*, %struct.inode** %18, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ocfs2_pages_per_cluster(i32 %30)
  %32 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %8, align 8
  %33 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %18, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @ocfs2_align_clusters_to_page_index(i32 %36, i32 %37)
  store i64 %38, i64* %15, align 8
  br label %43

39:                                               ; preds = %6
  %40 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %8, align 8
  %41 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i64, i64* %16, align 8
  store i64 %42, i64* %15, align 8
  br label %43

43:                                               ; preds = %39, %27
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %126, %43
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %8, align 8
  %47 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %129

50:                                               ; preds = %44
  %51 = load i64, i64* %15, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %50
  %59 = load %struct.page*, %struct.page** %12, align 8
  %60 = icmp ne %struct.page* %59, null
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load %struct.page*, %struct.page** %12, align 8
  %63 = call i32 @lock_page(%struct.page* %62)
  %64 = load %struct.page*, %struct.page** %12, align 8
  %65 = getelementptr inbounds %struct.page, %struct.page* %64, i32 0, i32 0
  %66 = load %struct.address_space*, %struct.address_space** %65, align 8
  %67 = load %struct.address_space*, %struct.address_space** %7, align 8
  %68 = icmp ne %struct.address_space* %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.page*, %struct.page** %12, align 8
  %71 = call i32 @unlock_page(%struct.page* %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %130

76:                                               ; preds = %61
  %77 = load %struct.page*, %struct.page** %12, align 8
  %78 = call i32 @page_cache_get(%struct.page* %77)
  %79 = load %struct.page*, %struct.page** %12, align 8
  %80 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %8, align 8
  %81 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %80, i32 0, i32 1
  %82 = load %struct.page**, %struct.page*** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.page*, %struct.page** %82, i64 %84
  store %struct.page* %79, %struct.page** %85, align 8
  br label %111

86:                                               ; preds = %58, %50
  %87 = load %struct.address_space*, %struct.address_space** %7, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i32, i32* @GFP_NOFS, align 4
  %90 = call %struct.page* @find_or_create_page(%struct.address_space* %87, i64 %88, i32 %89)
  %91 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %8, align 8
  %92 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %91, i32 0, i32 1
  %93 = load %struct.page**, %struct.page*** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.page*, %struct.page** %93, i64 %95
  store %struct.page* %90, %struct.page** %96, align 8
  %97 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %8, align 8
  %98 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %97, i32 0, i32 1
  %99 = load %struct.page**, %struct.page*** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.page*, %struct.page** %99, i64 %101
  %103 = load %struct.page*, %struct.page** %102, align 8
  %104 = icmp ne %struct.page* %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %86
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %130

110:                                              ; preds = %86
  br label %111

111:                                              ; preds = %110, %76
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %16, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %8, align 8
  %117 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %116, i32 0, i32 1
  %118 = load %struct.page**, %struct.page*** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.page*, %struct.page** %118, i64 %120
  %122 = load %struct.page*, %struct.page** %121, align 8
  %123 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %8, align 8
  %124 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %123, i32 0, i32 2
  store %struct.page* %122, %struct.page** %124, align 8
  br label %125

125:                                              ; preds = %115, %111
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %44

129:                                              ; preds = %44
  br label %130

130:                                              ; preds = %129, %105, %69
  %131 = load i32, i32* %13, align 4
  ret i32 %131
}

declare dso_local i32 @ocfs2_pages_per_cluster(i32) #1

declare dso_local i64 @ocfs2_align_clusters_to_page_index(i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
