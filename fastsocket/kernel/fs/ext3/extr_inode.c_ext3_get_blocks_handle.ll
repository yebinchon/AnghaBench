; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_get_blocks_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_get_blocks_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.buffer_head*, i32* }
%struct.ext3_inode_info = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"call brelse\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_get_blocks_handle(i32* %0, %struct.inode* %1, i32 %2, i64 %3, %struct.buffer_head* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x %struct.TYPE_10__], align 16
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ext3_inode_info*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store i32 %5, i32* %12, align 4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call %struct.ext3_inode_info* @EXT3_I(%struct.inode* %27)
  store %struct.ext3_inode_info* %28, %struct.ext3_inode_info** %21, align 8
  store i32 0, i32* %22, align 4
  store i64 0, i64* %23, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @trace_ext3_get_blocks_enter(%struct.inode* %29, i32 %30, i64 %31, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %36, %6
  %40 = phi i1 [ true, %6 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @J_ASSERT(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %46 = call i32 @ext3_block_to_path(%struct.inode* %43, i32 %44, i32* %45, i32* %19)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %292

50:                                               ; preds = %39
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = load i32, i32* %20, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %54 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %55 = call %struct.TYPE_10__* @ext3_get_branch(%struct.inode* %51, i32 %52, i32* %53, %struct.TYPE_10__* %54, i32* %13)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %16, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  br i1 %57, label %123, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %20, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @le32_to_cpu(i32 %64)
  store i64 %65, i64* %23, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %67 = call i32 @clear_buffer_new(%struct.buffer_head* %66)
  %68 = load i32, i32* %22, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %22, align 4
  br label %70

70:                                               ; preds = %115, %58
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %10, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp sle i32 %76, %77
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi i1 [ false, %70 ], [ %78, %75 ]
  br i1 %80, label %81, label %116

81:                                               ; preds = %79
  %82 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %83 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 -1
  %88 = call i32 @verify_chain(%struct.TYPE_10__* %82, %struct.TYPE_10__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %13, align 4
  store i32 0, i32* %22, align 4
  br label %116

93:                                               ; preds = %81
  %94 = load i32, i32* %20, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %22, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @le32_to_cpu(i32 %103)
  store i64 %104, i64* %24, align 8
  %105 = load i64, i64* %24, align 8
  %106 = load i64, i64* %23, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = icmp eq i64 %105, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %93
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %22, align 4
  br label %115

114:                                              ; preds = %93
  br label %116

115:                                              ; preds = %111
  br label %70

116:                                              ; preds = %114, %90, %79
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %247

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %50
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126, %123
  br label %273

132:                                              ; preds = %126
  %133 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %21, align 8
  %134 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %133, i32 0, i32 0
  %135 = call i32 @mutex_lock(i32* %134)
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @EAGAIN, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %145, label %140

140:                                              ; preds = %132
  %141 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %143 = call i32 @verify_chain(%struct.TYPE_10__* %141, %struct.TYPE_10__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %178, label %145

145:                                              ; preds = %140, %132
  br label %146

146:                                              ; preds = %150, %145
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %148 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %149 = icmp ugt %struct.TYPE_10__* %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load %struct.buffer_head*, %struct.buffer_head** %152, align 8
  %154 = call i32 @brelse(%struct.buffer_head* %153)
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 -1
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %16, align 8
  br label %146

157:                                              ; preds = %146
  %158 = load %struct.inode*, %struct.inode** %8, align 8
  %159 = load i32, i32* %20, align 4
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %161 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %162 = call %struct.TYPE_10__* @ext3_get_branch(%struct.inode* %158, i32 %159, i32* %160, %struct.TYPE_10__* %161, i32* %13)
  store %struct.TYPE_10__* %162, %struct.TYPE_10__** %16, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %164 = icmp ne %struct.TYPE_10__* %163, null
  br i1 %164, label %177, label %165

165:                                              ; preds = %157
  %166 = load i32, i32* %22, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %22, align 4
  %168 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %21, align 8
  %169 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %273

174:                                              ; preds = %165
  %175 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %176 = call i32 @clear_buffer_new(%struct.buffer_head* %175)
  br label %247

177:                                              ; preds = %157
  br label %178

178:                                              ; preds = %177, %140
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @S_ISREG(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %178
  %185 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %21, align 8
  %186 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load %struct.inode*, %struct.inode** %8, align 8
  %191 = call i32 @ext3_init_block_alloc_info(%struct.inode* %190)
  br label %192

192:                                              ; preds = %189, %184, %178
  %193 = load %struct.inode*, %struct.inode** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %196 = call i64 @ext3_find_goal(%struct.inode* %193, i32 %194, %struct.TYPE_10__* %195)
  store i64 %196, i64* %17, align 8
  %197 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %198 = load i32, i32* %20, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %199
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %202 = ptrtoint %struct.TYPE_10__* %200 to i64
  %203 = ptrtoint %struct.TYPE_10__* %201 to i64
  %204 = sub i64 %202, %203
  %205 = sdiv exact i64 %204, 24
  %206 = sub nsw i64 %205, 1
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %18, align 4
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %209 = load i32, i32* %18, align 4
  %210 = load i64, i64* %10, align 8
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @ext3_blks_to_allocate(%struct.TYPE_10__* %208, i32 %209, i64 %210, i32 %211)
  store i32 %212, i32* %22, align 4
  %213 = load i32*, i32** %7, align 8
  %214 = load %struct.inode*, %struct.inode** %8, align 8
  %215 = load i32, i32* %18, align 4
  %216 = load i64, i64* %17, align 8
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %219 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %220 = ptrtoint %struct.TYPE_10__* %218 to i64
  %221 = ptrtoint %struct.TYPE_10__* %219 to i64
  %222 = sub i64 %220, %221
  %223 = sdiv exact i64 %222, 24
  %224 = getelementptr inbounds i32, i32* %217, i64 %223
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %226 = call i32 @ext3_alloc_branch(i32* %213, %struct.inode* %214, i32 %215, i32* %22, i64 %216, i32* %224, %struct.TYPE_10__* %225)
  store i32 %226, i32* %13, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %192
  %230 = load i32*, i32** %7, align 8
  %231 = load %struct.inode*, %struct.inode** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* %22, align 4
  %236 = call i32 @ext3_splice_branch(i32* %230, %struct.inode* %231, i32 %232, %struct.TYPE_10__* %233, i32 %234, i32 %235)
  store i32 %236, i32* %13, align 4
  br label %237

237:                                              ; preds = %229, %192
  %238 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %21, align 8
  %239 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %238, i32 0, i32 0
  %240 = call i32 @mutex_unlock(i32* %239)
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  br label %273

244:                                              ; preds = %237
  %245 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %246 = call i32 @set_buffer_new(%struct.buffer_head* %245)
  br label %247

247:                                              ; preds = %244, %174, %121
  %248 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %249 = load %struct.inode*, %struct.inode** %8, align 8
  %250 = getelementptr inbounds %struct.inode, %struct.inode* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %20, align 4
  %253 = sub nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @le32_to_cpu(i32 %257)
  %259 = call i32 @map_bh(%struct.buffer_head* %248, i32 %251, i64 %258)
  %260 = load i32, i32* %22, align 4
  %261 = load i32, i32* %19, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %247
  %264 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %265 = call i32 @set_buffer_boundary(%struct.buffer_head* %264)
  br label %266

266:                                              ; preds = %263, %247
  %267 = load i32, i32* %22, align 4
  store i32 %267, i32* %13, align 4
  %268 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %269 = load i32, i32* %20, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i64 -1
  store %struct.TYPE_10__* %272, %struct.TYPE_10__** %16, align 8
  br label %273

273:                                              ; preds = %266, %243, %173, %131
  br label %274

274:                                              ; preds = %278, %273
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %276 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 0
  %277 = icmp ugt %struct.TYPE_10__* %275, %276
  br i1 %277, label %278, label %289

278:                                              ; preds = %274
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = load %struct.buffer_head*, %struct.buffer_head** %280, align 8
  %282 = call i32 @BUFFER_TRACE(%struct.buffer_head* %281, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load %struct.buffer_head*, %struct.buffer_head** %284, align 8
  %286 = call i32 @brelse(%struct.buffer_head* %285)
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 -1
  store %struct.TYPE_10__* %288, %struct.TYPE_10__** %16, align 8
  br label %274

289:                                              ; preds = %274
  %290 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %291 = call i32 @BUFFER_TRACE(%struct.buffer_head* %290, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %49
  %293 = load %struct.inode*, %struct.inode** %8, align 8
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %20, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %292
  %298 = load i32, i32* %20, align 4
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %15, i64 0, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = call i64 @le32_to_cpu(i32 %303)
  br label %306

305:                                              ; preds = %292
  br label %306

306:                                              ; preds = %305, %297
  %307 = phi i64 [ %304, %297 ], [ 0, %305 ]
  %308 = load i32, i32* %22, align 4
  %309 = load i32, i32* %13, align 4
  %310 = call i32 @trace_ext3_get_blocks_exit(%struct.inode* %293, i32 %294, i64 %307, i32 %308, i32 %309)
  %311 = load i32, i32* %13, align 4
  ret i32 %311
}

declare dso_local %struct.ext3_inode_info* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @trace_ext3_get_blocks_enter(%struct.inode*, i32, i64, i32) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @ext3_block_to_path(%struct.inode*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @ext3_get_branch(%struct.inode*, i32, i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @verify_chain(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ext3_init_block_alloc_info(%struct.inode*) #1

declare dso_local i64 @ext3_find_goal(%struct.inode*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ext3_blks_to_allocate(%struct.TYPE_10__*, i32, i64, i32) #1

declare dso_local i32 @ext3_alloc_branch(i32*, %struct.inode*, i32, i32*, i64, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ext3_splice_branch(i32*, %struct.inode*, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local i32 @set_buffer_boundary(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @trace_ext3_get_blocks_exit(%struct.inode*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
