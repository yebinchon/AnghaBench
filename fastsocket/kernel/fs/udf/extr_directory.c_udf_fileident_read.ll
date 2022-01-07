; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_directory.c_udf_fileident_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_directory.c_udf_fileident_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8 }
%struct.udf_fileident_bh = type { i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i32* }
%struct.fileIdentDesc = type { i32, i32 }
%struct.extent_position = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@READA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fileIdentDesc* @udf_fileident_read(%struct.inode* %0, i32* %1, %struct.udf_fileident_bh* %2, %struct.fileIdentDesc* %3, %struct.extent_position* %4, %struct.kernel_lb_addr* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.fileIdentDesc*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.udf_fileident_bh*, align 8
  %13 = alloca %struct.fileIdentDesc*, align 8
  %14 = alloca %struct.extent_position*, align 8
  %15 = alloca %struct.kernel_lb_addr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.fileIdentDesc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca [16 x %struct.buffer_head*], align 16
  %24 = alloca %struct.udf_inode_info*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8, align 1
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.udf_fileident_bh* %2, %struct.udf_fileident_bh** %12, align 8
  store %struct.fileIdentDesc* %3, %struct.fileIdentDesc** %13, align 8
  store %struct.extent_position* %4, %struct.extent_position** %14, align 8
  store %struct.kernel_lb_addr* %5, %struct.kernel_lb_addr** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %29)
  store %struct.udf_inode_info* %30, %struct.udf_inode_info** %24, align 8
  %31 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %32 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %35 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %37 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %82

41:                                               ; preds = %8
  %42 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %43 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.udf_inode_info*, %struct.udf_inode_info** %24, align 8
  %47 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i64 4, i64 4
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i32, i32* %45, i64 %52
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %60 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %59, i32 0, i32 1
  %61 = call %struct.fileIdentDesc* @udf_get_fileident(i32* %53, i32 %58, i32* %60)
  store %struct.fileIdentDesc* %61, %struct.fileIdentDesc** %18, align 8
  %62 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %63 = icmp ne %struct.fileIdentDesc* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %41
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %496

65:                                               ; preds = %41
  %66 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %67 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %70 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %77 = bitcast %struct.fileIdentDesc* %76 to i32*
  %78 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %79 = bitcast %struct.fileIdentDesc* %78 to i32*
  %80 = call i32 @memcpy(i32* %77, i32* %79, i32 8)
  %81 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  store %struct.fileIdentDesc* %81, %struct.fileIdentDesc** %9, align 8
  br label %496

82:                                               ; preds = %8
  %83 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %84 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %85, %90
  br i1 %91, label %92, label %268

92:                                               ; preds = %82
  %93 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %94 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %25, align 4
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i8, i8* %99, align 4
  store i8 %100, i8* %26, align 1
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %103 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 @udf_next_aext(%struct.inode* %101, %struct.extent_position* %102, %struct.kernel_lb_addr* %103, i8* %104, i32 1)
  %106 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %107 = ashr i32 %106, 30
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %496

110:                                              ; preds = %92
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @udf_get_lb_pblock(%struct.TYPE_6__* %113, %struct.kernel_lb_addr* %114, i8 zeroext %116)
  store i32 %117, i32* %21, align 4
  %118 = load i8*, i8** %17, align 8
  %119 = load i8, i8* %118, align 1
  %120 = add i8 %119, 1
  store i8 %120, i8* %118, align 1
  %121 = load i8*, i8** %17, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* %26, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %123, %125
  %127 = load i8*, i8** %16, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %110
  %132 = load i8*, i8** %17, align 8
  store i8 0, i8* %132, align 1
  br label %137

133:                                              ; preds = %110
  %134 = load i32, i32* %25, align 4
  %135 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %136 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %131
  %138 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %139 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %138, i32 0, i32 3
  %140 = load %struct.buffer_head*, %struct.buffer_head** %139, align 8
  %141 = call i32 @brelse(%struct.buffer_head* %140)
  %142 = load %struct.inode*, %struct.inode** %10, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i32, i32* %21, align 4
  %146 = call i8* @udf_tread(%struct.TYPE_6__* %144, i32 %145)
  %147 = bitcast i8* %146 to %struct.buffer_head*
  %148 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %149 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %148, i32 0, i32 2
  store %struct.buffer_head* %147, %struct.buffer_head** %149, align 8
  %150 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %151 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %150, i32 0, i32 3
  store %struct.buffer_head* %147, %struct.buffer_head** %151, align 8
  %152 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %153 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %152, i32 0, i32 3
  %154 = load %struct.buffer_head*, %struct.buffer_head** %153, align 8
  %155 = icmp ne %struct.buffer_head* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %137
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %496

157:                                              ; preds = %137
  %158 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %159 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %158, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %161 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load i8*, i8** %17, align 8
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i8, i8* %26, align 1
  %166 = zext i8 %165 to i32
  %167 = sub nsw i32 %166, 9
  %168 = ashr i32 16, %167
  %169 = sub nsw i32 %168, 1
  %170 = and i32 %164, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %267, label %172

172:                                              ; preds = %157
  %173 = load i8, i8* %26, align 1
  %174 = zext i8 %173 to i32
  %175 = sub nsw i32 %174, 9
  %176 = ashr i32 16, %175
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* %19, align 4
  %178 = load i8*, i8** %17, align 8
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = add nsw i32 %177, %180
  %182 = load i8*, i8** %16, align 8
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8, i8* %26, align 1
  %186 = zext i8 %185 to i32
  %187 = ashr i32 %184, %186
  %188 = icmp sgt i32 %181, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %172
  %190 = load i8*, i8** %16, align 8
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = load i8, i8* %26, align 1
  %194 = zext i8 %193 to i32
  %195 = ashr i32 %192, %194
  %196 = load i8*, i8** %17, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = sub nsw i32 %195, %198
  store i32 %199, i32* %19, align 4
  br label %200

200:                                              ; preds = %189, %172
  store i32 0, i32* %20, align 4
  br label %201

201:                                              ; preds = %241, %200
  %202 = load i32, i32* %19, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %244

204:                                              ; preds = %201
  %205 = load %struct.inode*, %struct.inode** %10, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 0
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = load i32, i32* %19, align 4
  %213 = add nsw i32 %211, %212
  %214 = trunc i32 %213 to i8
  %215 = call i32 @udf_get_lb_pblock(%struct.TYPE_6__* %207, %struct.kernel_lb_addr* %208, i8 zeroext %214)
  store i32 %215, i32* %21, align 4
  %216 = load %struct.inode*, %struct.inode** %10, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 0
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = load i32, i32* %21, align 4
  %220 = call %struct.buffer_head* @udf_tgetblk(%struct.TYPE_6__* %218, i32 %219)
  store %struct.buffer_head* %220, %struct.buffer_head** %22, align 8
  %221 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %222 = icmp ne %struct.buffer_head* %221, null
  br i1 %222, label %223, label %237

223:                                              ; preds = %204
  %224 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %225 = call i32 @buffer_uptodate(%struct.buffer_head* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %237, label %227

227:                                              ; preds = %223
  %228 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %229 = call i32 @buffer_locked(%struct.buffer_head* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %227
  %232 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %233 = load i32, i32* %20, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %20, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds [16 x %struct.buffer_head*], [16 x %struct.buffer_head*]* %23, i64 0, i64 %235
  store %struct.buffer_head* %232, %struct.buffer_head** %236, align 8
  br label %240

237:                                              ; preds = %227, %223, %204
  %238 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %239 = call i32 @brelse(%struct.buffer_head* %238)
  br label %240

240:                                              ; preds = %237, %231
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %19, align 4
  br label %201

244:                                              ; preds = %201
  %245 = load i32, i32* %20, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %266

247:                                              ; preds = %244
  %248 = load i32, i32* @READA, align 4
  %249 = load i32, i32* %20, align 4
  %250 = getelementptr inbounds [16 x %struct.buffer_head*], [16 x %struct.buffer_head*]* %23, i64 0, i64 0
  %251 = call i32 @ll_rw_block(i32 %248, i32 %249, %struct.buffer_head** %250)
  store i32 0, i32* %19, align 4
  br label %252

252:                                              ; preds = %262, %247
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %20, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = load i32, i32* %19, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [16 x %struct.buffer_head*], [16 x %struct.buffer_head*]* %23, i64 0, i64 %258
  %260 = load %struct.buffer_head*, %struct.buffer_head** %259, align 8
  %261 = call i32 @brelse(%struct.buffer_head* %260)
  br label %262

262:                                              ; preds = %256
  %263 = load i32, i32* %19, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %19, align 4
  br label %252

265:                                              ; preds = %252
  br label %266

266:                                              ; preds = %265, %244
  br label %267

267:                                              ; preds = %266, %157
  br label %287

268:                                              ; preds = %82
  %269 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %270 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %269, i32 0, i32 3
  %271 = load %struct.buffer_head*, %struct.buffer_head** %270, align 8
  %272 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %273 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %272, i32 0, i32 2
  %274 = load %struct.buffer_head*, %struct.buffer_head** %273, align 8
  %275 = icmp ne %struct.buffer_head* %271, %274
  br i1 %275, label %276, label %286

276:                                              ; preds = %268
  %277 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %278 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %277, i32 0, i32 3
  %279 = load %struct.buffer_head*, %struct.buffer_head** %278, align 8
  %280 = call i32 @brelse(%struct.buffer_head* %279)
  %281 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %282 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %281, i32 0, i32 2
  %283 = load %struct.buffer_head*, %struct.buffer_head** %282, align 8
  %284 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %285 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %284, i32 0, i32 3
  store %struct.buffer_head* %283, %struct.buffer_head** %285, align 8
  br label %286

286:                                              ; preds = %276, %268
  br label %287

287:                                              ; preds = %286, %267
  %288 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %289 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %288, i32 0, i32 3
  %290 = load %struct.buffer_head*, %struct.buffer_head** %289, align 8
  %291 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.inode*, %struct.inode** %10, align 8
  %294 = getelementptr inbounds %struct.inode, %struct.inode* %293, i32 0, i32 0
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %299 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %298, i32 0, i32 1
  %300 = call %struct.fileIdentDesc* @udf_get_fileident(i32* %292, i32 %297, i32* %299)
  store %struct.fileIdentDesc* %300, %struct.fileIdentDesc** %18, align 8
  %301 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %302 = icmp ne %struct.fileIdentDesc* %301, null
  br i1 %302, label %304, label %303

303:                                              ; preds = %287
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %496

304:                                              ; preds = %287
  %305 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %306 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %309 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = sub nsw i32 %307, %310
  %312 = load i32*, i32** %11, align 8
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, %311
  store i32 %314, i32* %312, align 4
  %315 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %316 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.inode*, %struct.inode** %10, align 8
  %319 = getelementptr inbounds %struct.inode, %struct.inode* %318, i32 0, i32 0
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = icmp sle i32 %317, %322
  br i1 %323, label %324, label %330

324:                                              ; preds = %304
  %325 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %326 = bitcast %struct.fileIdentDesc* %325 to i32*
  %327 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %328 = bitcast %struct.fileIdentDesc* %327 to i32*
  %329 = call i32 @memcpy(i32* %326, i32* %328, i32 8)
  br label %494

330:                                              ; preds = %304
  %331 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %332 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.inode*, %struct.inode** %10, align 8
  %335 = getelementptr inbounds %struct.inode, %struct.inode* %334, i32 0, i32 0
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp sgt i32 %333, %338
  br i1 %339, label %340, label %493

340:                                              ; preds = %330
  %341 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %342 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %27, align 4
  %344 = load %struct.inode*, %struct.inode** %10, align 8
  %345 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %346 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %347 = load i8*, i8** %16, align 8
  %348 = call i32 @udf_next_aext(%struct.inode* %344, %struct.extent_position* %345, %struct.kernel_lb_addr* %346, i8* %347, i32 1)
  %349 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %350 = ashr i32 %349, 30
  %351 = icmp ne i32 %348, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %340
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %496

353:                                              ; preds = %340
  %354 = load %struct.inode*, %struct.inode** %10, align 8
  %355 = getelementptr inbounds %struct.inode, %struct.inode* %354, i32 0, i32 0
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %355, align 8
  %357 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %15, align 8
  %358 = load i8*, i8** %17, align 8
  %359 = load i8, i8* %358, align 1
  %360 = call i32 @udf_get_lb_pblock(%struct.TYPE_6__* %356, %struct.kernel_lb_addr* %357, i8 zeroext %359)
  store i32 %360, i32* %21, align 4
  %361 = load i8*, i8** %17, align 8
  %362 = load i8, i8* %361, align 1
  %363 = add i8 %362, 1
  store i8 %363, i8* %361, align 1
  %364 = load i8*, i8** %17, align 8
  %365 = load i8, i8* %364, align 1
  %366 = zext i8 %365 to i32
  %367 = load %struct.inode*, %struct.inode** %10, align 8
  %368 = getelementptr inbounds %struct.inode, %struct.inode* %367, i32 0, i32 0
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 1
  %371 = load i8, i8* %370, align 4
  %372 = zext i8 %371 to i32
  %373 = shl i32 %366, %372
  %374 = load i8*, i8** %16, align 8
  %375 = load i8, i8* %374, align 1
  %376 = zext i8 %375 to i32
  %377 = icmp sge i32 %373, %376
  br i1 %377, label %378, label %380

378:                                              ; preds = %353
  %379 = load i8*, i8** %17, align 8
  store i8 0, i8* %379, align 1
  br label %384

380:                                              ; preds = %353
  %381 = load i32, i32* %27, align 4
  %382 = load %struct.extent_position*, %struct.extent_position** %14, align 8
  %383 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %382, i32 0, i32 0
  store i32 %381, i32* %383, align 4
  br label %384

384:                                              ; preds = %380, %378
  %385 = load %struct.inode*, %struct.inode** %10, align 8
  %386 = getelementptr inbounds %struct.inode, %struct.inode* %385, i32 0, i32 0
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %391 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = sub nsw i32 %392, %389
  store i32 %393, i32* %391, align 8
  %394 = load %struct.inode*, %struct.inode** %10, align 8
  %395 = getelementptr inbounds %struct.inode, %struct.inode* %394, i32 0, i32 0
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %400 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = sub nsw i32 %401, %398
  store i32 %402, i32* %400, align 4
  %403 = load %struct.inode*, %struct.inode** %10, align 8
  %404 = getelementptr inbounds %struct.inode, %struct.inode* %403, i32 0, i32 0
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %404, align 8
  %406 = load i32, i32* %21, align 4
  %407 = call i8* @udf_tread(%struct.TYPE_6__* %405, i32 %406)
  %408 = bitcast i8* %407 to %struct.buffer_head*
  %409 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %410 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %409, i32 0, i32 2
  store %struct.buffer_head* %408, %struct.buffer_head** %410, align 8
  %411 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %412 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %411, i32 0, i32 2
  %413 = load %struct.buffer_head*, %struct.buffer_head** %412, align 8
  %414 = icmp ne %struct.buffer_head* %413, null
  br i1 %414, label %416, label %415

415:                                              ; preds = %384
  store %struct.fileIdentDesc* null, %struct.fileIdentDesc** %9, align 8
  br label %496

416:                                              ; preds = %384
  %417 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %418 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = sub nsw i32 0, %419
  %421 = sext i32 %420 to i64
  %422 = icmp ugt i64 8, %421
  br i1 %422, label %423, label %486

423:                                              ; preds = %416
  %424 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %425 = bitcast %struct.fileIdentDesc* %424 to i32*
  %426 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %427 = bitcast %struct.fileIdentDesc* %426 to i32*
  %428 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %429 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = sub nsw i32 0, %430
  %432 = call i32 @memcpy(i32* %425, i32* %427, i32 %431)
  %433 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %434 = bitcast %struct.fileIdentDesc* %433 to i32*
  %435 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %436 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = sext i32 %437 to i64
  %439 = sub i64 0, %438
  %440 = getelementptr inbounds i32, i32* %434, i64 %439
  %441 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %442 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %441, i32 0, i32 2
  %443 = load %struct.buffer_head*, %struct.buffer_head** %442, align 8
  %444 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %447 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = sext i32 %448 to i64
  %450 = add i64 8, %449
  %451 = trunc i64 %450 to i32
  %452 = call i32 @memcpy(i32* %440, i32* %445, i32 %451)
  %453 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %454 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  %457 = add i64 8, %456
  %458 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %459 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @le16_to_cpu(i32 %460)
  %462 = sext i32 %461 to i64
  %463 = add i64 %457, %462
  %464 = add i64 %463, 3
  %465 = and i64 %464, -4
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %28, align 4
  %467 = load i32, i32* %28, align 4
  %468 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %469 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %472 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = sub nsw i32 %470, %473
  %475 = sub nsw i32 %467, %474
  %476 = load i32*, i32** %11, align 8
  %477 = load i32, i32* %476, align 4
  %478 = add nsw i32 %477, %475
  store i32 %478, i32* %476, align 4
  %479 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %480 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = load i32, i32* %28, align 4
  %483 = add nsw i32 %481, %482
  %484 = load %struct.udf_fileident_bh*, %struct.udf_fileident_bh** %12, align 8
  %485 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %484, i32 0, i32 1
  store i32 %483, i32* %485, align 4
  br label %492

486:                                              ; preds = %416
  %487 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %13, align 8
  %488 = bitcast %struct.fileIdentDesc* %487 to i32*
  %489 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  %490 = bitcast %struct.fileIdentDesc* %489 to i32*
  %491 = call i32 @memcpy(i32* %488, i32* %490, i32 8)
  br label %492

492:                                              ; preds = %486, %423
  br label %493

493:                                              ; preds = %492, %330
  br label %494

494:                                              ; preds = %493, %324
  %495 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %18, align 8
  store %struct.fileIdentDesc* %495, %struct.fileIdentDesc** %9, align 8
  br label %496

496:                                              ; preds = %494, %415, %352, %303, %156, %109, %65, %64
  %497 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %9, align 8
  ret %struct.fileIdentDesc* %497
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.fileIdentDesc* @udf_get_fileident(i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i8*, i32) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.TYPE_6__*, %struct.kernel_lb_addr*, i8 zeroext) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i8* @udf_tread(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.buffer_head* @udf_tgetblk(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
