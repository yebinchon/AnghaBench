; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_get_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.ext2_inode_info = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64, %struct.buffer_head*, i32)* @ext2_get_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_get_blocks(%struct.inode* %0, i32 %1, i64 %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x %struct.TYPE_10__], align 16
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ext2_inode_info*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %26)
  store %struct.ext2_inode_info* %27, %struct.ext2_inode_info** %20, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %31 = call i32 @ext2_block_to_path(%struct.inode* %28, i32 %29, i32* %30, i32* %18)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %19, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %293

36:                                               ; preds = %5
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = load i32, i32* %19, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %40 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %41 = call %struct.TYPE_10__* @ext2_get_branch(%struct.inode* %37, i32 %38, i32* %39, %struct.TYPE_10__* %40, i32* %12)
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %15, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %109, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %19, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32_to_cpu(i32 %50)
  store i64 %51, i64* %22, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %53 = call i32 @clear_buffer_new(%struct.buffer_head* %52)
  %54 = load i32, i32* %21, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %21, align 4
  br label %56

56:                                               ; preds = %101, %44
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp sle i32 %62, %63
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i1 [ false, %56 ], [ %64, %61 ]
  br i1 %66, label %67, label %102

67:                                               ; preds = %65
  %68 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %69 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 -1
  %74 = call i32 @verify_chain(%struct.TYPE_10__* %68, %struct.TYPE_10__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  store i32 0, i32* %21, align 4
  br label %102

79:                                               ; preds = %67
  %80 = load i32, i32* %19, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @le32_to_cpu(i32 %89)
  store i64 %90, i64* %23, align 8
  %91 = load i64, i64* %23, align 8
  %92 = load i64, i64* %22, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = icmp eq i64 %91, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %79
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %21, align 4
  br label %101

100:                                              ; preds = %79
  br label %102

101:                                              ; preds = %97
  br label %56

102:                                              ; preds = %100, %76, %65
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @EAGAIN, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %253

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %36
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %109
  br label %279

118:                                              ; preds = %112
  %119 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %20, align 8
  %120 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %119, i32 0, i32 0
  %121 = call i32 @mutex_lock(i32* %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @EAGAIN, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %129 = call i32 @verify_chain(%struct.TYPE_10__* %127, %struct.TYPE_10__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %164, label %131

131:                                              ; preds = %126, %118
  br label %132

132:                                              ; preds = %136, %131
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %134 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %135 = icmp ugt %struct.TYPE_10__* %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @brelse(i32 %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 -1
  store %struct.TYPE_10__* %142, %struct.TYPE_10__** %15, align 8
  br label %132

143:                                              ; preds = %132
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = load i32, i32* %19, align 4
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %147 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %148 = call %struct.TYPE_10__* @ext2_get_branch(%struct.inode* %144, i32 %145, i32* %146, %struct.TYPE_10__* %147, i32* %12)
  store %struct.TYPE_10__* %148, %struct.TYPE_10__** %15, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %150 = icmp ne %struct.TYPE_10__* %149, null
  br i1 %150, label %163, label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %21, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %21, align 4
  %154 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %20, align 8
  %155 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %279

160:                                              ; preds = %151
  %161 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %162 = call i32 @clear_buffer_new(%struct.buffer_head* %161)
  br label %253

163:                                              ; preds = %143
  br label %164

164:                                              ; preds = %163, %126
  %165 = load %struct.inode*, %struct.inode** %7, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @S_ISREG(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %164
  %171 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %20, align 8
  %172 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load %struct.inode*, %struct.inode** %7, align 8
  %177 = call i32 @ext2_init_block_alloc_info(%struct.inode* %176)
  br label %178

178:                                              ; preds = %175, %170, %164
  %179 = load %struct.inode*, %struct.inode** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %182 = call i64 @ext2_find_goal(%struct.inode* %179, i32 %180, %struct.TYPE_10__* %181)
  store i64 %182, i64* %16, align 8
  %183 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 %185
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %188 = ptrtoint %struct.TYPE_10__* %186 to i64
  %189 = ptrtoint %struct.TYPE_10__* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 16
  %192 = sub nsw i64 %191, 1
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %17, align 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load i64, i64* %9, align 8
  %197 = load i32, i32* %18, align 4
  %198 = call i32 @ext2_blks_to_allocate(%struct.TYPE_10__* %194, i32 %195, i64 %196, i32 %197)
  store i32 %198, i32* %21, align 4
  %199 = load %struct.inode*, %struct.inode** %7, align 8
  %200 = load i32, i32* %17, align 4
  %201 = load i64, i64* %16, align 8
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %204 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %205 = ptrtoint %struct.TYPE_10__* %203 to i64
  %206 = ptrtoint %struct.TYPE_10__* %204 to i64
  %207 = sub i64 %205, %206
  %208 = sdiv exact i64 %207, 16
  %209 = getelementptr inbounds i32, i32* %202, i64 %208
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %211 = call i32 @ext2_alloc_branch(%struct.inode* %199, i32 %200, i32* %21, i64 %201, i32* %209, %struct.TYPE_10__* %210)
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %178
  %215 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %20, align 8
  %216 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %215, i32 0, i32 0
  %217 = call i32 @mutex_unlock(i32* %216)
  br label %279

218:                                              ; preds = %178
  %219 = load %struct.inode*, %struct.inode** %7, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @ext2_use_xip(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %241

224:                                              ; preds = %218
  %225 = load %struct.inode*, %struct.inode** %7, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i64 @le32_to_cpu(i32 %231)
  %233 = call i32 @ext2_clear_xip_target(%struct.inode* %225, i64 %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %224
  %237 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %20, align 8
  %238 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %237, i32 0, i32 0
  %239 = call i32 @mutex_unlock(i32* %238)
  br label %279

240:                                              ; preds = %224
  br label %241

241:                                              ; preds = %240, %218
  %242 = load %struct.inode*, %struct.inode** %7, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* %21, align 4
  %247 = call i32 @ext2_splice_branch(%struct.inode* %242, i32 %243, %struct.TYPE_10__* %244, i32 %245, i32 %246)
  %248 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %20, align 8
  %249 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %248, i32 0, i32 0
  %250 = call i32 @mutex_unlock(i32* %249)
  %251 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %252 = call i32 @set_buffer_new(%struct.buffer_head* %251)
  br label %253

253:                                              ; preds = %241, %160, %107
  %254 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %255 = load %struct.inode*, %struct.inode** %7, align 8
  %256 = getelementptr inbounds %struct.inode, %struct.inode* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %19, align 4
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @le32_to_cpu(i32 %263)
  %265 = call i32 @map_bh(%struct.buffer_head* %254, i32 %257, i64 %264)
  %266 = load i32, i32* %21, align 4
  %267 = load i32, i32* %18, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %253
  %270 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %271 = call i32 @set_buffer_boundary(%struct.buffer_head* %270)
  br label %272

272:                                              ; preds = %269, %253
  %273 = load i32, i32* %21, align 4
  store i32 %273, i32* %12, align 4
  %274 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %275 = load i32, i32* %19, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i64 -1
  store %struct.TYPE_10__* %278, %struct.TYPE_10__** %15, align 8
  br label %279

279:                                              ; preds = %272, %236, %214, %159, %117
  br label %280

280:                                              ; preds = %284, %279
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %282 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %14, i64 0, i64 0
  %283 = icmp ugt %struct.TYPE_10__* %281, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @brelse(i32 %287)
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 -1
  store %struct.TYPE_10__* %290, %struct.TYPE_10__** %15, align 8
  br label %280

291:                                              ; preds = %280
  %292 = load i32, i32* %12, align 4
  store i32 %292, i32* %6, align 4
  br label %293

293:                                              ; preds = %291, %34
  %294 = load i32, i32* %6, align 4
  ret i32 %294
}

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @ext2_block_to_path(%struct.inode*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @ext2_get_branch(%struct.inode*, i32, i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @verify_chain(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ext2_init_block_alloc_info(%struct.inode*) #1

declare dso_local i64 @ext2_find_goal(%struct.inode*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ext2_blks_to_allocate(%struct.TYPE_10__*, i32, i64, i32) #1

declare dso_local i32 @ext2_alloc_branch(%struct.inode*, i32, i32*, i64, i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @ext2_use_xip(i32) #1

declare dso_local i32 @ext2_clear_xip_target(%struct.inode*, i64) #1

declare dso_local i32 @ext2_splice_branch(%struct.inode*, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local i32 @set_buffer_boundary(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
