; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_inode_getfrag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_inode_getfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.ufs_inode_info = type { i64 }
%struct.ufs_sb_private_info = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [76 x i8] c"ENTER, ino %lu, fragment %llu, new_fragment %llu, required %u, metadata %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"EXIT, result %llu\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i64, i64, i32, i32*, i64*, i32*, %struct.page*)* @ufs_inode_getfrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ufs_inode_getfrag(%struct.inode* %0, i64 %1, i64 %2, i32 %3, i32* %4, i64* %5, i32* %6, %struct.page* %7) #0 {
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.ufs_inode_info*, align 8
  %19 = alloca %struct.super_block*, align 8
  %20 = alloca %struct.ufs_sb_private_info*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.page* %7, %struct.page** %17, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %31)
  store %struct.ufs_inode_info* %32, %struct.ufs_inode_info** %18, align 8
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %19, align 8
  %36 = load %struct.super_block*, %struct.super_block** %19, align 8
  %37 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %38, align 8
  store %struct.ufs_sb_private_info* %39, %struct.ufs_sb_private_info** %20, align 8
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i64*, i64** %15, align 8
  %48 = icmp ne i64* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 (i8*, i64, ...) @UFSD(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44, i64 %45, i32 %46, i32 %50)
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @ufs_fragstoblks(i64 %52)
  store i64 %53, i64* %27, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @ufs_fragnum(i64 %54)
  store i32 %55, i32* %22, align 4
  %56 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %57 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %18, align 8
  %58 = load i64, i64* %27, align 8
  %59 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %56, %struct.ufs_inode_info* %57, i64 %58)
  store i8* %59, i8** %29, align 8
  store i64 0, i64* %25, align 8
  br label %60

60:                                               ; preds = %284, %150, %99, %8
  %61 = load %struct.super_block*, %struct.super_block** %19, align 8
  %62 = load i8*, i8** %29, align 8
  %63 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %61, i8* %62)
  store i64 %63, i64* %24, align 8
  %64 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %18, align 8
  %65 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %26, align 8
  %67 = load i64, i64* %24, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %60
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %26, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %69
  %74 = load i64*, i64** %15, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %102, label %76

76:                                               ; preds = %73
  %77 = load %struct.super_block*, %struct.super_block** %19, align 8
  %78 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %79 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %24, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %22, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %77, i64 %85)
  store %struct.buffer_head* %86, %struct.buffer_head** %21, align 8
  %87 = load i64, i64* %24, align 8
  %88 = load %struct.super_block*, %struct.super_block** %19, align 8
  %89 = load i8*, i8** %29, align 8
  %90 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %88, i8* %89)
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %76
  %93 = load i64, i64* %24, align 8
  %94 = load i32, i32* %22, align 4
  %95 = zext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = call i32 (i8*, i64, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %98, %struct.buffer_head** %9, align 8
  br label %334

99:                                               ; preds = %76
  %100 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %101 = call i32 @brelse(%struct.buffer_head* %100)
  br label %60

102:                                              ; preds = %73
  %103 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %104 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %24, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i32, i32* %22, align 4
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i64*, i64** %15, align 8
  store i64 %110, i64* %111, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %334

112:                                              ; preds = %69, %60
  %113 = load i64, i64* %26, align 8
  %114 = call i64 @ufs_fragstoblks(i64 %113)
  store i64 %114, i64* %28, align 8
  %115 = load i64, i64* %26, align 8
  %116 = call i32 @ufs_fragnum(i64 %115)
  store i32 %116, i32* %23, align 4
  %117 = load i64, i64* %28, align 8
  %118 = load i64, i64* %27, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %192

120:                                              ; preds = %112
  %121 = load i32, i32* %23, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %120
  %124 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %125 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %18, align 8
  %126 = load i64, i64* %28, align 8
  %127 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %124, %struct.ufs_inode_info* %125, i64 %126)
  store i8* %127, i8** %30, align 8
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = load i8*, i8** %30, align 8
  %130 = load i64, i64* %26, align 8
  %131 = load %struct.super_block*, %struct.super_block** %19, align 8
  %132 = load i8*, i8** %30, align 8
  %133 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %131, i8* %132)
  %134 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %135 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %23, align 4
  %138 = sub i32 %136, %137
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.page*, %struct.page** %17, align 8
  %141 = call i64 @ufs_new_fragments(%struct.inode* %128, i8* %129, i64 %130, i64 %133, i32 %138, i32* %139, %struct.page* %140)
  store i64 %141, i64* %24, align 8
  %142 = load i64, i64* %24, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %123
  %145 = load i64, i64* %26, align 8
  %146 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %18, align 8
  %147 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %60

151:                                              ; preds = %144
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %334

152:                                              ; preds = %123
  %153 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %18, align 8
  %154 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %26, align 8
  br label %156

156:                                              ; preds = %152, %120
  %157 = load %struct.super_block*, %struct.super_block** %19, align 8
  %158 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %159 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %18, align 8
  %160 = load i64, i64* %28, align 8
  %161 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %158, %struct.ufs_inode_info* %159, i64 %160)
  %162 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %157, i8* %161)
  store i64 %162, i64* %24, align 8
  %163 = load i64, i64* %24, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = load i64, i64* %24, align 8
  %167 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %168 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = zext i32 %169 to i64
  %171 = add nsw i64 %166, %170
  store i64 %171, i64* %25, align 8
  br label %172

172:                                              ; preds = %165, %156
  %173 = load %struct.inode*, %struct.inode** %10, align 8
  %174 = load i8*, i8** %29, align 8
  %175 = load i64, i64* %11, align 8
  %176 = load i32, i32* %22, align 4
  %177 = zext i32 %176 to i64
  %178 = sub nsw i64 %175, %177
  %179 = load i64, i64* %25, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %22, align 4
  %182 = add i32 %180, %181
  %183 = load i32*, i32** %14, align 8
  %184 = load i64*, i64** %15, align 8
  %185 = icmp ne i64* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %172
  %187 = load %struct.page*, %struct.page** %17, align 8
  br label %189

188:                                              ; preds = %172
  br label %189

189:                                              ; preds = %188, %186
  %190 = phi %struct.page* [ %187, %186 ], [ null, %188 ]
  %191 = call i64 @ufs_new_fragments(%struct.inode* %173, i8* %174, i64 %178, i64 %179, i32 %182, i32* %183, %struct.page* %190)
  store i64 %191, i64* %24, align 8
  br label %264

192:                                              ; preds = %112
  %193 = load i64, i64* %28, align 8
  %194 = load i64, i64* %27, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %222

196:                                              ; preds = %192
  %197 = load %struct.inode*, %struct.inode** %10, align 8
  %198 = load i8*, i8** %29, align 8
  %199 = load i64, i64* %11, align 8
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* %23, align 4
  %202 = sub i32 %200, %201
  %203 = zext i32 %202 to i64
  %204 = sub nsw i64 %199, %203
  %205 = load %struct.super_block*, %struct.super_block** %19, align 8
  %206 = load i8*, i8** %29, align 8
  %207 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %205, i8* %206)
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %22, align 4
  %210 = load i32, i32* %23, align 4
  %211 = sub i32 %209, %210
  %212 = add i32 %208, %211
  %213 = load i32*, i32** %14, align 8
  %214 = load i64*, i64** %15, align 8
  %215 = icmp ne i64* %214, null
  br i1 %215, label %216, label %218

216:                                              ; preds = %196
  %217 = load %struct.page*, %struct.page** %17, align 8
  br label %219

218:                                              ; preds = %196
  br label %219

219:                                              ; preds = %218, %216
  %220 = phi %struct.page* [ %217, %216 ], [ null, %218 ]
  %221 = call i64 @ufs_new_fragments(%struct.inode* %197, i8* %198, i64 %204, i64 %207, i32 %212, i32* %213, %struct.page* %220)
  store i64 %221, i64* %24, align 8
  br label %263

222:                                              ; preds = %192
  %223 = load i64, i64* %27, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %222
  %226 = load %struct.super_block*, %struct.super_block** %19, align 8
  %227 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %228 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %18, align 8
  %229 = load i64, i64* %27, align 8
  %230 = sub nsw i64 %229, 1
  %231 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %227, %struct.ufs_inode_info* %228, i64 %230)
  %232 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %226, i8* %231)
  store i64 %232, i64* %24, align 8
  %233 = load i64, i64* %24, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %225
  %236 = load i64, i64* %24, align 8
  %237 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %238 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = zext i32 %239 to i64
  %241 = add nsw i64 %236, %240
  store i64 %241, i64* %25, align 8
  br label %242

242:                                              ; preds = %235, %225
  br label %243

243:                                              ; preds = %242, %222
  %244 = load %struct.inode*, %struct.inode** %10, align 8
  %245 = load i8*, i8** %29, align 8
  %246 = load i64, i64* %11, align 8
  %247 = load i32, i32* %22, align 4
  %248 = zext i32 %247 to i64
  %249 = sub nsw i64 %246, %248
  %250 = load i64, i64* %25, align 8
  %251 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %252 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32*, i32** %14, align 8
  %255 = load i64*, i64** %15, align 8
  %256 = icmp ne i64* %255, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %243
  %258 = load %struct.page*, %struct.page** %17, align 8
  br label %260

259:                                              ; preds = %243
  br label %260

260:                                              ; preds = %259, %257
  %261 = phi %struct.page* [ %258, %257 ], [ null, %259 ]
  %262 = call i64 @ufs_new_fragments(%struct.inode* %244, i8* %245, i64 %249, i64 %250, i32 %253, i32* %254, %struct.page* %261)
  store i64 %262, i64* %24, align 8
  br label %263

263:                                              ; preds = %260, %219
  br label %264

264:                                              ; preds = %263, %189
  %265 = load i64, i64* %24, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %289, label %267

267:                                              ; preds = %264
  %268 = load i32, i32* %22, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %267
  %271 = load %struct.super_block*, %struct.super_block** %19, align 8
  %272 = load i8*, i8** %29, align 8
  %273 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %271, i8* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %284, label %275

275:                                              ; preds = %270, %267
  %276 = load i32, i32* %22, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = load i64, i64* %26, align 8
  %280 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %18, align 8
  %281 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %279, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %278, %270
  br label %60

285:                                              ; preds = %278, %275
  %286 = load i32, i32* @ENOSPC, align 4
  %287 = sub nsw i32 0, %286
  %288 = load i32*, i32** %14, align 8
  store i32 %287, i32* %288, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %334

289:                                              ; preds = %264
  %290 = load i64*, i64** %15, align 8
  %291 = icmp ne i64* %290, null
  br i1 %291, label %303, label %292

292:                                              ; preds = %289
  %293 = load %struct.super_block*, %struct.super_block** %19, align 8
  %294 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %295 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %24, align 8
  %298 = add nsw i64 %296, %297
  %299 = load i32, i32* %22, align 4
  %300 = zext i32 %299 to i64
  %301 = add nsw i64 %298, %300
  %302 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %293, i64 %301)
  store %struct.buffer_head* %302, %struct.buffer_head** %21, align 8
  br label %315

303:                                              ; preds = %289
  %304 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %20, align 8
  %305 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %24, align 8
  %308 = add nsw i64 %306, %307
  %309 = load i32, i32* %22, align 4
  %310 = zext i32 %309 to i64
  %311 = add nsw i64 %308, %310
  %312 = load i64*, i64** %15, align 8
  store i64 %311, i64* %312, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  %313 = load i32*, i32** %14, align 8
  store i32 0, i32* %313, align 4
  %314 = load i32*, i32** %16, align 8
  store i32 1, i32* %314, align 4
  br label %315

315:                                              ; preds = %303, %292
  %316 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %317 = load %struct.inode*, %struct.inode** %10, align 8
  %318 = getelementptr inbounds %struct.inode, %struct.inode* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  %319 = load %struct.inode*, %struct.inode** %10, align 8
  %320 = call i64 @IS_SYNC(%struct.inode* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %315
  %323 = load %struct.inode*, %struct.inode** %10, align 8
  %324 = call i32 @ufs_sync_inode(%struct.inode* %323)
  br label %325

325:                                              ; preds = %322, %315
  %326 = load %struct.inode*, %struct.inode** %10, align 8
  %327 = call i32 @mark_inode_dirty(%struct.inode* %326)
  %328 = load i64, i64* %24, align 8
  %329 = load i32, i32* %22, align 4
  %330 = zext i32 %329 to i64
  %331 = add i64 %328, %330
  %332 = call i32 (i8*, i64, ...) @UFSD(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %331)
  %333 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* %333, %struct.buffer_head** %9, align 8
  br label %334

334:                                              ; preds = %325, %285, %151, %102, %92
  %335 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  ret %struct.buffer_head* %335
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*, i64, ...) #1

declare dso_local i64 @ufs_fragstoblks(i64) #1

declare dso_local i32 @ufs_fragnum(i64) #1

declare dso_local i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_inode_info*, i64) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ufs_new_fragments(%struct.inode*, i8*, i64, i64, i32, i32*, %struct.page*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ufs_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
