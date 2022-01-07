; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_buffer_head_io.c_ocfs2_read_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_buffer_head_io.c_ocfs2_read_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.super_block = type opaque

@.str = private unnamed_addr constant [42 x i8] c"(ci=%p, block=(%llu), nr=(%d), flags=%d)\0A\00", align 1
@OCFS2_BH_READAHEAD = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"asked to read %d blocks!\0A\00", align 1
@ML_BH_IO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"No buffers will be read!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ML_UPTODATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"bh (%llu), owner %llu not uptodate\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"trying to sync read a jbd managed bh (blocknr = %llu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"asking me to sync read a dirty buffer! (blocknr = %llu)\0A\00", align 1
@end_buffer_read_sync = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"block=(%llu), nr=(%d), cached=%s, flags=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_read_blocks(%struct.ocfs2_caching_info* %0, i64 %1, i32 %2, %struct.buffer_head** %3, i32 %4, i32 (%struct.super_block*, %struct.buffer_head*)* %5) #0 {
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.super_block*, %struct.buffer_head*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.super_block*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 (%struct.super_block*, %struct.buffer_head*)* %5, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %19 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %18)
  store %struct.super_block* %19, %struct.super_block** %17, align 8
  %20 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @mlog_entry(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.ocfs2_caching_info* %20, i64 %21, i32 %22, i32 %23)
  %25 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %26 = icmp ne %struct.ocfs2_caching_info* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %6
  %40 = phi i1 [ false, %6 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %44 = icmp eq %struct.buffer_head** %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %302

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i32, i32* @ML_ERROR, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i8*, ...) @mlog(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %302

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @ML_BH_IO, align 4
  %66 = call i32 (i32, i8*, ...) @mlog(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %302

67:                                               ; preds = %61
  %68 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %69 = call i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info* %68)
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %212, %67
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %215

74:                                               ; preds = %70
  %75 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %75, i64 %77
  %79 = load %struct.buffer_head*, %struct.buffer_head** %78, align 8
  %80 = icmp eq %struct.buffer_head* %79, null
  br i1 %80, label %81, label %105

81:                                               ; preds = %74
  %82 = load %struct.super_block*, %struct.super_block** %17, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %8, align 8
  %85 = trunc i64 %83 to i32
  %86 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %82, i32 %85)
  %87 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %87, i64 %89
  store %struct.buffer_head* %86, %struct.buffer_head** %90, align 8
  %91 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %91, i64 %93
  %95 = load %struct.buffer_head*, %struct.buffer_head** %94, align 8
  %96 = icmp eq %struct.buffer_head* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %81
  %98 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %99 = call i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %302

104:                                              ; preds = %81
  br label %105

105:                                              ; preds = %104, %74
  %106 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %106, i64 %108
  %110 = load %struct.buffer_head*, %struct.buffer_head** %109, align 8
  store %struct.buffer_head* %110, %struct.buffer_head** %16, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %113 = and i32 %111, %112
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %105
  %117 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %119 = call i64 @ocfs2_buffer_uptodate(%struct.ocfs2_caching_info* %117, %struct.buffer_head* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @ML_UPTODATE, align 4
  %123 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %127 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %126)
  %128 = call i32 (i32, i8*, ...) @mlog(i32 %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %125, i64 %127)
  store i32 1, i32* %15, align 4
  br label %129

129:                                              ; preds = %121, %116, %105
  %130 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %131 = call i32 @buffer_jbd(%struct.buffer_head* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* @ML_BH_IO, align 4
  %138 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (i32, i8*, ...) @mlog(i32 %137, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %136, %133
  br label %212

143:                                              ; preds = %129
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %211

146:                                              ; preds = %143
  %147 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %148 = call i64 @buffer_dirty(%struct.buffer_head* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i32, i32* @ML_BH_IO, align 4
  %152 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %153 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (i32, i8*, ...) @mlog(i32 %151, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %154)
  br label %212

156:                                              ; preds = %146
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %164 = call i64 @ocfs2_buffer_read_ahead(%struct.ocfs2_caching_info* %162, %struct.buffer_head* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %212

167:                                              ; preds = %161, %156
  %168 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %169 = call i32 @lock_buffer(%struct.buffer_head* %168)
  %170 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %171 = call i32 @buffer_jbd(%struct.buffer_head* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %175 = call i32 @unlock_buffer(%struct.buffer_head* %174)
  br label %212

176:                                              ; preds = %167
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %194, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %194, label %186

186:                                              ; preds = %181
  %187 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %188 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %189 = call i64 @ocfs2_buffer_uptodate(%struct.ocfs2_caching_info* %187, %struct.buffer_head* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %193 = call i32 @unlock_buffer(%struct.buffer_head* %192)
  br label %212

194:                                              ; preds = %186, %181, %176
  %195 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %196 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %195)
  %197 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %198 = call i32 @get_bh(%struct.buffer_head* %197)
  %199 = load i32 (%struct.super_block*, %struct.buffer_head*)*, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  %200 = icmp ne i32 (%struct.super_block*, %struct.buffer_head*)* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %203 = call i32 @set_buffer_needs_validate(%struct.buffer_head* %202)
  br label %204

204:                                              ; preds = %201, %194
  %205 = load i32, i32* @end_buffer_read_sync, align 4
  %206 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %207 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* @READ, align 4
  %209 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %210 = call i32 @submit_bh(i32 %208, %struct.buffer_head* %209)
  br label %212

211:                                              ; preds = %143
  br label %212

212:                                              ; preds = %211, %204, %191, %173, %166, %150, %142
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %14, align 4
  br label %70

215:                                              ; preds = %70
  store i32 0, i32* %13, align 4
  %216 = load i32, i32* %9, align 4
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %14, align 4
  br label %218

218:                                              ; preds = %280, %215
  %219 = load i32, i32* %14, align 4
  %220 = icmp sge i32 %219, 0
  br i1 %220, label %221, label %283

221:                                              ; preds = %218
  %222 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %222, i64 %224
  %226 = load %struct.buffer_head*, %struct.buffer_head** %225, align 8
  store %struct.buffer_head* %226, %struct.buffer_head** %16, align 8
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %276, label %231

231:                                              ; preds = %221
  %232 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %233 = call i32 @buffer_jbd(%struct.buffer_head* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %231
  %236 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %237 = call i32 @wait_on_buffer(%struct.buffer_head* %236)
  br label %238

238:                                              ; preds = %235, %231
  %239 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %240 = call i32 @buffer_uptodate(%struct.buffer_head* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* @EIO, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %13, align 4
  %245 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %246 = call i32 @put_bh(%struct.buffer_head* %245)
  %247 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %247, i64 %249
  store %struct.buffer_head* null, %struct.buffer_head** %250, align 8
  br label %280

251:                                              ; preds = %238
  %252 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %253 = call i64 @buffer_needs_validate(%struct.buffer_head* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %251
  %256 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %257 = call i32 @buffer_jbd(%struct.buffer_head* %256)
  %258 = call i32 @BUG_ON(i32 %257)
  %259 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %260 = call i32 @clear_buffer_needs_validate(%struct.buffer_head* %259)
  %261 = load i32 (%struct.super_block*, %struct.buffer_head*)*, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  %262 = load %struct.super_block*, %struct.super_block** %17, align 8
  %263 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %264 = call i32 %261(%struct.super_block* %262, %struct.buffer_head* %263)
  store i32 %264, i32* %13, align 4
  %265 = load i32, i32* %13, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %255
  %268 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %269 = call i32 @put_bh(%struct.buffer_head* %268)
  %270 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %271 = load i32, i32* %14, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %270, i64 %272
  store %struct.buffer_head* null, %struct.buffer_head** %273, align 8
  br label %280

274:                                              ; preds = %255
  br label %275

275:                                              ; preds = %274, %251
  br label %276

276:                                              ; preds = %275, %221
  %277 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %278 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %279 = call i32 @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info* %277, %struct.buffer_head* %278)
  br label %280

280:                                              ; preds = %276, %267, %242
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %14, align 4
  br label %218

283:                                              ; preds = %218
  %284 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %285 = call i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info* %284)
  %286 = load i32, i32* @ML_BH_IO, align 4
  %287 = load i64, i64* %8, align 8
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %283
  %294 = load i32, i32* %15, align 4
  %295 = icmp ne i32 %294, 0
  br label %296

296:                                              ; preds = %293, %283
  %297 = phi i1 [ true, %283 ], [ %295, %293 ]
  %298 = zext i1 %297 to i64
  %299 = select i1 %297, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %300 = load i32, i32* %11, align 4
  %301 = call i32 (i32, i8*, ...) @mlog(i32 %286, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %287, i32 %288, i8* %299, i32 %300)
  br label %302

302:                                              ; preds = %296, %97, %64, %53, %45
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @mlog_exit(i32 %303)
  %305 = load i32, i32* %13, align 4
  ret i32 %305
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @mlog_entry(i8*, %struct.ocfs2_caching_info*, i64, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_metadata_cache_io_lock(%struct.ocfs2_caching_info*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_metadata_cache_io_unlock(%struct.ocfs2_caching_info*) #1

declare dso_local i64 @ocfs2_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_buffer_read_ahead(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_needs_validate(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i64 @buffer_needs_validate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_needs_validate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_set_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
