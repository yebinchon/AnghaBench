; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_symlink_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_symlink_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.buffer_head = type { i32, i64, i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_super = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"(0x%p, %llu, 0x%p, %d)\0A\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"block offset > PATH_MAX: %llu\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"block offset is outside the allocated size: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"couldn't getblock for symlink!\0A\00", align 1
@KM_USER0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"couldn't kmap!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ocfs2_symlink_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_symlink_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_10__* %21)
  store %struct.ocfs2_super* %22, %struct.ocfs2_super** %14, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @mlog_entry(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.inode* %23, i64 %25, %struct.buffer_head* %26, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i32 @ocfs2_inode_is_fast_symlink(%struct.inode* %29)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %32, %37
  %39 = load i32, i32* @PATH_MAX, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load i32, i32* @ML_ERROR, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 (i32, i8*, ...) @mlog(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  br label %167

47:                                               ; preds = %4
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = call i32 @ocfs2_read_inode_block(%struct.inode* %48, %struct.buffer_head** %12)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %167

55:                                               ; preds = %47
  %56 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %59, %struct.ocfs2_dinode** %11, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %66 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = call i64 @ocfs2_clusters_to_blocks(%struct.TYPE_10__* %64, i32 %68)
  %70 = icmp sge i64 %61, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %55
  %72 = load i32, i32* @ML_ERROR, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 (i32, i8*, ...) @mlog(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  br label %167

76:                                               ; preds = %55
  %77 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %78 = call i32 @buffer_uptodate(%struct.buffer_head* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %150, label %80

80:                                               ; preds = %76
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = call i64 @ocfs2_inode_is_new(%struct.inode* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %150

84:                                               ; preds = %80
  %85 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %86 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le64_to_cpu(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %16, align 8
  %97 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %98 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %16, align 8
  %101 = call %struct.buffer_head* @sb_getblk(i32 %99, i64 %100)
  store %struct.buffer_head* %101, %struct.buffer_head** %13, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %103 = icmp ne %struct.buffer_head* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %84
  %105 = load i32, i32* @ML_ERROR, align 4
  %106 = call i32 (i32, i8*, ...) @mlog(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %167

107:                                              ; preds = %84
  %108 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %109 = call i64 @buffer_jbd(%struct.buffer_head* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %107
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = call i64 @ocfs2_inode_is_new(%struct.inode* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %147

115:                                              ; preds = %111
  %116 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %117 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @KM_USER0, align 4
  %120 = call i8* @kmap_atomic(i32 %118, i32 %119)
  store i8* %120, i8** %15, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* @ML_ERROR, align 4
  %125 = call i32 (i32, i8*, ...) @mlog(i32 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %167

126:                                              ; preds = %115
  %127 = load i8*, i8** %15, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = mul nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr i8, i8* %127, i64 %133
  %135 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %136 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @memcpy(i8* %134, i64 %137, i32 %140)
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* @KM_USER0, align 4
  %144 = call i32 @kunmap_atomic(i8* %142, i32 %143)
  %145 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %146 = call i32 @set_buffer_uptodate(%struct.buffer_head* %145)
  br label %147

147:                                              ; preds = %126, %111, %107
  %148 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %149 = call i32 @brelse(%struct.buffer_head* %148)
  br label %150

150:                                              ; preds = %147, %80, %76
  %151 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %152 = load %struct.inode*, %struct.inode** %5, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %156 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le64_to_cpu(i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %163, %164
  %166 = call i32 @map_bh(%struct.buffer_head* %151, %struct.TYPE_10__* %154, i32 %165)
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %150, %123, %104, %71, %52, %42
  %168 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %169 = call i32 @brelse(%struct.buffer_head* %168)
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @mlog_exit(i32 %170)
  %172 = load i32, i32* %9, align 4
  ret i32 %172
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_10__*) #1

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, i64, %struct.buffer_head*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_inode_is_new(%struct.inode*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i64) #1

declare dso_local i64 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
