; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_block_truncate_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_block_truncate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @gfs2_block_truncate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_block_truncate_page(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.address_space*, %struct.address_space** %4, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.address_space*, %struct.address_space** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call %struct.page* @find_or_create_page(%struct.address_space* %30, i64 %31, i32 %32)
  store %struct.page* %33, %struct.page** %15, align 8
  %34 = load %struct.page*, %struct.page** %15, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %144

37:                                               ; preds = %2
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub i32 %45, 1
  %47 = and i32 %44, %46
  %48 = sub i32 %43, %47
  store i32 %48, i32* %12, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %50, %55
  %57 = zext i32 %56 to i64
  %58 = shl i64 %49, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load %struct.page*, %struct.page** %15, align 8
  %61 = call i32 @page_has_buffers(%struct.page* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %37
  %64 = load %struct.page*, %struct.page** %15, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @create_empty_buffers(%struct.page* %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %63, %37
  %68 = load %struct.page*, %struct.page** %15, align 8
  %69 = call %struct.buffer_head* @page_buffers(%struct.page* %68)
  store %struct.buffer_head* %69, %struct.buffer_head** %14, align 8
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %75, %67
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = load %struct.buffer_head*, %struct.buffer_head** %77, align 8
  store %struct.buffer_head* %78, %struct.buffer_head** %14, align 8
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %13, align 4
  br label %71

84:                                               ; preds = %71
  store i32 0, i32* %16, align 4
  %85 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %86 = call i32 @buffer_mapped(%struct.buffer_head* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %92 = call i32 @gfs2_block_map(%struct.inode* %89, i32 %90, %struct.buffer_head* %91, i32 0)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %94 = call i32 @buffer_mapped(%struct.buffer_head* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %138

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %84
  %99 = load %struct.page*, %struct.page** %15, align 8
  %100 = call i64 @PageUptodate(%struct.page* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %104 = call i32 @set_buffer_uptodate(%struct.buffer_head* %103)
  br label %105

105:                                              ; preds = %102, %98
  %106 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %107 = call i32 @buffer_uptodate(%struct.buffer_head* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* @READ, align 4
  %113 = call i32 @ll_rw_block(i32 %112, i32 1, %struct.buffer_head** %14)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %115 = call i32 @wait_on_buffer(%struct.buffer_head* %114)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %117 = call i32 @buffer_uptodate(%struct.buffer_head* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %109
  br label %138

120:                                              ; preds = %109
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %120, %105
  %122 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %123 = call i32 @gfs2_is_writeback(%struct.gfs2_inode* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %127 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %130 = call i32 @gfs2_trans_add_data(i32 %128, %struct.buffer_head* %129)
  br label %131

131:                                              ; preds = %125, %121
  %132 = load %struct.page*, %struct.page** %15, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @zero_user(%struct.page* %132, i32 %133, i32 %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %137 = call i32 @mark_buffer_dirty(%struct.buffer_head* %136)
  br label %138

138:                                              ; preds = %131, %119, %96
  %139 = load %struct.page*, %struct.page** %15, align 8
  %140 = call i32 @unlock_page(%struct.page* %139)
  %141 = load %struct.page*, %struct.page** %15, align 8
  %142 = call i32 @page_cache_release(%struct.page* %141)
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %36
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_block_map(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_is_writeback(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_trans_add_data(i32, %struct.buffer_head*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
