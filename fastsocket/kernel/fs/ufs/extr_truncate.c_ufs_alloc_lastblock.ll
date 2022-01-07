; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_alloc_lastblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_alloc_lastblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.address_space*, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, i64, i32, %struct.buffer_head* }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UFS_IND_FRAGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ufs_alloc_lastblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_alloc_lastblock(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %3, align 4
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %4, align 8
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %5, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %21, align 8
  store %struct.ufs_sb_private_info* %22, %struct.ufs_sb_private_info** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call i32 @i_size_read(%struct.inode* %23)
  %25 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %26 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %31 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %161

37:                                               ; preds = %1
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  %40 = load %struct.address_space*, %struct.address_space** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = ashr i32 %41, %46
  %48 = call %struct.page* @ufs_get_locked_page(%struct.address_space* %40, i32 %47)
  store %struct.page* %48, %struct.page** %10, align 8
  %49 = load %struct.page*, %struct.page** %10, align 8
  %50 = call i64 @IS_ERR(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %161

55:                                               ; preds = %37
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %58 = load %struct.inode*, %struct.inode** %2, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = and i32 %56, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.page*, %struct.page** %10, align 8
  %66 = call %struct.buffer_head* @page_buffers(%struct.page* %65)
  store %struct.buffer_head* %66, %struct.buffer_head** %11, align 8
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %75, %55
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 3
  %74 = load %struct.buffer_head*, %struct.buffer_head** %73, align 8
  store %struct.buffer_head* %74, %struct.buffer_head** %11, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %67

78:                                               ; preds = %67
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %82 = call i32 @ufs_getfrag_block(%struct.inode* %79, i32 %80, %struct.buffer_head* %81, i32 1)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %158

87:                                               ; preds = %78
  %88 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %89 = call i64 @buffer_new(%struct.buffer_head* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %93 = call i32 @clear_buffer_new(%struct.buffer_head* %92)
  %94 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @unmap_underlying_metadata(i32 %96, i64 %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %102 = call i32 @set_buffer_uptodate(%struct.buffer_head* %101)
  %103 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %104 = call i32 @mark_buffer_dirty(%struct.buffer_head* %103)
  %105 = load %struct.page*, %struct.page** %10, align 8
  %106 = call i32 @set_page_dirty(%struct.page* %105)
  br label %107

107:                                              ; preds = %91, %87
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @UFS_IND_FRAGMENT, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %157

111:                                              ; preds = %107
  %112 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %113 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @ufs_fragnum(i32 %115)
  %117 = sub nsw i32 %114, %116
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %120 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %12, align 8
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %153, %111
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %156

127:                                              ; preds = %123
  %128 = load %struct.super_block*, %struct.super_block** %4, align 8
  %129 = load i32, i32* %7, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %12, align 8
  %132 = add nsw i64 %130, %131
  %133 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %128, i64 %132)
  store %struct.buffer_head* %133, %struct.buffer_head** %11, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %135 = call i32 @lock_buffer(%struct.buffer_head* %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %137 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.super_block*, %struct.super_block** %4, align 8
  %140 = getelementptr inbounds %struct.super_block, %struct.super_block* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @memset(i32 %138, i32 0, i32 %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %144 = call i32 @set_buffer_uptodate(%struct.buffer_head* %143)
  %145 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %146 = call i32 @mark_buffer_dirty(%struct.buffer_head* %145)
  %147 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %148 = call i32 @unlock_buffer(%struct.buffer_head* %147)
  %149 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %150 = call i32 @sync_dirty_buffer(%struct.buffer_head* %149)
  %151 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %152 = call i32 @brelse(%struct.buffer_head* %151)
  br label %153

153:                                              ; preds = %127
  %154 = load i32, i32* %7, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %123

156:                                              ; preds = %123
  br label %157

157:                                              ; preds = %156, %107
  br label %158

158:                                              ; preds = %157, %86
  %159 = load %struct.page*, %struct.page** %10, align 8
  %160 = call i32 @ufs_put_locked_page(%struct.page* %159)
  br label %161

161:                                              ; preds = %158, %52, %36
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page* @ufs_get_locked_page(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @ufs_getfrag_block(%struct.inode*, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @unmap_underlying_metadata(i32, i64) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @ufs_fragnum(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ufs_put_locked_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
