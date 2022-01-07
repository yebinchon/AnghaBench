; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_unstuffer_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_unstuffer_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.inode }
%struct.inode = type { i32, i32, i32 }
%struct.buffer_head = type { i32, i64 }
%struct.page = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@BH_Uptodate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, i32, %struct.page*)* @gfs2_unstuffer_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_unstuffer_page(%struct.gfs2_inode* %0, %struct.buffer_head* %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.page* %3, %struct.page** %9, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 1
  store %struct.inode* %16, %struct.inode** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.page*, %struct.page** %9, align 8
  %18 = icmp ne %struct.page* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.page*, %struct.page** %9, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19, %4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = call %struct.page* @find_or_create_page(i32 %27, i32 0, i32 %28)
  store %struct.page* %29, %struct.page** %9, align 8
  %30 = load %struct.page*, %struct.page** %9, align 8
  %31 = icmp ne %struct.page* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %135

35:                                               ; preds = %24
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = call i32 @PageUptodate(%struct.page* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %81, label %40

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %9, align 8
  %42 = call i8* @kmap(%struct.page* %41)
  store i8* %42, i8** %13, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i32 @i_size_read(%struct.inode* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = icmp ugt i64 %46, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %53, %40
  %61 = load i8*, i8** %13, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @memcpy(i8* %61, i64 %65, i32 %66)
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %68, i64 %70
  %72 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %72, %74
  %76 = call i32 @memset(i8* %71, i32 0, i64 %75)
  %77 = load %struct.page*, %struct.page** %9, align 8
  %78 = call i32 @kunmap(%struct.page* %77)
  %79 = load %struct.page*, %struct.page** %9, align 8
  %80 = call i32 @SetPageUptodate(%struct.page* %79)
  br label %81

81:                                               ; preds = %60, %36
  %82 = load %struct.page*, %struct.page** %9, align 8
  %83 = call i32 @page_has_buffers(%struct.page* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load %struct.page*, %struct.page** %9, align 8
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 1, %89
  %91 = load i32, i32* @BH_Uptodate, align 4
  %92 = shl i32 1, %91
  %93 = call i32 @create_empty_buffers(%struct.page* %86, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %85, %81
  %95 = load %struct.page*, %struct.page** %9, align 8
  %96 = call %struct.buffer_head* @page_buffers(%struct.page* %95)
  store %struct.buffer_head* %96, %struct.buffer_head** %11, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %98 = call i32 @buffer_mapped(%struct.buffer_head* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @map_bh(%struct.buffer_head* %101, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %94
  %108 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %109 = call i32 @set_buffer_uptodate(%struct.buffer_head* %108)
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %111 = call i32 @gfs2_is_jdata(%struct.gfs2_inode* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %115 = call i32 @mark_buffer_dirty(%struct.buffer_head* %114)
  br label %116

116:                                              ; preds = %113, %107
  %117 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %118 = call i32 @gfs2_is_writeback(%struct.gfs2_inode* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %122 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %125 = call i32 @gfs2_trans_add_data(i32 %123, %struct.buffer_head* %124)
  br label %126

126:                                              ; preds = %120, %116
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.page*, %struct.page** %9, align 8
  %131 = call i32 @unlock_page(%struct.page* %130)
  %132 = load %struct.page*, %struct.page** %9, align 8
  %133 = call i32 @page_cache_release(%struct.page* %132)
  br label %134

134:                                              ; preds = %129, %126
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %32
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.page* @find_or_create_page(i32, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_is_writeback(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_add_data(i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
