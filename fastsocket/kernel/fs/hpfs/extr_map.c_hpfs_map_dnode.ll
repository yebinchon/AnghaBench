; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_map_dnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_map_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode = type { i64, i32, i32 }
%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"dnode\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"dnode %08x not byte-aligned\00", align 1
@DNODE_RD_AHEAD = common dso_local global i32 0, align 4
@DNODE_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"bad magic on dnode %08x\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"bad self pointer on dnode %08x self = %08x\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"dnode %08x has first_free == %08x\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"bad dirent size in dnode %08x, dirent %03x, last %03x\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [73 x i8] c"namelen does not match dirent size in dnode %08x, dirent %03x, last %03x\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"bad down pointer in dnode %08x, dirent %03x, last %03x\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"size on last dirent does not match first_free; dnode %08x\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"dnode %08x does not end with \\377 entry\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"HPFS: warning: unbalanced dnode tree, dnode %08x; see hpfs.txt 4 more info\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block* %0, i32 %1, %struct.quad_buffer_head* %2) #0 {
  %4 = alloca %struct.dnode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.quad_buffer_head*, align 8
  %8 = alloca %struct.dnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hpfs_dirent*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.quad_buffer_head* %2, %struct.quad_buffer_head** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @hpfs_chk_sectors(%struct.super_block* %20, i32 %21, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.dnode* null, %struct.dnode** %4, align 8
  br label %267

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store %struct.dnode* null, %struct.dnode** %4, align 8
  br label %267

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %38 = load i32, i32* @DNODE_RD_AHEAD, align 4
  %39 = call %struct.dnode* @hpfs_map_4sectors(%struct.super_block* %35, i32 %36, %struct.quad_buffer_head* %37, i32 %38)
  store %struct.dnode* %39, %struct.dnode** %8, align 8
  %40 = icmp ne %struct.dnode* %39, null
  br i1 %40, label %41, label %262

41:                                               ; preds = %34
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %261

47:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  %48 = load %struct.dnode*, %struct.dnode** %8, align 8
  %49 = bitcast %struct.dnode* %48 to i8*
  store i8* %49, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %50 = load %struct.dnode*, %struct.dnode** %8, align 8
  %51 = getelementptr inbounds %struct.dnode, %struct.dnode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DNODE_MAGIC, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %264

59:                                               ; preds = %47
  %60 = load %struct.dnode*, %struct.dnode** %8, align 8
  %61 = getelementptr inbounds %struct.dnode, %struct.dnode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.dnode*, %struct.dnode** %8, align 8
  %69 = getelementptr inbounds %struct.dnode, %struct.dnode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %65, %59
  %73 = load %struct.dnode*, %struct.dnode** %8, align 8
  %74 = getelementptr inbounds %struct.dnode, %struct.dnode* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 2048
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.dnode*, %struct.dnode** %8, align 8
  %81 = getelementptr inbounds %struct.dnode, %struct.dnode* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %82)
  br label %264

84:                                               ; preds = %72
  store i32 20, i32* %9, align 4
  br label %85

85:                                               ; preds = %204, %84
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.dnode*, %struct.dnode** %8, align 8
  %88 = getelementptr inbounds %struct.dnode, %struct.dnode* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %222

91:                                               ; preds = %85
  %92 = load %struct.dnode*, %struct.dnode** %8, align 8
  %93 = bitcast %struct.dnode* %92 to i8*
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = bitcast i8* %96 to %struct.hpfs_dirent*
  store %struct.hpfs_dirent* %97, %struct.hpfs_dirent** %13, align 8
  %98 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %99 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 292
  br i1 %101, label %120, label %102

102:                                              ; preds = %91
  %103 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %104 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 32
  br i1 %106, label %120, label %107

107:                                              ; preds = %102
  %108 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %109 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 3
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %116 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %114, %117
  %119 = icmp ugt i32 %118, 2048
  br i1 %119, label %120, label %126

120:                                              ; preds = %113, %107, %102, %91
  %121 = load %struct.super_block*, %struct.super_block** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %121, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %123, i32 %124)
  br label %264

126:                                              ; preds = %113
  %127 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %128 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 31, %129
  %131 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %132 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 4
  %135 = add nsw i32 %130, %134
  %136 = add nsw i32 %135, 3
  %137 = and i32 %136, -4
  %138 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %139 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %126
  %143 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %144 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 31, %145
  %147 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %148 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 4
  %151 = add nsw i32 %146, %150
  %152 = add nsw i32 %151, 3
  %153 = and i32 %152, -4
  %154 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %155 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %142
  %159 = load %struct.super_block*, %struct.super_block** %5, align 8
  %160 = getelementptr inbounds %struct.super_block, %struct.super_block* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @MS_RDONLY, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %173

166:                                              ; preds = %158, %142
  %167 = load %struct.super_block*, %struct.super_block** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %167, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  br label %264

172:                                              ; preds = %126
  br label %173

173:                                              ; preds = %172, %165
  %174 = load %struct.super_block*, %struct.super_block** %5, align 8
  %175 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %174)
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp sge i32 %177, 2
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %181 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 1, %182
  %184 = load i32, i32* %12, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %179, %173
  %187 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %188 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %186
  %192 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %193 = call i32 @de_down_pointer(%struct.hpfs_dirent* %192)
  %194 = icmp slt i32 %193, 16
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  %196 = load %struct.super_block*, %struct.super_block** %5, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %196, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %197, i32 %198, i32 %199)
  br label %264

201:                                              ; preds = %191
  br label %202

202:                                              ; preds = %201, %186
  %203 = load i32, i32* %9, align 4
  store i32 %203, i32* %10, align 4
  br label %204

204:                                              ; preds = %202
  %205 = load i8*, i8** %11, align 8
  %206 = load i32, i32* %9, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = load i8*, i8** %11, align 8
  %212 = load i32, i32* %9, align 4
  %213 = add i32 %212, 1
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = shl i32 %217, 8
  %219 = add nsw i32 %210, %218
  %220 = load i32, i32* %9, align 4
  %221 = add i32 %220, %219
  store i32 %221, i32* %9, align 4
  br label %85

222:                                              ; preds = %85
  %223 = load i32, i32* %9, align 4
  %224 = load %struct.dnode*, %struct.dnode** %8, align 8
  %225 = getelementptr inbounds %struct.dnode, %struct.dnode* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %223, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = load %struct.super_block*, %struct.super_block** %5, align 8
  %230 = load i32, i32* %6, align 4
  %231 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %229, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %230)
  br label %264

232:                                              ; preds = %222
  %233 = load i8*, i8** %11, align 8
  %234 = load i32, i32* %10, align 4
  %235 = add i32 %234, 30
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp ne i32 %239, 1
  br i1 %240, label %250, label %241

241:                                              ; preds = %232
  %242 = load i8*, i8** %11, align 8
  %243 = load i32, i32* %10, align 4
  %244 = add i32 %243, 31
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %242, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = icmp ne i32 %248, 255
  br i1 %249, label %250, label %254

250:                                              ; preds = %241, %232
  %251 = load %struct.super_block*, %struct.super_block** %5, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %251, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %252)
  br label %264

254:                                              ; preds = %241
  %255 = load i32, i32* %12, align 4
  %256 = icmp eq i32 %255, 3
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i32, i32* %6, align 4
  %259 = call i32 @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %257, %254
  br label %261

261:                                              ; preds = %260, %41
  br label %262

262:                                              ; preds = %261, %34
  %263 = load %struct.dnode*, %struct.dnode** %8, align 8
  store %struct.dnode* %263, %struct.dnode** %4, align 8
  br label %267

264:                                              ; preds = %250, %228, %195, %166, %120, %77, %55
  %265 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %7, align 8
  %266 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %265)
  store %struct.dnode* null, %struct.dnode** %4, align 8
  br label %267

267:                                              ; preds = %264, %262, %29, %24
  %268 = load %struct.dnode*, %struct.dnode** %4, align 8
  ret %struct.dnode* %268
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i32, i32, i8*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local %struct.dnode* @hpfs_map_4sectors(%struct.super_block*, i32, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
