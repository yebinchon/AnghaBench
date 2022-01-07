; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_ext4_init_inode_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_ext4_init_inode_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.ext4_group_info = type { i32 }
%struct.ext4_sb_info = type { i32, i32 }
%struct.ext4_group_desc = type { i32, i32 }
%struct.buffer_head = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@EXT4_BG_INODE_ZEROED = common dso_local global i32 0, align 4
@EXT4_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Something is wrong with group %u\0AUsed itable blocks: %ditable unused count: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"going to zero out inode table in group %d\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_init_inode_table(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext4_group_info*, align 8
  %8 = alloca %struct.ext4_sb_info*, align 8
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %16, i32 %17)
  store %struct.ext4_group_info* %18, %struct.ext4_group_info** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %19)
  store %struct.ext4_sb_info* %20, %struct.ext4_sb_info** %8, align 8
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MS_RDONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %170

28:                                               ; preds = %3
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %29, i32 %30, %struct.buffer_head** %10)
  store %struct.ext4_group_desc* %31, %struct.ext4_group_desc** %9, align 8
  %32 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %33 = icmp ne %struct.ext4_group_desc* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %170

35:                                               ; preds = %28
  %36 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %37 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %170

44:                                               ; preds = %35
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = call i32* @ext4_journal_start_sb(%struct.super_block* %45, i32 1)
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @PTR_ERR(i32* %51)
  store i32 %52, i32* %14, align 4
  br label %170

53:                                               ; preds = %44
  %54 = load %struct.ext4_group_info*, %struct.ext4_group_info** %7, align 8
  %55 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %54, i32 0, i32 0
  %56 = call i32 @down_write(i32* %55)
  %57 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %58 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %61 = call i32 @cpu_to_le16(i32 %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %53
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %65)
  %67 = load %struct.super_block*, %struct.super_block** %4, align 8
  %68 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %69 = call i64 @ext4_itable_unused_count(%struct.super_block* %67, %struct.ext4_group_desc* %68)
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %72 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @DIV_ROUND_UP(i64 %70, i32 %73)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %64, %53
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %81 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78, %75
  %85 = load %struct.super_block*, %struct.super_block** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.super_block*, %struct.super_block** %4, align 8
  %89 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %90 = call i64 @ext4_itable_unused_count(%struct.super_block* %88, %struct.ext4_group_desc* %89)
  %91 = call i32 @ext4_error(%struct.super_block* %85, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i64 %90)
  store i32 1, i32* %14, align 4
  br label %170

92:                                               ; preds = %78
  %93 = load %struct.super_block*, %struct.super_block** %4, align 8
  %94 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %95 = call i64 @ext4_inode_table(%struct.super_block* %93, %struct.ext4_group_desc* %94)
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  store i64 %98, i64* %12, align 8
  %99 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %100 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %13, align 4
  %104 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %105 = call i32 @BUFFER_TRACE(%struct.buffer_head* %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %108 = call i32 @ext4_journal_get_write_access(i32* %106, %struct.buffer_head* %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %92
  br label %164

112:                                              ; preds = %92
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %140

119:                                              ; preds = %112
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @ext4_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.super_block*, %struct.super_block** %4, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @GFP_NOFS, align 4
  %126 = call i32 @sb_issue_zeroout(%struct.super_block* %122, i64 %123, i32 %124, i32 %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %164

130:                                              ; preds = %119
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.super_block*, %struct.super_block** %4, align 8
  %135 = getelementptr inbounds %struct.super_block, %struct.super_block* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @GFP_NOFS, align 4
  %138 = call i32 @__blkdev_issue_flush(i32 %136, i32 %137, i32* null)
  br label %139

139:                                              ; preds = %133, %130
  br label %140

140:                                              ; preds = %139, %118
  %141 = load %struct.super_block*, %struct.super_block** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @ext4_lock_group(%struct.super_block* %141, i32 %142)
  %144 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %145 = call i32 @cpu_to_le16(i32 %144)
  %146 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %147 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %153 = call i32 @ext4_group_desc_csum(%struct.ext4_sb_info* %150, i32 %151, %struct.ext4_group_desc* %152)
  %154 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %155 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.super_block*, %struct.super_block** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @ext4_unlock_group(%struct.super_block* %156, i32 %157)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %160 = call i32 @BUFFER_TRACE(%struct.buffer_head* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %161 = load i32*, i32** %11, align 8
  %162 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %163 = call i32 @ext4_handle_dirty_metadata(i32* %161, i32* null, %struct.buffer_head* %162)
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %140, %129, %111
  %165 = load %struct.ext4_group_info*, %struct.ext4_group_info** %7, align 8
  %166 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %165, i32 0, i32 0
  %167 = call i32 @up_write(i32* %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @ext4_journal_stop(i32* %168)
  br label %170

170:                                              ; preds = %164, %84, %50, %43, %34, %27
  %171 = load i32, i32* %14, align 4
  ret i32 %171
}

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i32) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32* @ext4_journal_start_sb(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ext4_itable_unused_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i32, i32, i64) #1

declare dso_local i64 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_debug(i8*, i32) #1

declare dso_local i32 @sb_issue_zeroout(%struct.super_block*, i64, i32, i32) #1

declare dso_local i32 @__blkdev_issue_flush(i32, i32, i32*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_group_desc_csum(%struct.ext4_sb_info*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
