; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_local_read_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_local_read_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_local_disk_dqinfo = type { i32, i32, i32 }
%struct.mem_dqinfo = type { i32, i32, i32, %struct.ocfs2_mem_dqinfo* }
%struct.ocfs2_mem_dqinfo = type { i32, i32, %struct.buffer_head*, i32, i32, %struct.buffer_head*, i8*, i8*, i32* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }
%struct.ocfs2_quota_recovery = type { i32* }
%struct.TYPE_4__ = type { i32, %struct.inode** }
%struct.TYPE_5__ = type { %struct.ocfs2_quota_recovery* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to allocate memory for ocfs2 quota info.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to read quota file info header (type=%d)\0A\00", align 1
@OCFS2_LOCAL_INFO_OFF = common dso_local global i64 0, align 8
@OLQF_CLEAN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@olq_update_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ocfs2_local_read_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_read_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_local_disk_dqinfo*, align 8
  %7 = alloca %struct.mem_dqinfo*, align 8
  %8 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_quota_recovery*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block* %14, i32 %15)
  store %struct.mem_dqinfo* %16, %struct.mem_dqinfo** %7, align 8
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.inode**, %struct.inode*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.inode*, %struct.inode** %20, i64 %22
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %30 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %32 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %31, i32 0, i32 1
  store i32 -1, i32* %32, align 4
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call %struct.ocfs2_mem_dqinfo* @kmalloc(i32 56, i32 %33)
  store %struct.ocfs2_mem_dqinfo* %34, %struct.ocfs2_mem_dqinfo** %8, align 8
  %35 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %36 = icmp ne %struct.ocfs2_mem_dqinfo* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ML_ERROR, align 4
  %39 = call i32 (i32, i8*, ...) @mlog(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %189

40:                                               ; preds = %2
  %41 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %42 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %43 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %42, i32 0, i32 3
  store %struct.ocfs2_mem_dqinfo* %41, %struct.ocfs2_mem_dqinfo** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %46 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %48 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %47, i32 0, i32 1
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %50, i32 0, i32 8
  store i32* null, i32** %51, align 8
  %52 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %53 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %52, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %53, align 8
  %54 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %54, i32 0, i32 5
  store %struct.buffer_head* null, %struct.buffer_head** %55, align 8
  %56 = load %struct.super_block*, %struct.super_block** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ocfs2_global_read_info(%struct.super_block* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %189

62:                                               ; preds = %40
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %65 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %64, i32 0, i32 2
  %66 = call i32 @ocfs2_inode_lock(%struct.inode* %63, %struct.buffer_head** %65, i32 1)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %189

72:                                               ; preds = %62
  store i32 1, i32* %13, align 4
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = call i32 @ocfs2_read_quota_block(%struct.inode* %73, i32 0, %struct.buffer_head** %11)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  %80 = load i32, i32* @ML_ERROR, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i32, i8*, ...) @mlog(i32 %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %189

83:                                               ; preds = %72
  %84 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @OCFS2_LOCAL_INFO_OFF, align 8
  %88 = add nsw i64 %86, %87
  %89 = inttoptr i64 %88 to %struct.ocfs2_local_disk_dqinfo*
  store %struct.ocfs2_local_disk_dqinfo* %89, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %90 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %91 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %96 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %98 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le32_to_cpu(i32 %99)
  %101 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %102 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %101, i32 0, i32 7
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %104 = getelementptr inbounds %struct.ocfs2_local_disk_dqinfo, %struct.ocfs2_local_disk_dqinfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le32_to_cpu(i32 %105)
  %107 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %108 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %107, i32 0, i32 6
  store i8* %106, i8** %108, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %110 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %111 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %110, i32 0, i32 5
  store %struct.buffer_head* %109, %struct.buffer_head** %111, align 8
  %112 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %113 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @OLQF_CLEAN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %156, label %118

118:                                              ; preds = %83
  %119 = load %struct.super_block*, %struct.super_block** %4, align 8
  %120 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %119)
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %121, align 8
  store %struct.ocfs2_quota_recovery* %122, %struct.ocfs2_quota_recovery** %12, align 8
  %123 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %124 = icmp ne %struct.ocfs2_quota_recovery* %123, null
  br i1 %124, label %139, label %125

125:                                              ; preds = %118
  %126 = call %struct.ocfs2_quota_recovery* (...) @ocfs2_alloc_quota_recovery()
  store %struct.ocfs2_quota_recovery* %126, %struct.ocfs2_quota_recovery** %12, align 8
  %127 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %128 = icmp ne %struct.ocfs2_quota_recovery* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @mlog_errno(i32 %132)
  br label %189

134:                                              ; preds = %125
  %135 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %136 = load %struct.super_block*, %struct.super_block** %4, align 8
  %137 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %136)
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store %struct.ocfs2_quota_recovery* %135, %struct.ocfs2_quota_recovery** %138, align 8
  br label %139

139:                                              ; preds = %134, %118
  %140 = load %struct.inode*, %struct.inode** %9, align 8
  %141 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %12, align 8
  %144 = getelementptr inbounds %struct.ocfs2_quota_recovery, %struct.ocfs2_quota_recovery* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = call i32 @ocfs2_recovery_load_quota(%struct.inode* %140, %struct.ocfs2_local_disk_dqinfo* %141, i32 %142, i32* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %139
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @mlog_errno(i32 %153)
  br label %189

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %83
  %157 = load %struct.inode*, %struct.inode** %9, align 8
  %158 = load %struct.ocfs2_local_disk_dqinfo*, %struct.ocfs2_local_disk_dqinfo** %6, align 8
  %159 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %160 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %159, i32 0, i32 1
  %161 = call i32 @ocfs2_load_local_quota_bitmaps(%struct.inode* %157, %struct.ocfs2_local_disk_dqinfo* %158, i32* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @mlog_errno(i32 %165)
  br label %189

167:                                              ; preds = %156
  %168 = load i32, i32* @OLQF_CLEAN, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %171 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.inode*, %struct.inode** %9, align 8
  %175 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %176 = load i32, i32* @olq_update_info, align 4
  %177 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %7, align 8
  %178 = call i32 @ocfs2_modify_bh(%struct.inode* %174, %struct.buffer_head* %175, i32 %176, %struct.mem_dqinfo* %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %167
  %182 = load i32, i32* %10, align 4
  %183 = call i32 @mlog_errno(i32 %182)
  br label %189

184:                                              ; preds = %167
  %185 = load %struct.super_block*, %struct.super_block** %4, align 8
  %186 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %185)
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = call i32 @mutex_lock(i32* %187)
  store i32 0, i32* %3, align 4
  br label %227

189:                                              ; preds = %181, %164, %152, %129, %77, %69, %61, %37
  %190 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %191 = icmp ne %struct.ocfs2_mem_dqinfo* %190, null
  br i1 %191, label %192, label %220

192:                                              ; preds = %189
  %193 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %194 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @iput(i32 %195)
  %197 = load %struct.super_block*, %struct.super_block** %4, align 8
  %198 = call %struct.TYPE_5__* @OCFS2_SB(%struct.super_block* %197)
  %199 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %200 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %199, i32 0, i32 3
  %201 = call i32 @ocfs2_simple_drop_lockres(%struct.TYPE_5__* %198, i32* %200)
  %202 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %203 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %202, i32 0, i32 3
  %204 = call i32 @ocfs2_lock_res_free(i32* %203)
  %205 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %206 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %205, i32 0, i32 2
  %207 = load %struct.buffer_head*, %struct.buffer_head** %206, align 8
  %208 = call i32 @brelse(%struct.buffer_head* %207)
  %209 = load i32, i32* %13, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %192
  %212 = load %struct.inode*, %struct.inode** %9, align 8
  %213 = call i32 @ocfs2_inode_unlock(%struct.inode* %212, i32 1)
  br label %214

214:                                              ; preds = %211, %192
  %215 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %216 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %215, i32 0, i32 1
  %217 = call i32 @ocfs2_release_local_quota_bitmaps(i32* %216)
  %218 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %8, align 8
  %219 = call i32 @kfree(%struct.ocfs2_mem_dqinfo* %218)
  br label %220

220:                                              ; preds = %214, %189
  %221 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %222 = call i32 @brelse(%struct.buffer_head* %221)
  %223 = load %struct.super_block*, %struct.super_block** %4, align 8
  %224 = call %struct.TYPE_4__* @sb_dqopt(%struct.super_block* %223)
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = call i32 @mutex_lock(i32* %225)
  store i32 -1, i32* %3, align 4
  br label %227

227:                                              ; preds = %220, %184
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_4__* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.ocfs2_mem_dqinfo* @kmalloc(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ocfs2_global_read_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_quota_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local %struct.ocfs2_quota_recovery* @ocfs2_alloc_quota_recovery(...) #1

declare dso_local i32 @ocfs2_recovery_load_quota(%struct.inode*, %struct.ocfs2_local_disk_dqinfo*, i32, i32*) #1

declare dso_local i32 @ocfs2_load_local_quota_bitmaps(%struct.inode*, %struct.ocfs2_local_disk_dqinfo*, i32*) #1

declare dso_local i32 @ocfs2_modify_bh(%struct.inode*, %struct.buffer_head*, i32, %struct.mem_dqinfo*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @ocfs2_simple_drop_lockres(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_release_local_quota_bitmaps(i32*) #1

declare dso_local i32 @kfree(%struct.ocfs2_mem_dqinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
