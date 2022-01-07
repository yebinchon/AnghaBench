; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_file.c_reiserfs_commit_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_file.c_reiserfs_commit_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i64 }
%struct.buffer_head = type { %struct.buffer_head* }
%struct.reiserfs_transaction_handle = type { i64 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_commit_page(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.super_block*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.reiserfs_transaction_handle, align 8
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %15, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @reiserfs_file_data_log(%struct.inode* %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 2
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  store %struct.super_block* %31, %struct.super_block** %18, align 8
  %32 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %33 = load %struct.super_block*, %struct.super_block** %18, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %37 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %20, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %4
  %45 = load %struct.super_block*, %struct.super_block** %18, align 8
  %46 = call i32 @reiserfs_write_lock(%struct.super_block* %45)
  %47 = load %struct.super_block*, %struct.super_block** %18, align 8
  %48 = load i32, i32* %19, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %20, %struct.super_block* %47, i32 %49)
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %145

54:                                               ; preds = %44
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %55)
  br label %57

57:                                               ; preds = %54, %4
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = call %struct.buffer_head* @page_buffers(%struct.page* %58)
  store %struct.buffer_head* %59, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %59, %struct.buffer_head** %13, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %132, %57
  %61 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %63 = icmp ne %struct.buffer_head* %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ true, %60 ], [ %67, %64 ]
  br i1 %69, label %70, label %137

70:                                               ; preds = %68
  %71 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %72 = call i32 @buffer_new(%struct.buffer_head* %71)
  store i32 %72, i32* %16, align 4
  %73 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %74 = call i32 @clear_buffer_new(%struct.buffer_head* %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ule i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp uge i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81, %70
  %86 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %87 = call i32 @buffer_uptodate(%struct.buffer_head* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %85
  br label %131

91:                                               ; preds = %81
  %92 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %93 = call i32 @set_buffer_uptodate(%struct.buffer_head* %92)
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.super_block*, %struct.super_block** %18, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %99 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %97, %struct.buffer_head* %98, i32 1)
  %100 = load %struct.super_block*, %struct.super_block** %18, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %102 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %20, %struct.super_block* %100, %struct.buffer_head* %101)
  br label %130

103:                                              ; preds = %91
  %104 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %105 = call i32 @buffer_dirty(%struct.buffer_head* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %103
  %108 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %109 = call i32 @mark_buffer_dirty(%struct.buffer_head* %108)
  %110 = load %struct.inode*, %struct.inode** %5, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 2
  %112 = load %struct.super_block*, %struct.super_block** %111, align 8
  %113 = call i64 @reiserfs_data_ordered(%struct.super_block* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load %struct.page*, %struct.page** %6, align 8
  %120 = getelementptr inbounds %struct.page, %struct.page* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %15, align 8
  %123 = icmp uge i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118, %115
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %127 = call i32 @reiserfs_add_ordered_list(%struct.inode* %125, %struct.buffer_head* %126)
  br label %128

128:                                              ; preds = %124, %118, %107
  br label %129

129:                                              ; preds = %128, %103
  br label %130

130:                                              ; preds = %129, %96
  br label %131

131:                                              ; preds = %130, %90
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %9, align 4
  %134 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %135 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %134, i32 0, i32 0
  %136 = load %struct.buffer_head*, %struct.buffer_head** %135, align 8
  store %struct.buffer_head* %136, %struct.buffer_head** %13, align 8
  br label %60

137:                                              ; preds = %68
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load %struct.super_block*, %struct.super_block** %18, align 8
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %20, %struct.super_block* %141, i32 %143)
  store i32 %144, i32* %21, align 4
  br label %145

145:                                              ; preds = %140, %53
  %146 = load %struct.super_block*, %struct.super_block** %18, align 8
  %147 = call i32 @reiserfs_write_unlock(%struct.super_block* %146)
  br label %148

148:                                              ; preds = %145, %137
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load %struct.page*, %struct.page** %6, align 8
  %153 = call i32 @SetPageUptodate(%struct.page* %152)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %21, align 4
  ret i32 %155
}

declare dso_local i32 @reiserfs_file_data_log(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, %struct.buffer_head*, i32) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @reiserfs_data_ordered(%struct.super_block*) #1

declare dso_local i32 @reiserfs_add_ordered_list(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
