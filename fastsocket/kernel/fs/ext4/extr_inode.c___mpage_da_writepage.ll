; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c___mpage_da_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c___mpage_da_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }
%struct.writeback_control = type { i32 }
%struct.mpage_da_data = type { i64, i64, i64, i32, i64, i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i32, %struct.buffer_head* }

@MPAGE_DA_EXTENT_TAIL = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@BH_Dirty = common dso_local global i32 0, align 4
@BH_Uptodate = common dso_local global i32 0, align 4
@BH_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, i8*)* @__mpage_da_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mpage_da_writepage(%struct.page* %0, %struct.writeback_control* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.writeback_control*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mpage_da_data*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.mpage_da_data*
  store %struct.mpage_da_data* %14, %struct.mpage_da_data** %8, align 8
  %15 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %16 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %15, i32 0, i32 6
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %9, align 8
  %18 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %19 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %3
  %26 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %27 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %30 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %35 = call i32 @mpage_da_map_and_submit(%struct.mpage_da_data* %34)
  %36 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %36, %struct.page* %37)
  %39 = load %struct.page*, %struct.page** %5, align 8
  %40 = call i32 @unlock_page(%struct.page* %39)
  %41 = load i32, i32* @MPAGE_DA_EXTENT_TAIL, align 4
  store i32 %41, i32* %4, align 4
  br label %153

42:                                               ; preds = %25
  %43 = load %struct.page*, %struct.page** %5, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %47 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %49 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %51 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %50, i32 0, i32 3
  store i32 0, i32* %51, align 8
  %52 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %53 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %42, %3
  %55 = load %struct.page*, %struct.page** %5, align 8
  %56 = getelementptr inbounds %struct.page, %struct.page* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %60 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.page*, %struct.page** %5, align 8
  %62 = getelementptr inbounds %struct.page, %struct.page* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = shl i32 %64, %69
  store i32 %70, i32* %12, align 4
  %71 = load %struct.page*, %struct.page** %5, align 8
  %72 = call i32 @page_has_buffers(%struct.page* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %54
  %75 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %78 = load i32, i32* @BH_Dirty, align 4
  %79 = shl i32 1, %78
  %80 = load i32, i32* @BH_Uptodate, align 4
  %81 = shl i32 1, %80
  %82 = or i32 %79, %81
  %83 = call i32 @mpage_add_bh_to_extent(%struct.mpage_da_data* %75, i32 %76, i32 %77, i32 %82)
  %84 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %85 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i32, i32* @MPAGE_DA_EXTENT_TAIL, align 4
  store i32 %89, i32* %4, align 4
  br label %153

90:                                               ; preds = %74
  br label %152

91:                                               ; preds = %54
  %92 = load %struct.page*, %struct.page** %5, align 8
  %93 = call %struct.buffer_head* @page_buffers(%struct.page* %92)
  store %struct.buffer_head* %93, %struct.buffer_head** %11, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %94, %struct.buffer_head** %10, align 8
  br label %95

95:                                               ; preds = %145, %91
  %96 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %97 = call i32 @buffer_locked(%struct.buffer_head* %96)
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %100 = call i64 @ext4_bh_delay_or_unwritten(i32* null, %struct.buffer_head* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %95
  %103 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %109 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @mpage_add_bh_to_extent(%struct.mpage_da_data* %103, i32 %104, i32 %107, i32 %110)
  %112 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %113 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = load i32, i32* @MPAGE_DA_EXTENT_TAIL, align 4
  store i32 %117, i32* %4, align 4
  br label %153

118:                                              ; preds = %102
  br label %142

119:                                              ; preds = %95
  %120 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %121 = call i64 @buffer_dirty(%struct.buffer_head* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %125 = call i64 @buffer_mapped(%struct.buffer_head* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %129 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %134 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BH_FLAGS, align 4
  %137 = and i32 %135, %136
  %138 = load %struct.mpage_da_data*, %struct.mpage_da_data** %8, align 8
  %139 = getelementptr inbounds %struct.mpage_da_data, %struct.mpage_da_data* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %132, %127
  br label %141

141:                                              ; preds = %140, %123, %119
  br label %142

142:                                              ; preds = %141, %118
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %142
  %146 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %147 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %146, i32 0, i32 2
  %148 = load %struct.buffer_head*, %struct.buffer_head** %147, align 8
  store %struct.buffer_head* %148, %struct.buffer_head** %10, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %150 = icmp ne %struct.buffer_head* %148, %149
  br i1 %150, label %95, label %151

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %90
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %116, %88, %33
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @mpage_da_map_and_submit(%struct.mpage_da_data*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @mpage_add_bh_to_extent(%struct.mpage_da_data*, i32, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i64 @ext4_bh_delay_or_unwritten(i32*, %struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
