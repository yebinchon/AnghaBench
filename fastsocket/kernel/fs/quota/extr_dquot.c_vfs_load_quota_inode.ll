; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_load_quota_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_load_quota_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.inode*)* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.quota_format_type = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)* }
%struct.quota_info = type { i32, i32, i32, i32**, i32, %struct.TYPE_8__**, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.quota_format_type* }

@ESRCH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DQUOT_USAGE_ENABLED = common dso_local global i32 0, align 4
@DQUOT_QUOTA_SYS_FILE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@I_MUTEX_QUOTA = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@dq_state_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32)* @vfs_load_quota_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_load_quota_inode(%struct.inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.quota_format_type*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.quota_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.quota_format_type* @find_quota_format(i32 %15)
  store %struct.quota_format_type* %16, %struct.quota_format_type** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %11, align 8
  %20 = load %struct.super_block*, %struct.super_block** %11, align 8
  %21 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %20)
  store %struct.quota_info* %21, %struct.quota_info** %12, align 8
  store i32 -1, i32* %14, align 4
  %22 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %23 = icmp ne %struct.quota_format_type* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ESRCH, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %295

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @S_ISREG(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %291

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = call i64 @IS_RDONLY(%struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EROFS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %13, align 4
  br label %291

43:                                               ; preds = %36
  %44 = load %struct.super_block*, %struct.super_block** %11, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.super_block*, %struct.super_block** %11, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %291

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DQUOT_USAGE_ENABLED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %13, align 4
  br label %291

68:                                               ; preds = %60
  %69 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %70 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DQUOT_QUOTA_SYS_FILE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = call i32 @write_inode_now(%struct.inode* %76, i32 1)
  %78 = load %struct.super_block*, %struct.super_block** %11, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @invalidate_bdev(i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %84 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %83, i32 0, i32 1
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load %struct.super_block*, %struct.super_block** %11, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @sb_has_quota_loaded(%struct.super_block* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %13, align 4
  br label %255

93:                                               ; preds = %82
  %94 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %95 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DQUOT_QUOTA_SYS_FILE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %139, label %100

100:                                              ; preds = %93
  %101 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %102 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %101, i32 0, i32 2
  %103 = call i32 @down_write(i32* %102)
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 1
  %106 = load i32, i32* @I_MUTEX_QUOTA, align 4
  %107 = call i32 @mutex_lock_nested(i32* %105, i32 %106)
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @S_NOATIME, align 4
  %112 = load i32, i32* @S_IMMUTABLE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @S_NOQUOTA, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %110, %115
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* @S_NOQUOTA, align 4
  %118 = load i32, i32* @S_NOATIME, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @S_IMMUTABLE, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 1
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %130 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %129, i32 0, i32 2
  %131 = call i32 @up_write(i32* %130)
  %132 = load %struct.super_block*, %struct.super_block** %11, align 8
  %133 = getelementptr inbounds %struct.super_block, %struct.super_block* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %135, align 8
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = call i32 %136(%struct.inode* %137)
  br label %139

139:                                              ; preds = %100, %93
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %13, align 4
  %142 = load %struct.inode*, %struct.inode** %6, align 8
  %143 = call i32* @igrab(%struct.inode* %142)
  %144 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %145 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %144, i32 0, i32 3
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  store i32* %143, i32** %149, align 8
  %150 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %151 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %150, i32 0, i32 3
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %139
  br label %255

159:                                              ; preds = %139
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %13, align 4
  %162 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %163 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %165, align 8
  %167 = load %struct.super_block*, %struct.super_block** %11, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 %166(%struct.super_block* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %159
  br label %246

172:                                              ; preds = %159
  %173 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %174 = getelementptr inbounds %struct.quota_format_type, %struct.quota_format_type* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %177 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %176, i32 0, i32 5
  %178 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %178, i64 %180
  store %struct.TYPE_8__* %175, %struct.TYPE_8__** %181, align 8
  %182 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %183 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %184 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %183, i32 0, i32 6
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  store %struct.quota_format_type* %182, %struct.quota_format_type** %189, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %192 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %191, i32 0, i32 6
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  store i32 %190, i32* %197, align 8
  %198 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %199 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %198, i32 0, i32 6
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = call i32 @INIT_LIST_HEAD(i32* %204)
  %206 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %207 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %206, i32 0, i32 4
  %208 = call i32 @mutex_lock(i32* %207)
  %209 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %210 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %209, i32 0, i32 5
  %211 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %211, i64 %213
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %216, align 8
  %218 = load %struct.super_block*, %struct.super_block** %11, align 8
  %219 = load i32, i32* %7, align 4
  %220 = call i32 %217(%struct.super_block* %218, i32 %219)
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %172
  %224 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %225 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %224, i32 0, i32 4
  %226 = call i32 @mutex_unlock(i32* %225)
  br label %246

227:                                              ; preds = %172
  %228 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %229 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %228, i32 0, i32 4
  %230 = call i32 @mutex_unlock(i32* %229)
  %231 = call i32 @spin_lock(i32* @dq_state_lock)
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @dquot_state_flag(i32 %232, i32 %233)
  %235 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %236 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = call i32 @spin_unlock(i32* @dq_state_lock)
  %240 = load %struct.super_block*, %struct.super_block** %11, align 8
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @add_dquot_ref(%struct.super_block* %240, i32 %241)
  %243 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %244 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %243, i32 0, i32 1
  %245 = call i32 @mutex_unlock(i32* %244)
  store i32 0, i32* %5, align 4
  br label %295

246:                                              ; preds = %223, %171
  %247 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %248 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %247, i32 0, i32 3
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  store i32* null, i32** %252, align 8
  %253 = load %struct.inode*, %struct.inode** %6, align 8
  %254 = call i32 @iput(%struct.inode* %253)
  br label %255

255:                                              ; preds = %246, %158, %90
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, -1
  br i1 %257, label %258, label %287

258:                                              ; preds = %255
  %259 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %260 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %259, i32 0, i32 2
  %261 = call i32 @down_write(i32* %260)
  %262 = load %struct.inode*, %struct.inode** %6, align 8
  %263 = getelementptr inbounds %struct.inode, %struct.inode* %262, i32 0, i32 1
  %264 = load i32, i32* @I_MUTEX_QUOTA, align 4
  %265 = call i32 @mutex_lock_nested(i32* %263, i32 %264)
  %266 = load i32, i32* @S_NOATIME, align 4
  %267 = load i32, i32* @S_NOQUOTA, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @S_IMMUTABLE, align 4
  %270 = or i32 %268, %269
  %271 = xor i32 %270, -1
  %272 = load %struct.inode*, %struct.inode** %6, align 8
  %273 = getelementptr inbounds %struct.inode, %struct.inode* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = and i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load %struct.inode*, %struct.inode** %6, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  %281 = load %struct.inode*, %struct.inode** %6, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 1
  %283 = call i32 @mutex_unlock(i32* %282)
  %284 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %285 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %284, i32 0, i32 2
  %286 = call i32 @up_write(i32* %285)
  br label %287

287:                                              ; preds = %258, %255
  %288 = load %struct.quota_info*, %struct.quota_info** %12, align 8
  %289 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %288, i32 0, i32 1
  %290 = call i32 @mutex_unlock(i32* %289)
  br label %291

291:                                              ; preds = %287, %65, %57, %40, %33
  %292 = load %struct.quota_format_type*, %struct.quota_format_type** %10, align 8
  %293 = call i32 @put_quota_format(%struct.quota_format_type* %292)
  %294 = load i32, i32* %13, align 4
  store i32 %294, i32* %5, align 4
  br label %295

295:                                              ; preds = %291, %227, %24
  %296 = load i32, i32* %5, align 4
  ret i32 %296
}

declare dso_local %struct.quota_format_type* @find_quota_format(i32) #1

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_RDONLY(%struct.inode*) #1

declare dso_local i32 @write_inode_now(%struct.inode*, i32) #1

declare dso_local i32 @invalidate_bdev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sb_has_quota_loaded(%struct.super_block*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32* @igrab(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dquot_state_flag(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @add_dquot_ref(%struct.super_block*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @put_quota_format(%struct.quota_format_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
