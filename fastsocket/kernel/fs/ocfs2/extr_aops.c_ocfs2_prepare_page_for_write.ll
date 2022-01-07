; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_prepare_page_for_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_prepare_page_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_write_ctxt = type { %struct.page* }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_write_ctxt*, %struct.page*, i32, i32, i32, i32)* @ocfs2_prepare_page_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_page_for_write(%struct.inode* %0, i32* %1, %struct.ocfs2_write_ctxt* %2, %struct.page* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_write_ctxt*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.ocfs2_write_ctxt* %2, %struct.ocfs2_write_ctxt** %11, align 8
  store %struct.page* %3, %struct.page** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OCFS2_SB(i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @ocfs2_figure_cluster_boundaries(i32 %27, i32 %28, i32* %20, i32* %21)
  %30 = load %struct.page*, %struct.page** %12, align 8
  %31 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %11, align 8
  %32 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %31, i32 0, i32 0
  %33 = load %struct.page*, %struct.page** %32, align 8
  %34 = icmp eq %struct.page* %30, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %15, align 4
  %42 = add i32 %40, %41
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @ocfs2_map_page_blocks(%struct.page* %46, i32* %47, %struct.inode* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  br label %61

53:                                               ; preds = %35
  %54 = load %struct.page*, %struct.page** %12, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @ocfs2_map_page_blocks(%struct.page* %54, i32* %55, %struct.inode* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %53, %45
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @mlog_errno(i32 %65)
  br label %117

67:                                               ; preds = %61
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %19, align 4
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %20, align 4
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %21, align 4
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %72, %67
  br label %97

76:                                               ; preds = %8
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load i32, i32* %20, align 4
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %21, align 4
  store i32 %83, i32* %19, align 4
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @ocfs2_map_page_blocks(%struct.page* %84, i32* %85, %struct.inode* %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %76
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %117

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.page*, %struct.page** %12, align 8
  %102 = call i32 @PageUptodate(%struct.page* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  %105 = load %struct.page*, %struct.page** %12, align 8
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @OCFS2_SB(i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* %23, align 4
  %113 = call i32 @ocfs2_clear_page_regions(%struct.page* %105, i32 %109, i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %104, %100, %97
  %115 = load %struct.page*, %struct.page** %12, align 8
  %116 = call i32 @flush_dcache_page(%struct.page* %115)
  br label %117

117:                                              ; preds = %114, %93, %64
  %118 = load i32, i32* %17, align 4
  ret i32 %118
}

declare dso_local i32 @ocfs2_figure_cluster_boundaries(i32, i32, i32*, i32*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_map_page_blocks(%struct.page*, i32*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_clear_page_regions(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
