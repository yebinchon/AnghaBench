; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_do_strip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_do_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, %struct.TYPE_8__, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.strip_mine = type { i32, i64 }
%struct.gfs2_sbd = type { i32, i32 }
%struct.gfs2_rgrp_list = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i64 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_INDIRECT = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.buffer_head*, i64*, i64*, i32, %struct.strip_mine*)* @do_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_strip(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.buffer_head* %2, i64* %3, i64* %4, i32 %5, %struct.strip_mine* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.strip_mine*, align 8
  %16 = alloca %struct.gfs2_sbd*, align 8
  %17 = alloca %struct.gfs2_rgrp_list, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.strip_mine* %6, %struct.strip_mine** %15, align 8
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 2
  %31 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_8__* %30)
  store %struct.gfs2_sbd* %31, %struct.gfs2_sbd** %16, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %33 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %32)
  store i32 %33, i32* %27, align 4
  %34 = load i32, i32* %27, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* %27, align 4
  store i32 %37, i32* %8, align 4
  br label %320

38:                                               ; preds = %7
  %39 = load i64*, i64** %12, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load %struct.strip_mine*, %struct.strip_mine** %15, align 8
  %44 = getelementptr inbounds %struct.strip_mine, %struct.strip_mine* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.strip_mine*, %struct.strip_mine** %15, align 8
  %48 = getelementptr inbounds %struct.strip_mine, %struct.strip_mine* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %320

52:                                               ; preds = %45
  %53 = load %struct.strip_mine*, %struct.strip_mine** %15, align 8
  %54 = getelementptr inbounds %struct.strip_mine, %struct.strip_mine* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i64*, i64** %12, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %12, align 8
  %60 = load %struct.strip_mine*, %struct.strip_mine** %15, align 8
  %61 = getelementptr inbounds %struct.strip_mine, %struct.strip_mine* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %65 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = icmp ne i32 %63, %67
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %24, align 4
  %70 = load i32, i32* %24, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %62
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %77 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  br label %83

79:                                               ; preds = %72
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %81 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i32 [ %78, %75 ], [ %82, %79 ]
  store i32 %84, i32* %25, align 4
  br label %95

85:                                               ; preds = %62
  %86 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %87 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %92 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %25, align 4
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %83
  %96 = call i32 @memset(%struct.gfs2_rgrp_list* %17, i32 0, i32 16)
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %97 = load i64*, i64** %12, align 8
  store i64* %97, i64** %22, align 8
  br label %98

98:                                               ; preds = %130, %95
  %99 = load i64*, i64** %22, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = icmp ult i64* %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %98
  %103 = load i64*, i64** %22, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %130

107:                                              ; preds = %102
  %108 = load i64*, i64** %22, align 8
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @be64_to_cpu(i64 %109)
  store i64 %110, i64* %18, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load i64, i64* %18, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %20, align 4
  br label %129

120:                                              ; preds = %107
  %121 = load i64, i64* %19, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %125 = load i64, i64* %19, align 8
  %126 = call i32 @gfs2_rlist_add(%struct.gfs2_inode* %124, %struct.gfs2_rgrp_list* %17, i64 %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i64, i64* %18, align 8
  store i64 %128, i64* %19, align 8
  store i32 1, i32* %20, align 4
  br label %129

129:                                              ; preds = %127, %117
  br label %130

130:                                              ; preds = %129, %106
  %131 = load i64*, i64** %22, align 8
  %132 = getelementptr inbounds i64, i64* %131, i32 1
  store i64* %132, i64** %22, align 8
  br label %98

133:                                              ; preds = %98
  %134 = load i64, i64* %19, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %138 = load i64, i64* %19, align 8
  %139 = call i32 @gfs2_rlist_add(%struct.gfs2_inode* %137, %struct.gfs2_rgrp_list* %17, i64 %138)
  br label %141

140:                                              ; preds = %133
  br label %318

141:                                              ; preds = %136
  %142 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %143 = call i32 @gfs2_rlist_alloc(%struct.gfs2_rgrp_list* %17, i32 %142)
  store i32 0, i32* %26, align 4
  br label %144

144:                                              ; preds = %166, %141
  %145 = load i32, i32* %26, align 4
  %146 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %17, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %17, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* %26, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %157, align 8
  store %struct.gfs2_rgrpd* %158, %struct.gfs2_rgrpd** %28, align 8
  %159 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %28, align 8
  %160 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %23, align 4
  %163 = zext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %23, align 4
  br label %166

166:                                              ; preds = %149
  %167 = load i32, i32* %26, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %26, align 4
  br label %144

169:                                              ; preds = %144
  %170 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %17, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %17, i32 0, i32 1
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = call i32 @gfs2_glock_nq_m(i32 %171, %struct.TYPE_7__* %173)
  store i32 %174, i32* %27, align 4
  %175 = load i32, i32* %27, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %316

178:                                              ; preds = %169
  %179 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %180 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @gfs2_rs_active(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %186 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @gfs2_rs_deltree(i32 %187)
  br label %189

189:                                              ; preds = %184, %178
  %190 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %191 = load i32, i32* %23, align 4
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* @RES_DINODE, align 8
  %194 = add nsw i64 %192, %193
  %195 = load i64, i64* @RES_INDIRECT, align 8
  %196 = add nsw i64 %194, %195
  %197 = load i64, i64* @RES_STATFS, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i64, i64* @RES_QUOTA, align 8
  %200 = add nsw i64 %198, %199
  %201 = load i32, i32* %25, align 4
  %202 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %190, i64 %200, i32 %201)
  store i32 %202, i32* %27, align 4
  %203 = load i32, i32* %27, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %189
  br label %310

206:                                              ; preds = %189
  %207 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %208 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %207, i32 0, i32 1
  %209 = call i32 @down_write(i32* %208)
  %210 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %211 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %214 = call i32 @gfs2_trans_add_meta(i32 %212, %struct.buffer_head* %213)
  %215 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %216 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %219 = call i32 @gfs2_trans_add_meta(i32 %217, %struct.buffer_head* %218)
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %220 = load i64*, i64** %12, align 8
  store i64* %220, i64** %22, align 8
  br label %221

221:                                              ; preds = %262, %206
  %222 = load i64*, i64** %22, align 8
  %223 = load i64*, i64** %13, align 8
  %224 = icmp ult i64* %222, %223
  br i1 %224, label %225, label %265

225:                                              ; preds = %221
  %226 = load i64*, i64** %22, align 8
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  br label %262

230:                                              ; preds = %225
  %231 = load i64*, i64** %22, align 8
  %232 = load i64, i64* %231, align 8
  %233 = call i64 @be64_to_cpu(i64 %232)
  store i64 %233, i64* %18, align 8
  %234 = load i64, i64* %19, align 8
  %235 = load i32, i32* %20, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %234, %236
  %238 = load i64, i64* %18, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %230
  %241 = load i32, i32* %20, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %20, align 4
  br label %257

243:                                              ; preds = %230
  %244 = load i64, i64* %19, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %248 = load i64, i64* %19, align 8
  %249 = load i32, i32* %20, align 4
  %250 = load i32, i32* %24, align 4
  %251 = call i32 @__gfs2_free_blocks(%struct.gfs2_inode* %247, i64 %248, i32 %249, i32 %250)
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %21, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %21, align 4
  br label %255

255:                                              ; preds = %246, %243
  %256 = load i64, i64* %18, align 8
  store i64 %256, i64* %19, align 8
  store i32 1, i32* %20, align 4
  br label %257

257:                                              ; preds = %255, %240
  %258 = load i64*, i64** %22, align 8
  store i64 0, i64* %258, align 8
  %259 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %260 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %259, i32 0, i32 2
  %261 = call i32 @gfs2_add_inode_blocks(%struct.TYPE_8__* %260, i32 -1)
  br label %262

262:                                              ; preds = %257, %229
  %263 = load i64*, i64** %22, align 8
  %264 = getelementptr inbounds i64, i64* %263, i32 1
  store i64* %264, i64** %22, align 8
  br label %221

265:                                              ; preds = %221
  %266 = load i64, i64* %19, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %265
  %269 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %270 = load i64, i64* %19, align 8
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* %24, align 4
  %273 = call i32 @__gfs2_free_blocks(%struct.gfs2_inode* %269, i64 %270, i32 %271, i32 %272)
  %274 = load i32, i32* %20, align 4
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %21, align 4
  br label %277

277:                                              ; preds = %268, %265
  %278 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %279 = load i32, i32* %21, align 4
  %280 = call i32 @gfs2_statfs_change(%struct.gfs2_sbd* %278, i32 0, i32 %279, i32 0)
  %281 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %282 = load i32, i32* %21, align 4
  %283 = sub nsw i32 0, %282
  %284 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %285 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %289 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @gfs2_quota_change(%struct.gfs2_inode* %281, i32 %283, i32 %287, i32 %291)
  %293 = load i32, i32* @CURRENT_TIME, align 4
  %294 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %295 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  store i32 %293, i32* %296, align 8
  %297 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %298 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  store i32 %293, i32* %299, align 4
  %300 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %301 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %302 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %300, i32 %303)
  %305 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %306 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %305, i32 0, i32 1
  %307 = call i32 @up_write(i32* %306)
  %308 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  %309 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %308)
  br label %310

310:                                              ; preds = %277, %205
  %311 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %17, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %17, i32 0, i32 1
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %313, align 8
  %315 = call i32 @gfs2_glock_dq_m(i32 %312, %struct.TYPE_7__* %314)
  br label %316

316:                                              ; preds = %310, %177
  %317 = call i32 @gfs2_rlist_free(%struct.gfs2_rgrp_list* %17)
  br label %318

318:                                              ; preds = %316, %140
  %319 = load i32, i32* %27, align 4
  store i32 %319, i32* %8, align 4
  br label %320

320:                                              ; preds = %318, %51, %36
  %321 = load i32, i32* %8, align 4
  ret i32 %321
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_8__*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @memset(%struct.gfs2_rgrp_list*, i32, i32) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i32 @gfs2_rlist_add(%struct.gfs2_inode*, %struct.gfs2_rgrp_list*, i64) #1

declare dso_local i32 @gfs2_rlist_alloc(%struct.gfs2_rgrp_list*, i32) #1

declare dso_local i32 @gfs2_glock_nq_m(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @gfs2_rs_active(i32) #1

declare dso_local i32 @gfs2_rs_deltree(i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @__gfs2_free_blocks(%struct.gfs2_inode*, i64, i32, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @gfs2_statfs_change(%struct.gfs2_sbd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_quota_change(%struct.gfs2_inode*, i32, i32, i32) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_m(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @gfs2_rlist_free(%struct.gfs2_rgrp_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
