; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"(0x%p, %llu, 0x%p, %d)\0A\00", align 1
@OCFS2_INODE_SYSTEM_FILE = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"get_block on system inode 0x%p (%lu)\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Error %d from get_blocks(0x%p, %llu, 1, %llu, NULL)\0A\00", align 1
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"iblock = %llu p_blkno = %llu blkno=(%llu)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Size %llu, clusters %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Inode %lu, past_eof = %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_get_block(%struct.inode* %0, i64 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = ashr i64 %18, %21
  store i64 %22, i64* %11, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.ocfs2_super* @OCFS2_SB(i32 %25)
  store %struct.ocfs2_super* %26, %struct.ocfs2_super** %15, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mlog_entry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.inode* %27, i64 %28, %struct.buffer_head* %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OCFS2_INODE_SYSTEM_FILE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load i32, i32* @ML_NOTICE, align 4
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @mlog(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %41, i64 %44)
  br label %46

46:                                               ; preds = %39, %4
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISLNK(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ocfs2_symlink_get_block(%struct.inode* %53, i64 %54, %struct.buffer_head* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %164

58:                                               ; preds = %46
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %59, i64 %60, i64* %12, i64* %13, i32* %10)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @ML_ERROR, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 (i32, i8*, ...) @mlog(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %66, %struct.inode* %67, i64 %68, i64 %69)
  br label %164

71:                                               ; preds = %58
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %13, align 8
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i64, i64* %12, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %85 = call i64 @ocfs2_sparse_alloc(%struct.ocfs2_super* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %89 = call i32 @clear_buffer_dirty(%struct.buffer_head* %88)
  %90 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %91 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %90)
  br label %164

92:                                               ; preds = %83, %80, %77
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @map_bh(%struct.buffer_head* %101, i32 %104, i64 %105)
  br label %107

107:                                              ; preds = %100, %95, %92
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.inode*, %struct.inode** %5, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = shl i64 %108, %111
  %113 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %114 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %116 = call i64 @ocfs2_sparse_alloc(%struct.ocfs2_super* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %163, label %118

118:                                              ; preds = %107
  %119 = load i64, i64* %12, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %118
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* @ML_ERROR, align 4
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %127)
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i32, i8*, ...) @mlog(i32 %124, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %125, i64 %126, i64 %130)
  %132 = load i32, i32* @ML_ERROR, align 4
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = call i64 @i_size_read(%struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %5, align 8
  %136 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %135)
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i32, i8*, ...) @mlog(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %134, i64 %138)
  %140 = call i32 (...) @dump_stack()
  br label %164

141:                                              ; preds = %118
  %142 = load %struct.inode*, %struct.inode** %5, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = call i64 @i_size_read(%struct.inode* %145)
  %147 = call i64 @ocfs2_blocks_for_bytes(i32 %144, i64 %146)
  store i64 %147, i64* %14, align 8
  %148 = load %struct.inode*, %struct.inode** %5, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %14, align 8
  %152 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %150, i64 %151)
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %141
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* %14, align 8
  %158 = icmp sge i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %161 = call i32 @set_buffer_new(%struct.buffer_head* %160)
  br label %162

162:                                              ; preds = %159, %155, %141
  br label %163

163:                                              ; preds = %162, %107
  br label %164

164:                                              ; preds = %163, %121, %87, %64, %52
  %165 = load i32, i32* %9, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @mlog_exit(i32 %171)
  %173 = load i32, i32* %9, align 4
  ret i32 %173
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, i64, %struct.buffer_head*, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @ocfs2_symlink_get_block(%struct.inode*, i64, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i64*, i64*, i32*) #1

declare dso_local i64 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i64 @ocfs2_blocks_for_bytes(i32, i64) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
