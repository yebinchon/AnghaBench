; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_quota_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c_ocfs2_quota_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i64 }
%struct.mem_dqinfo = type { %struct.ocfs2_mem_dqinfo* }
%struct.ocfs2_mem_dqinfo = type { i32, %struct.inode* }
%struct.inode = type { i64, i32, i32 }
%struct.buffer_head = type { i32, i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Quota write (off=%llu, len=%llu) cancelled because transaction was not started.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OCFS2_QBLK_RESERVED_SPACE = common dso_local global i32 0, align 4
@I_MUTEX_QUOTA = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_quota_write(%struct.super_block* %0, i32 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mem_dqinfo*, align 8
  %13 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block* %23, i32 %24)
  store %struct.mem_dqinfo* %25, %struct.mem_dqinfo** %12, align 8
  %26 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %12, align 8
  %27 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %26, i32 0, i32 0
  %28 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %27, align 8
  store %struct.ocfs2_mem_dqinfo* %28, %struct.ocfs2_mem_dqinfo** %13, align 8
  %29 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %13, align 8
  %30 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %29, i32 0, i32 1
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  store %struct.inode* %31, %struct.inode** %14, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.super_block*, %struct.super_block** %7, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %35, 1
  %37 = and i64 %32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.super_block*, %struct.super_block** %7, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = lshr i64 %39, %42
  store i64 %43, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %44 = call i32* (...) @journal_current_handle()
  store i32* %44, i32** %21, align 8
  %45 = load i32*, i32** %21, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %5
  %48 = load i32, i32* @ML_ERROR, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @mlog(i32 %48, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %218

54:                                               ; preds = %5
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.super_block*, %struct.super_block** %7, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @OCFS2_QBLK_RESERVED_SPACE, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %58, %60
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %61, %63
  %65 = icmp ugt i64 %55, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %54
  %67 = call i32 @WARN_ON(i32 1)
  %68 = load %struct.super_block*, %struct.super_block** %7, align 8
  %69 = getelementptr inbounds %struct.super_block, %struct.super_block* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @OCFS2_QBLK_RESERVED_SPACE, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %70, %72
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %73, %75
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %66, %54
  %78 = load %struct.inode*, %struct.inode** %14, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* @I_MUTEX_QUOTA, align 4
  %81 = call i32 @mutex_lock_nested(i32* %79, i32 %80)
  %82 = load %struct.inode*, %struct.inode** %14, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %85, %86
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %77
  %90 = load %struct.super_block*, %struct.super_block** %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %91, %92
  %94 = call i64 @ocfs2_align_bytes_to_blocks(%struct.super_block* %90, i64 %93)
  store i64 %94, i64* %22, align 8
  %95 = load %struct.inode*, %struct.inode** %14, align 8
  %96 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %13, align 8
  %97 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %22, align 8
  %100 = call i32 @ocfs2_simple_size_update(%struct.inode* %95, i32 %98, i64 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %192

104:                                              ; preds = %89
  store i32 1, i32* %18, align 4
  br label %105

105:                                              ; preds = %104, %77
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.super_block*, %struct.super_block** %7, align 8
  %111 = getelementptr inbounds %struct.super_block, %struct.super_block* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @OCFS2_QBLK_RESERVED_SPACE, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 %112, %114
  %116 = icmp ult i64 %109, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %108, %105
  %118 = load i32, i32* %18, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load %struct.inode*, %struct.inode** %14, align 8
  %122 = load i64, i64* %16, align 8
  %123 = call i32 @ocfs2_read_quota_block(%struct.inode* %121, i64 %122, %struct.buffer_head** %20)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  store i32 %124, i32* %19, align 4
  br label %130

125:                                              ; preds = %117, %108
  %126 = load %struct.inode*, %struct.inode** %14, align 8
  %127 = load i64, i64* %16, align 8
  %128 = call i32 @ocfs2_get_quota_block(%struct.inode* %126, i64 %127, %struct.buffer_head** %20)
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  store i32 %129, i32* %19, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @mlog_errno(i32 %134)
  br label %192

136:                                              ; preds = %130
  %137 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %138 = call i32 @lock_buffer(%struct.buffer_head* %137)
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %143 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.super_block*, %struct.super_block** %7, align 8
  %146 = getelementptr inbounds %struct.super_block, %struct.super_block* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @memset(i64 %144, i32 0, i64 %147)
  br label %149

149:                                              ; preds = %141, %136
  %150 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %151 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %152, %154
  %156 = load i8*, i8** %9, align 8
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @memcpy(i64 %155, i8* %156, i64 %157)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @flush_dcache_page(i32 %161)
  %163 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %164 = call i32 @set_buffer_uptodate(%struct.buffer_head* %163)
  %165 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %166 = call i32 @unlock_buffer(%struct.buffer_head* %165)
  %167 = load %struct.inode*, %struct.inode** %14, align 8
  %168 = call i32 @INODE_CACHE(%struct.inode* %167)
  %169 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %170 = call i32 @ocfs2_set_buffer_uptodate(i32 %168, %struct.buffer_head* %169)
  %171 = load i32*, i32** %21, align 8
  %172 = load %struct.inode*, %struct.inode** %14, align 8
  %173 = call i32 @INODE_CACHE(%struct.inode* %172)
  %174 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @ocfs2_journal_access_dq(i32* %171, i32 %173, %struct.buffer_head* %174, i32 %175)
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* %17, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %149
  %180 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %181 = call i32 @brelse(%struct.buffer_head* %180)
  br label %192

182:                                              ; preds = %149
  %183 = load i32*, i32** %21, align 8
  %184 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %185 = call i32 @ocfs2_journal_dirty(i32* %183, %struct.buffer_head* %184)
  store i32 %185, i32* %17, align 4
  %186 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %187 = call i32 @brelse(%struct.buffer_head* %186)
  %188 = load i32, i32* %17, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %192

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %190, %179, %133, %103
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load %struct.inode*, %struct.inode** %14, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 1
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load i32, i32* %17, align 4
  %200 = call i32 @mlog_errno(i32 %199)
  %201 = load i32, i32* %17, align 4
  store i32 %201, i32* %6, align 4
  br label %218

202:                                              ; preds = %192
  %203 = load %struct.inode*, %struct.inode** %14, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load i32*, i32** %21, align 8
  %208 = load %struct.inode*, %struct.inode** %14, align 8
  %209 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %13, align 8
  %210 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @ocfs2_mark_inode_dirty(i32* %207, %struct.inode* %208, i32 %211)
  %213 = load %struct.inode*, %struct.inode** %14, align 8
  %214 = getelementptr inbounds %struct.inode, %struct.inode* %213, i32 0, i32 1
  %215 = call i32 @mutex_unlock(i32* %214)
  %216 = load i64, i64* %10, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %202, %195, %47
  %219 = load i32, i32* %6, align 4
  ret i32 %219
}

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32* @journal_current_handle(...) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @ocfs2_align_bytes_to_blocks(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_simple_size_update(%struct.inode*, i32, i64) #1

declare dso_local i32 @ocfs2_read_quota_block(%struct.inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_get_quota_block(%struct.inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_set_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_dq(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
