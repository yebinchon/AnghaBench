; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diAlloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.metapage = type { i64 }
%struct.iag = type { i32*, i32*, i32*, i32*, i64, i64 }
%struct.inomap = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__*, %struct.inode* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.inode*, %struct.inomap* }

@FILESYSTEM_I = common dso_local global i32 0, align 4
@INOSPERIAG = common dso_local global i32 0, align 4
@RDWRLOCK_IMAP = common dso_local global i32 0, align 4
@L2INOSPEREXT = common dso_local global i32 0, align 4
@INOSPEREXT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXTSPERIAG = common dso_local global i32 0, align 4
@EXTSPERSUM = common dso_local global i32 0, align 4
@SMAPSZ = common dso_local global i32 0, align 4
@L2EXTSPERSUM = common dso_local global i32 0, align 4
@ONES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"diAlloc: can't find free bit in wmap\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diAlloc(%struct.inode* %0, i32 %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.inode*, align 8
  %23 = alloca %struct.metapage*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.iag*, align 8
  %26 = alloca %struct.inomap*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_7__* @JFS_SBI(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load %struct.inode*, %struct.inode** %31, align 8
  store %struct.inode* %32, %struct.inode** %22, align 8
  %33 = load %struct.inode*, %struct.inode** %22, align 8
  %34 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load %struct.inomap*, %struct.inomap** %35, align 8
  store %struct.inomap* %36, %struct.inomap** %26, align 8
  %37 = load %struct.inode*, %struct.inode** %22, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store %struct.inode* %37, %struct.inode** %40, align 8
  %41 = load i32, i32* @FILESYSTEM_I, align 4
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %3
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_7__* @JFS_SBI(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dbNextAG(i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load %struct.inomap*, %struct.inomap** %26, align 8
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @AG_LOCK(%struct.inomap* %55, i32 %56)
  br label %442

58:                                               ; preds = %3
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %18, align 4
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_7__* @JFS_SBI(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i64 @atomic_read(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %58
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_7__* @JFS_SBI(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dbNextAG(i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load %struct.inomap*, %struct.inomap** %26, align 8
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @AG_LOCK(%struct.inomap* %84, i32 %85)
  br label %442

87:                                               ; preds = %58
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* @INOSPERIAG, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %92, %94
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %24, align 4
  br label %102

102:                                              ; preds = %98, %87
  %103 = load %struct.inomap*, %struct.inomap** %26, align 8
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @AG_LOCK(%struct.inomap* %103, i32 %104)
  %106 = load %struct.inode*, %struct.inode** %22, align 8
  %107 = load i32, i32* @RDWRLOCK_IMAP, align 4
  %108 = call i32 @IREAD_LOCK(%struct.inode* %106, i32 %107)
  %109 = load i32, i32* %24, align 4
  %110 = call i32 @INOTOIAG(i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load %struct.inomap*, %struct.inomap** %26, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @diIAGRead(%struct.inomap* %111, i32 %112, %struct.metapage** %23)
  store i32 %113, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %102
  %116 = load %struct.inode*, %struct.inode** %22, align 8
  %117 = call i32 @IREAD_UNLOCK(%struct.inode* %116)
  %118 = load %struct.inomap*, %struct.inomap** %26, align 8
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @AG_UNLOCK(%struct.inomap* %118, i32 %119)
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %463

122:                                              ; preds = %102
  %123 = load %struct.metapage*, %struct.metapage** %23, align 8
  %124 = getelementptr inbounds %struct.metapage, %struct.metapage* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.iag*
  store %struct.iag* %126, %struct.iag** %25, align 8
  %127 = load %struct.inomap*, %struct.inomap** %26, align 8
  %128 = getelementptr inbounds %struct.inomap, %struct.inomap* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 32
  br i1 %135, label %136, label %141

136:                                              ; preds = %122
  %137 = load %struct.iag*, %struct.iag** %25, align 8
  %138 = getelementptr inbounds %struct.iag, %struct.iag* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %136, %122
  %142 = phi i1 [ false, %122 ], [ %140, %136 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %11, align 4
  %144 = load %struct.iag*, %struct.iag** %25, align 8
  %145 = getelementptr inbounds %struct.iag, %struct.iag* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %437

151:                                              ; preds = %148, %141
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @L2INOSPEREXT, align 4
  %154 = ashr i32 %152, %153
  store i32 %154, i32* %12, align 4
  %155 = load %struct.iag*, %struct.iag** %25, align 8
  %156 = getelementptr inbounds %struct.iag, %struct.iag* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = call i64 @addressPXD(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %232

163:                                              ; preds = %151
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @INOSPEREXT, align 4
  %166 = sub nsw i32 %165, 1
  %167 = and i32 %164, %166
  store i32 %167, i32* %13, align 4
  %168 = load %struct.iag*, %struct.iag** %25, align 8
  %169 = getelementptr inbounds %struct.iag, %struct.iag* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @le32_to_cpu(i32 %174)
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @diFindFree(i32 %175, i32 %176)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* @INOSPEREXT, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %217

180:                                              ; preds = %163
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @L2INOSPEREXT, align 4
  %183 = shl i32 %181, %182
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %183, %184
  store i32 %185, i32* %9, align 4
  %186 = load %struct.inomap*, %struct.inomap** %26, align 8
  %187 = load %struct.iag*, %struct.iag** %25, align 8
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @diAllocBit(%struct.inomap* %186, %struct.iag* %187, i32 %188)
  store i32 %189, i32* %8, align 4
  %190 = load %struct.inode*, %struct.inode** %22, align 8
  %191 = call i32 @IREAD_UNLOCK(%struct.inode* %190)
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %180
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @EIO, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp eq i32 %195, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  br label %210

201:                                              ; preds = %180
  %202 = load %struct.inode*, %struct.inode** %7, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.iag*, %struct.iag** %25, align 8
  %207 = call i32 @diInitInode(%struct.inode* %202, i32 %203, i32 %204, i32 %205, %struct.iag* %206)
  %208 = load %struct.metapage*, %struct.metapage** %23, align 8
  %209 = call i32 @mark_metapage_dirty(%struct.metapage* %208)
  br label %210

210:                                              ; preds = %201, %194
  %211 = load %struct.metapage*, %struct.metapage** %23, align 8
  %212 = call i32 @release_metapage(%struct.metapage* %211)
  %213 = load %struct.inomap*, %struct.inomap** %26, align 8
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @AG_UNLOCK(%struct.inomap* %213, i32 %214)
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %4, align 4
  br label %463

217:                                              ; preds = %163
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @EXTSPERIAG, align 4
  %223 = sub nsw i32 %222, 1
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  br label %229

229:                                              ; preds = %226, %225
  %230 = phi i32 [ 0, %225 ], [ %228, %226 ]
  store i32 %230, i32* %12, align 4
  br label %231

231:                                              ; preds = %229, %217
  br label %232

232:                                              ; preds = %231, %151
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* @EXTSPERSUM, align 4
  %235 = sub nsw i32 %234, 1
  %236 = and i32 %233, %235
  store i32 %236, i32* %13, align 4
  %237 = load i32, i32* %13, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = load i32, i32* @SMAPSZ, align 4
  br label %244

241:                                              ; preds = %232
  %242 = load i32, i32* @SMAPSZ, align 4
  %243 = add nsw i32 %242, 1
  br label %244

244:                                              ; preds = %241, %239
  %245 = phi i32 [ %240, %239 ], [ %243, %241 ]
  store i32 %245, i32* %15, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* @L2EXTSPERSUM, align 4
  %248 = ashr i32 %246, %247
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* @ONES, align 4
  %250 = load i32, i32* @EXTSPERSUM, align 4
  %251 = load i32, i32* %13, align 4
  %252 = sub nsw i32 %250, %251
  %253 = shl i32 %249, %252
  store i32 %253, i32* %19, align 4
  %254 = load %struct.iag*, %struct.iag** %25, align 8
  %255 = getelementptr inbounds %struct.iag, %struct.iag* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @le32_to_cpu(i32 %260)
  %262 = load i32, i32* %19, align 4
  %263 = or i32 %261, %262
  store i32 %263, i32* %20, align 4
  %264 = load %struct.iag*, %struct.iag** %25, align 8
  %265 = getelementptr inbounds %struct.iag, %struct.iag* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @le32_to_cpu(i32 %270)
  %272 = load i32, i32* %19, align 4
  %273 = or i32 %271, %272
  store i32 %273, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %274

274:                                              ; preds = %433, %244
  %275 = load i32, i32* %17, align 4
  %276 = load i32, i32* %15, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %436

278:                                              ; preds = %274
  %279 = load i32, i32* %20, align 4
  %280 = xor i32 %279, -1
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %353

282:                                              ; preds = %278
  %283 = load i32, i32* %20, align 4
  %284 = call i32 @diFindFree(i32 %283, i32 0)
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* @L2EXTSPERSUM, align 4
  %287 = shl i32 %285, %286
  %288 = load i32, i32* %16, align 4
  %289 = add nsw i32 %287, %288
  store i32 %289, i32* %12, align 4
  %290 = load %struct.iag*, %struct.iag** %25, align 8
  %291 = getelementptr inbounds %struct.iag, %struct.iag* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %12, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @le32_to_cpu(i32 %296)
  %298 = call i32 @diFindFree(i32 %297, i32 0)
  store i32 %298, i32* %16, align 4
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* @INOSPEREXT, align 4
  %301 = icmp sge i32 %299, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %282
  %303 = load %struct.inode*, %struct.inode** %22, align 8
  %304 = call i32 @IREAD_UNLOCK(%struct.inode* %303)
  %305 = load %struct.metapage*, %struct.metapage** %23, align 8
  %306 = call i32 @release_metapage(%struct.metapage* %305)
  %307 = load %struct.inomap*, %struct.inomap** %26, align 8
  %308 = load i32, i32* %18, align 4
  %309 = call i32 @AG_UNLOCK(%struct.inomap* %307, i32 %308)
  %310 = load %struct.inode*, %struct.inode** %7, align 8
  %311 = getelementptr inbounds %struct.inode, %struct.inode* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @jfs_error(i32 %312, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %314 = load i32, i32* @EIO, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %4, align 4
  br label %463

316:                                              ; preds = %282
  %317 = load i32, i32* %12, align 4
  %318 = load i32, i32* @L2INOSPEREXT, align 4
  %319 = shl i32 %317, %318
  %320 = load i32, i32* %16, align 4
  %321 = add nsw i32 %319, %320
  store i32 %321, i32* %9, align 4
  %322 = load %struct.inomap*, %struct.inomap** %26, align 8
  %323 = load %struct.iag*, %struct.iag** %25, align 8
  %324 = load i32, i32* %9, align 4
  %325 = call i32 @diAllocBit(%struct.inomap* %322, %struct.iag* %323, i32 %324)
  store i32 %325, i32* %8, align 4
  %326 = load %struct.inode*, %struct.inode** %22, align 8
  %327 = call i32 @IREAD_UNLOCK(%struct.inode* %326)
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %316
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* @EIO, align 4
  %333 = sub nsw i32 0, %332
  %334 = icmp eq i32 %331, %333
  %335 = zext i1 %334 to i32
  %336 = call i32 @assert(i32 %335)
  br label %346

337:                                              ; preds = %316
  %338 = load %struct.inode*, %struct.inode** %7, align 8
  %339 = load i32, i32* %10, align 4
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* %12, align 4
  %342 = load %struct.iag*, %struct.iag** %25, align 8
  %343 = call i32 @diInitInode(%struct.inode* %338, i32 %339, i32 %340, i32 %341, %struct.iag* %342)
  %344 = load %struct.metapage*, %struct.metapage** %23, align 8
  %345 = call i32 @mark_metapage_dirty(%struct.metapage* %344)
  br label %346

346:                                              ; preds = %337, %330
  %347 = load %struct.metapage*, %struct.metapage** %23, align 8
  %348 = call i32 @release_metapage(%struct.metapage* %347)
  %349 = load %struct.inomap*, %struct.inomap** %26, align 8
  %350 = load i32, i32* %18, align 4
  %351 = call i32 @AG_UNLOCK(%struct.inomap* %349, i32 %350)
  %352 = load i32, i32* %8, align 4
  store i32 %352, i32* %4, align 4
  br label %463

353:                                              ; preds = %278
  %354 = load i32, i32* %11, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %406

356:                                              ; preds = %353
  %357 = load i32, i32* %21, align 4
  %358 = xor i32 %357, -1
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %406

360:                                              ; preds = %356
  %361 = load i32, i32* %21, align 4
  %362 = call i32 @diFindFree(i32 %361, i32 0)
  store i32 %362, i32* %16, align 4
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* @L2EXTSPERSUM, align 4
  %365 = shl i32 %363, %364
  %366 = load i32, i32* %16, align 4
  %367 = add nsw i32 %365, %366
  store i32 %367, i32* %12, align 4
  %368 = load %struct.inomap*, %struct.inomap** %26, align 8
  %369 = load %struct.iag*, %struct.iag** %25, align 8
  %370 = load i32, i32* %12, align 4
  %371 = call i32 @diNewExt(%struct.inomap* %368, %struct.iag* %369, i32 %370)
  store i32 %371, i32* %8, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %386

373:                                              ; preds = %360
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* @ENOSPC, align 4
  %376 = sub nsw i32 0, %375
  %377 = icmp eq i32 %374, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %373
  br label %436

379:                                              ; preds = %373
  %380 = load i32, i32* %8, align 4
  %381 = load i32, i32* @EIO, align 4
  %382 = sub nsw i32 0, %381
  %383 = icmp eq i32 %380, %382
  %384 = zext i1 %383 to i32
  %385 = call i32 @assert(i32 %384)
  br label %397

386:                                              ; preds = %360
  %387 = load %struct.inode*, %struct.inode** %7, align 8
  %388 = load i32, i32* %10, align 4
  %389 = load i32, i32* %12, align 4
  %390 = load i32, i32* @L2INOSPEREXT, align 4
  %391 = shl i32 %389, %390
  %392 = load i32, i32* %12, align 4
  %393 = load %struct.iag*, %struct.iag** %25, align 8
  %394 = call i32 @diInitInode(%struct.inode* %387, i32 %388, i32 %391, i32 %392, %struct.iag* %393)
  %395 = load %struct.metapage*, %struct.metapage** %23, align 8
  %396 = call i32 @mark_metapage_dirty(%struct.metapage* %395)
  br label %397

397:                                              ; preds = %386, %379
  %398 = load %struct.metapage*, %struct.metapage** %23, align 8
  %399 = call i32 @release_metapage(%struct.metapage* %398)
  %400 = load %struct.inode*, %struct.inode** %22, align 8
  %401 = call i32 @IREAD_UNLOCK(%struct.inode* %400)
  %402 = load %struct.inomap*, %struct.inomap** %26, align 8
  %403 = load i32, i32* %18, align 4
  %404 = call i32 @AG_UNLOCK(%struct.inomap* %402, i32 %403)
  %405 = load i32, i32* %8, align 4
  store i32 %405, i32* %4, align 4
  br label %463

406:                                              ; preds = %356, %353
  %407 = load i32, i32* %14, align 4
  %408 = load i32, i32* @SMAPSZ, align 4
  %409 = sub nsw i32 %408, 1
  %410 = icmp eq i32 %407, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %406
  br label %415

412:                                              ; preds = %406
  %413 = load i32, i32* %14, align 4
  %414 = add nsw i32 %413, 1
  br label %415

415:                                              ; preds = %412, %411
  %416 = phi i32 [ 0, %411 ], [ %414, %412 ]
  store i32 %416, i32* %14, align 4
  %417 = load %struct.iag*, %struct.iag** %25, align 8
  %418 = getelementptr inbounds %struct.iag, %struct.iag* %417, i32 0, i32 1
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %14, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @le32_to_cpu(i32 %423)
  store i32 %424, i32* %20, align 4
  %425 = load %struct.iag*, %struct.iag** %25, align 8
  %426 = getelementptr inbounds %struct.iag, %struct.iag* %425, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %14, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @le32_to_cpu(i32 %431)
  store i32 %432, i32* %21, align 4
  br label %433

433:                                              ; preds = %415
  %434 = load i32, i32* %17, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %17, align 4
  br label %274

436:                                              ; preds = %378, %274
  br label %437

437:                                              ; preds = %436, %148
  %438 = load %struct.inode*, %struct.inode** %22, align 8
  %439 = call i32 @IREAD_UNLOCK(%struct.inode* %438)
  %440 = load %struct.metapage*, %struct.metapage** %23, align 8
  %441 = call i32 @release_metapage(%struct.metapage* %440)
  br label %442

442:                                              ; preds = %437, %76, %47
  %443 = load %struct.inomap*, %struct.inomap** %26, align 8
  %444 = load i32, i32* %18, align 4
  %445 = load i32, i32* %6, align 4
  %446 = load %struct.inode*, %struct.inode** %7, align 8
  %447 = call i32 @diAllocAG(%struct.inomap* %443, i32 %444, i32 %445, %struct.inode* %446)
  store i32 %447, i32* %8, align 4
  %448 = load %struct.inomap*, %struct.inomap** %26, align 8
  %449 = load i32, i32* %18, align 4
  %450 = call i32 @AG_UNLOCK(%struct.inomap* %448, i32 %449)
  %451 = load i32, i32* %8, align 4
  %452 = load i32, i32* @ENOSPC, align 4
  %453 = sub nsw i32 0, %452
  %454 = icmp ne i32 %451, %453
  br i1 %454, label %455, label %457

455:                                              ; preds = %442
  %456 = load i32, i32* %8, align 4
  store i32 %456, i32* %4, align 4
  br label %463

457:                                              ; preds = %442
  %458 = load %struct.inomap*, %struct.inomap** %26, align 8
  %459 = load i32, i32* %18, align 4
  %460 = load i32, i32* %6, align 4
  %461 = load %struct.inode*, %struct.inode** %7, align 8
  %462 = call i32 @diAllocAny(%struct.inomap* %458, i32 %459, i32 %460, %struct.inode* %461)
  store i32 %462, i32* %4, align 4
  br label %463

463:                                              ; preds = %457, %455, %397, %346, %302, %210, %115
  %464 = load i32, i32* %4, align 4
  ret i32 %464
}

declare dso_local %struct.TYPE_7__* @JFS_SBI(i32) #1

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @dbNextAG(i32) #1

declare dso_local i32 @AG_LOCK(%struct.inomap*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @INOTOIAG(i32) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

declare dso_local i32 @AG_UNLOCK(%struct.inomap*, i32) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i32 @diFindFree(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @diAllocBit(%struct.inomap*, %struct.iag*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @diInitInode(%struct.inode*, i32, i32, i32, %struct.iag*) #1

declare dso_local i32 @mark_metapage_dirty(%struct.metapage*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @diNewExt(%struct.inomap*, %struct.iag*, i32) #1

declare dso_local i32 @diAllocAG(%struct.inomap*, i32, i32, %struct.inode*) #1

declare dso_local i32 @diAllocAny(%struct.inomap*, i32, i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
