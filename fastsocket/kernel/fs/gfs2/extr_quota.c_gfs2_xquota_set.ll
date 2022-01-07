; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_xquota_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_gfs2_xquota_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.fs_disk_quota = type { i32, i32, i32, i32, i32, i32 }
%struct.gfs2_inode = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.gfs2_quota_data = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }

@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@QUOTA_USER = common dso_local global i32 0, align 4
@XFS_USER_QUOTA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QUOTA_GROUP = common dso_local global i32 0, align 4
@XFS_GROUP_QUOTA = common dso_local global i32 0, align 4
@GFS2_FIELDMASK = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@FS_DQ_BSOFT = common dso_local global i32 0, align 4
@FS_DQ_BHARD = common dso_local global i32 0, align 4
@FS_DQ_BCOUNT = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, %struct.fs_disk_quota*)* @gfs2_xquota_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_xquota_set(%struct.super_block* %0, i32 %1, i32 %2, %struct.fs_disk_quota* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fs_disk_quota*, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.gfs2_inode*, align 8
  %12 = alloca %struct.gfs2_quota_data*, align 8
  %13 = alloca %struct.gfs2_holder, align 4
  %14 = alloca %struct.gfs2_holder, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.gfs2_alloc_parms, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fs_disk_quota* %3, %struct.fs_disk_quota** %9, align 8
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %23, align 8
  store %struct.gfs2_sbd* %24, %struct.gfs2_sbd** %10, align 8
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.gfs2_inode* @GFS2_I(i32 %27)
  store %struct.gfs2_inode* %28, %struct.gfs2_inode** %11, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @ESRCH, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %295

38:                                               ; preds = %4
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %62 [
    i32 128, label %40
    i32 129, label %51
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @QUOTA_USER, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %43 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @XFS_USER_QUOTA, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %295

50:                                               ; preds = %40
  br label %65

51:                                               ; preds = %38
  %52 = load i32, i32* @QUOTA_GROUP, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %54 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @XFS_GROUP_QUOTA, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %295

61:                                               ; preds = %51
  br label %65

62:                                               ; preds = %38
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %295

65:                                               ; preds = %61, %50
  %66 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %67 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GFS2_FIELDMASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %295

76:                                               ; preds = %65
  %77 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %78 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %295

85:                                               ; preds = %76
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @qd_get(%struct.gfs2_sbd* %86, i32 %87, i32 %88, %struct.gfs2_quota_data** %12)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %20, align 4
  store i32 %93, i32* %5, align 4
  br label %295

94:                                               ; preds = %85
  %95 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %96 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %95)
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %286

100:                                              ; preds = %94
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %102 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @mutex_lock(i32* %103)
  %105 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  %106 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %109 = call i32 @gfs2_glock_nq_init(i32 %107, i32 %108, i32 0, %struct.gfs2_holder* %13)
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %291

113:                                              ; preds = %100
  %114 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %115 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %118 = call i32 @gfs2_glock_nq_init(i32 %116, i32 %117, i32 0, %struct.gfs2_holder* %14)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %284

122:                                              ; preds = %113
  %123 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %124 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  %125 = call i32 @update_qd(%struct.gfs2_sbd* %123, %struct.gfs2_quota_data* %124)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %282

129:                                              ; preds = %122
  %130 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %131 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FS_DQ_BSOFT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %156

136:                                              ; preds = %129
  %137 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %138 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %141 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = ashr i32 %139, %142
  %144 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  %145 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @be64_to_cpu(i32 %147)
  %149 = icmp eq i32 %143, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %136
  %151 = load i32, i32* @FS_DQ_BSOFT, align 4
  %152 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %153 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %136, %129
  %157 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %158 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @FS_DQ_BHARD, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %156
  %164 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %165 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %168 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = ashr i32 %166, %169
  %171 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  %172 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @be64_to_cpu(i32 %174)
  %176 = icmp eq i32 %170, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %163
  %178 = load i32, i32* @FS_DQ_BHARD, align 4
  %179 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %180 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %163, %156
  %184 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %185 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @FS_DQ_BCOUNT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %210

190:                                              ; preds = %183
  %191 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %192 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %195 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = ashr i32 %193, %196
  %198 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  %199 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @be64_to_cpu(i32 %201)
  %203 = icmp eq i32 %197, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %190
  %205 = load i32, i32* @FS_DQ_BCOUNT, align 4
  %206 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %207 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204, %190, %183
  %211 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %212 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %282

216:                                              ; preds = %210
  %217 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  %218 = call i32 @qd2offset(%struct.gfs2_quota_data* %217)
  store i32 %218, i32* %19, align 4
  %219 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %219, i32 %220, i32 4, i32* %18)
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* %20, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  br label %282

225:                                              ; preds = %216
  %226 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %227 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i32 1, i32* %18, align 4
  br label %230

230:                                              ; preds = %229, %225
  %231 = load i32, i32* %18, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %256

233:                                              ; preds = %230
  %234 = bitcast %struct.gfs2_alloc_parms* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %234, i8 0, i64 8, i1 false)
  %235 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %236 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %235, i32 4, i32* %15, i32* %16)
  %237 = load i32, i32* %15, align 4
  %238 = add i32 1, %237
  %239 = load i32, i32* %16, align 4
  %240 = add i32 %238, %239
  store i32 %240, i32* %17, align 4
  %241 = load i32, i32* %17, align 4
  %242 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %21, i32 0, i32 0
  store i32 %241, i32* %242, align 4
  %243 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %244 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %243, %struct.gfs2_alloc_parms* %21)
  store i32 %244, i32* %20, align 4
  %245 = load i32, i32* %20, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %233
  br label %282

248:                                              ; preds = %233
  %249 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %250 = load i32, i32* %17, align 4
  %251 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %249, i32 %250)
  %252 = load i32, i32* %17, align 4
  %253 = zext i32 %252 to i64
  %254 = add nsw i64 %253, %251
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %17, align 4
  br label %256

256:                                              ; preds = %248, %230
  %257 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %258 = load i32, i32* %17, align 4
  %259 = zext i32 %258 to i64
  %260 = load i64, i64* @RES_DINODE, align 8
  %261 = add nsw i64 %259, %260
  %262 = add nsw i64 %261, 2
  %263 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %257, i64 %262, i32 0)
  store i32 %263, i32* %20, align 4
  %264 = load i32, i32* %20, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %256
  br label %275

267:                                              ; preds = %256
  %268 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %269 = load i32, i32* %19, align 4
  %270 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  %271 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %9, align 8
  %272 = call i32 @gfs2_adjust_quota(%struct.gfs2_inode* %268, i32 %269, i32 0, %struct.gfs2_quota_data* %270, %struct.fs_disk_quota* %271)
  store i32 %272, i32* %20, align 4
  %273 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %274 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %273)
  br label %275

275:                                              ; preds = %267, %266
  %276 = load i32, i32* %18, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %280 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %279)
  br label %281

281:                                              ; preds = %278, %275
  br label %282

282:                                              ; preds = %281, %247, %224, %215, %128
  %283 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %14)
  br label %284

284:                                              ; preds = %282, %121
  %285 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %13)
  br label %286

286:                                              ; preds = %284, %99
  %287 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  %288 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = call i32 @mutex_unlock(i32* %289)
  br label %291

291:                                              ; preds = %286, %112
  %292 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %12, align 8
  %293 = call i32 @qd_put(%struct.gfs2_quota_data* %292)
  %294 = load i32, i32* %20, align 4
  store i32 %294, i32* %5, align 4
  br label %295

295:                                              ; preds = %291, %92, %82, %73, %62, %58, %47, %35
  %296 = load i32, i32* %5, align 4
  ret i32 %296
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @qd_get(%struct.gfs2_sbd*, i32, i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @gfs2_rs_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @update_qd(%struct.gfs2_sbd*, %struct.gfs2_quota_data*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @qd2offset(%struct.gfs2_quota_data*) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32, i32*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_adjust_quota(%struct.gfs2_inode*, i32, i32, %struct.gfs2_quota_data*, %struct.fs_disk_quota*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qd_put(%struct.gfs2_quota_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
