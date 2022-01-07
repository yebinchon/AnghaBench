; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_change_file_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_change_file_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i32* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i64 }
%struct.iattr = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFS_BMAPI_PREALLOC = common dso_local global i32 0, align 4
@XFS_BMAPI_CONVERT = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ATTR_NOLOCK = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@XFS_TRANS_WRITEID = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ATTR_DMI = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@XFS_DIFLAG_PREALLOC = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_ATTR_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_change_file_space(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_18__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.iattr, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @S_ISREG(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @XFS_ERROR(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %290

34:                                               ; preds = %5
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %52 [
    i32 0, label %38
    i32 1, label %39
    i32 2, label %45
  ]

38:                                               ; preds = %34
  br label %55

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %55

45:                                               ; preds = %34
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = call i64 @XFS_ISIZE(%struct.TYPE_17__* %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %55

52:                                               ; preds = %34
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @XFS_ERROR(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %290

55:                                               ; preds = %45, %39, %38
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  br label %69

65:                                               ; preds = %55
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i64 [ %64, %60 ], [ %68, %65 ]
  store i64 %70, i64* %18, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i64 @XFS_MAXIOFFSET(i32* %79)
  %81 = icmp sgt i64 %78, %80
  br i1 %81, label %98, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %18, align 8
  %87 = add nsw i64 %85, %86
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %18, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32*, i32** %12, align 8
  %96 = call i64 @XFS_MAXIOFFSET(i32* %95)
  %97 = icmp sgt i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %89, %82, %75, %69
  %99 = load i32, i32* @EINVAL, align 4
  %100 = call i32 @XFS_ERROR(i32 %99)
  store i32 %100, i32* %6, align 4
  br label %290

101:                                              ; preds = %89
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %17, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = call i64 @XFS_ISIZE(%struct.TYPE_17__* %107)
  store i64 %108, i64* %15, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %109 = load i32, i32* @XFS_BMAPI_PREALLOC, align 4
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %8, align 4
  switch i32 %110, label %191 [
    i32 128, label %111
    i32 132, label %123
    i32 131, label %123
    i32 130, label %137
    i32 129, label %137
    i32 136, label %149
    i32 135, label %149
    i32 134, label %149
    i32 133, label %149
  ]

111:                                              ; preds = %101
  %112 = load i32, i32* @XFS_BMAPI_CONVERT, align 4
  %113 = load i32, i32* %21, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %21, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = load i64, i64* %17, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = call i32 @xfs_tosspages(%struct.TYPE_17__* %115, i64 %116, i64 %121, i32 0)
  br label %123

123:                                              ; preds = %101, %101, %111
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @xfs_alloc_file_space(%struct.TYPE_17__* %124, i64 %125, i64 %128, i32 %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %6, align 4
  br label %290

136:                                              ; preds = %123
  store i32 1, i32* %16, align 4
  br label %195

137:                                              ; preds = %101, %101
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @xfs_free_file_space(%struct.TYPE_17__* %138, i64 %139, i64 %142, i32 %143)
  store i32 %144, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %6, align 4
  br label %290

148:                                              ; preds = %137
  br label %195

149:                                              ; preds = %101, %101, %101, %101
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %152 = call i32 @xfs_ilock(%struct.TYPE_17__* %150, i32 %151)
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %15, align 8
  %155 = icmp sgt i64 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %149
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %15, align 8
  %161 = sub nsw i64 %159, %160
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @XFS_ATTR_NOLOCK, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @xfs_alloc_file_space(%struct.TYPE_17__* %157, i64 %158, i64 %161, i32 0, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %156
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %170 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %171 = call i32 @xfs_iunlock(%struct.TYPE_17__* %169, i32 %170)
  br label %195

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %172, %149
  %174 = load i32, i32* @ATTR_SIZE, align 4
  %175 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 1
  store i32 %174, i32* %175, align 8
  %176 = load i64, i64* %17, align 8
  %177 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 0
  store i64 %176, i64* %177, align 8
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @XFS_ATTR_NOLOCK, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @xfs_setattr(%struct.TYPE_17__* %178, %struct.iattr* %20, i32 %181)
  store i32 %182, i32* %14, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %184 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %185 = call i32 @xfs_iunlock(%struct.TYPE_17__* %183, i32 %184)
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %173
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %6, align 4
  br label %290

190:                                              ; preds = %173
  store i32 1, i32* %13, align 4
  br label %195

191:                                              ; preds = %101
  %192 = call i32 @ASSERT(i32 0)
  %193 = load i32, i32* @EINVAL, align 4
  %194 = call i32 @XFS_ERROR(i32 %193)
  store i32 %194, i32* %6, align 4
  br label %290

195:                                              ; preds = %190, %168, %148, %136
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* @XFS_TRANS_WRITEID, align 4
  %198 = call i32* @xfs_trans_alloc(i32* %196, i32 %197)
  store i32* %198, i32** %19, align 8
  %199 = load i32*, i32** %19, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @XFS_WRITEID_LOG_RES(i32* %200)
  %202 = call i32 @xfs_trans_reserve(i32* %199, i32 0, i32 %201, i32 0, i32 0, i32 0)
  store i32 %202, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %195
  %205 = load i32*, i32** %19, align 8
  %206 = call i32 @xfs_trans_cancel(i32* %205, i32 0)
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %6, align 4
  br label %290

208:                                              ; preds = %195
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %210 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %211 = call i32 @xfs_ilock(%struct.TYPE_17__* %209, i32 %210)
  %212 = load i32*, i32** %19, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %214 = call i32 @xfs_trans_ijoin(i32* %212, %struct.TYPE_17__* %213)
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @XFS_ATTR_DMI, align 4
  %217 = and i32 %215, %216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %249

219:                                              ; preds = %208
  %220 = load i32, i32* @S_ISUID, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %221
  store i32 %226, i32* %224, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @S_IXGRP, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %219
  %235 = load i32, i32* @S_ISGID, align 4
  %236 = xor i32 %235, -1
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, %236
  store i32 %241, i32* %239, align 8
  br label %242

242:                                              ; preds = %234, %219
  %243 = load i32*, i32** %19, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %245 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %246 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %247 = or i32 %245, %246
  %248 = call i32 @xfs_trans_ichgtime(i32* %243, %struct.TYPE_17__* %244, i32 %247)
  br label %249

249:                                              ; preds = %242, %208
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = load i32, i32* @XFS_DIFLAG_PREALLOC, align 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %253
  store i32 %258, i32* %256, align 4
  br label %271

259:                                              ; preds = %249
  %260 = load i32, i32* %13, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %259
  %263 = load i32, i32* @XFS_DIFLAG_PREALLOC, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, %264
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %262, %259
  br label %271

271:                                              ; preds = %270, %252
  %272 = load i32*, i32** %19, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %274 = load i32, i32* @XFS_ILOG_CORE, align 4
  %275 = call i32 @xfs_trans_log_inode(i32* %272, %struct.TYPE_17__* %273, i32 %274)
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @XFS_ATTR_SYNC, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load i32*, i32** %19, align 8
  %282 = call i32 @xfs_trans_set_sync(i32* %281)
  br label %283

283:                                              ; preds = %280, %271
  %284 = load i32*, i32** %19, align 8
  %285 = call i32 @xfs_trans_commit(i32* %284, i32 0)
  store i32 %285, i32* %14, align 4
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %287 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %288 = call i32 @xfs_iunlock(%struct.TYPE_17__* %286, i32 %287)
  %289 = load i32, i32* %14, align 4
  store i32 %289, i32* %6, align 4
  br label %290

290:                                              ; preds = %283, %204, %191, %188, %146, %134, %98, %52, %31
  %291 = load i32, i32* %6, align 4
  ret i32 %291
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @XFS_ISIZE(%struct.TYPE_17__*) #1

declare dso_local i64 @XFS_MAXIOFFSET(i32*) #1

declare dso_local i32 @xfs_tosspages(%struct.TYPE_17__*, i64, i64, i32) #1

declare dso_local i32 @xfs_alloc_file_space(%struct.TYPE_17__*, i64, i64, i32, i32) #1

declare dso_local i32 @xfs_free_file_space(%struct.TYPE_17__*, i64, i64, i32) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @xfs_setattr(%struct.TYPE_17__*, %struct.iattr*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @xfs_trans_alloc(i32*, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_WRITEID_LOG_RES(i32*) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @xfs_trans_ichgtime(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @xfs_trans_set_sync(i32*) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
