; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_iomap.c_xfs_iomap_write_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_iomap.c_xfs_iomap_write_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_30__ = type { i64, i64, i64 }

@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@XFS_QMOPT_RES_RTBLKS = common dso_local global i32 0, align 4
@XFS_QMOPT_RES_REGBLKS = common dso_local global i32 0, align 4
@XFS_TRANS_DIOSTRAT = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_WRITE_LOG_COUNT = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_BMAPI_WRITE = common dso_local global i32 0, align 4
@XFS_BMAPI_PREALLOC = common dso_local global i32 0, align 4
@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_iomap_write_direct(%struct.TYPE_29__* %0, i64 %1, i64 %2, %struct.TYPE_30__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %10, align 8
  store i32 %4, i32* %11, align 4
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %12, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %35 = call i32 @xfs_qm_dqattach(%struct.TYPE_29__* %34, i32 0)
  store i32 %35, i32* %30, align 4
  %36 = load i32, i32* %30, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* %30, align 4
  %40 = call i32 @XFS_ERROR(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %255

41:                                               ; preds = %5
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %43 = call i32 @XFS_IS_REALTIME_INODE(%struct.TYPE_29__* %42)
  store i32 %43, i32* %23, align 4
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %45 = call i64 @xfs_get_extsz_hint(%struct.TYPE_29__* %44)
  store i64 %45, i64* %18, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @XFS_B_TO_FSBT(%struct.TYPE_28__* %46, i64 %47)
  store i64 %48, i64* %13, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i64 @XFS_B_TO_FSB(%struct.TYPE_28__* %49, i32 %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %59 = call i64 @XFS_ISIZE(%struct.TYPE_29__* %58)
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %41
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %64 = load i64, i64* %18, align 8
  %65 = call i32 @xfs_iomap_eof_align_last_fsb(%struct.TYPE_28__* %62, %struct.TYPE_29__* %63, i64 %64, i64* %14)
  store i32 %65, i32* %30, align 4
  %66 = load i32, i32* %30, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %30, align 4
  %70 = call i32 @XFS_ERROR(i32 %69)
  store i32 %70, i32* %6, align 4
  br label %255

71:                                               ; preds = %61
  br label %92

72:                                               ; preds = %41
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HOLESTARTBLOCK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i64, i64* %14, align 8
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = call i64 @MIN(i64 %82, i64 %89)
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %81, %75, %72
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %13, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = icmp sgt i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load i64, i64* %15, align 8
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %18, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %92
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %18, align 8
  %108 = call i64 @do_mod(i64 %106, i64 %107)
  store i64 %108, i64* %19, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* %16, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %16, align 8
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %18, align 8
  %117 = call i64 @do_mod(i64 %115, i64 %116)
  store i64 %117, i64* %19, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* %19, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load i64, i64* %16, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %16, align 8
  br label %125

125:                                              ; preds = %119, %114
  br label %126

126:                                              ; preds = %125, %92
  %127 = load i32, i32* %23, align 4
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load i64, i64* %16, align 8
  store i64 %131, i64* %26, align 8
  store i64 %131, i64* %28, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %28, align 8
  %137 = sdiv i64 %136, %135
  store i64 %137, i64* %28, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %139 = call i64 @XFS_DIOSTRAT_SPACE_RES(%struct.TYPE_28__* %138, i64 0)
  store i64 %139, i64* %27, align 8
  %140 = load i32, i32* @XFS_QMOPT_RES_RTBLKS, align 4
  store i32 %140, i32* %22, align 4
  br label %146

141:                                              ; preds = %126
  store i64 0, i64* %28, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %143 = load i64, i64* %16, align 8
  %144 = call i64 @XFS_DIOSTRAT_SPACE_RES(%struct.TYPE_28__* %142, i64 %143)
  store i64 %144, i64* %26, align 8
  store i64 %144, i64* %27, align 8
  %145 = load i32, i32* @XFS_QMOPT_RES_REGBLKS, align 4
  store i32 %145, i32* %22, align 4
  br label %146

146:                                              ; preds = %141, %130
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %148 = load i32, i32* @XFS_TRANS_DIOSTRAT, align 4
  %149 = call i32* @xfs_trans_alloc(%struct.TYPE_28__* %147, i32 %148)
  store i32* %149, i32** %24, align 8
  %150 = load i32*, i32** %24, align 8
  %151 = load i64, i64* %27, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %153 = call i32 @XFS_WRITE_LOG_RES(%struct.TYPE_28__* %152)
  %154 = load i64, i64* %28, align 8
  %155 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %156 = load i32, i32* @XFS_WRITE_LOG_COUNT, align 4
  %157 = call i32 @xfs_trans_reserve(i32* %150, i64 %151, i32 %153, i64 %154, i32 %155, i32 %156)
  store i32 %157, i32* %30, align 4
  %158 = load i32, i32* %30, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %146
  %161 = load i32*, i32** %24, align 8
  %162 = call i32 @xfs_trans_cancel(i32* %161, i32 0)
  %163 = load i32, i32* %30, align 4
  %164 = call i32 @XFS_ERROR(i32 %163)
  store i32 %164, i32* %6, align 4
  br label %255

165:                                              ; preds = %146
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %167 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %168 = call i32 @xfs_ilock(%struct.TYPE_29__* %166, i32 %167)
  %169 = load i32*, i32** %24, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %171 = load i64, i64* %26, align 8
  %172 = load i32, i32* %22, align 4
  %173 = call i32 @xfs_trans_reserve_quota_nblks(i32* %169, %struct.TYPE_29__* %170, i64 %171, i32 0, i32 %172)
  store i32 %173, i32* %30, align 4
  %174 = load i32, i32* %30, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %249

177:                                              ; preds = %165
  %178 = load i32*, i32** %24, align 8
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %180 = call i32 @xfs_trans_ijoin(i32* %178, %struct.TYPE_29__* %179)
  %181 = load i32, i32* @XFS_BMAPI_WRITE, align 4
  store i32 %181, i32* %21, align 4
  %182 = load i64, i64* %8, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %184 = call i64 @XFS_ISIZE(%struct.TYPE_29__* %183)
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %189, label %186

186:                                              ; preds = %177
  %187 = load i64, i64* %18, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %186, %177
  %190 = load i32, i32* @XFS_BMAPI_PREALLOC, align 4
  %191 = load i32, i32* %21, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %21, align 4
  br label %193

193:                                              ; preds = %189, %186
  %194 = call i32 @xfs_bmap_init(i32* %25, i32* %17)
  store i32 1, i32* %20, align 4
  %195 = load i32*, i32** %24, align 8
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* %15, align 8
  %199 = load i32, i32* %21, align 4
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %201 = call i32 @xfs_bmapi(i32* %195, %struct.TYPE_29__* %196, i64 %197, i64 %198, i32 %199, i32* %17, i32 0, %struct.TYPE_30__* %200, i32* %20, i32* %25)
  store i32 %201, i32* %30, align 4
  %202 = load i32, i32* %30, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %193
  br label %242

205:                                              ; preds = %193
  %206 = call i32 @xfs_bmap_finish(i32** %24, i32* %25, i32* %29)
  store i32 %206, i32* %30, align 4
  %207 = load i32, i32* %30, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %242

210:                                              ; preds = %205
  %211 = load i32*, i32** %24, align 8
  %212 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %213 = call i32 @xfs_trans_commit(i32* %211, i32 %212)
  store i32 %213, i32* %30, align 4
  %214 = load i32, i32* %30, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  br label %237

217:                                              ; preds = %210
  %218 = load i32, i32* %20, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* @ENOSPC, align 4
  %222 = call i32 @XFS_ERROR(i32 %221)
  store i32 %222, i32* %30, align 4
  br label %237

223:                                              ; preds = %217
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %223
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %230 = call i32 @XFS_IS_REALTIME_INODE(%struct.TYPE_29__* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %235 = call i32 @xfs_alert_fsblock_zero(%struct.TYPE_29__* %233, %struct.TYPE_30__* %234)
  store i32 %235, i32* %30, align 4
  br label %236

236:                                              ; preds = %232, %228, %223
  br label %237

237:                                              ; preds = %249, %236, %220, %216
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %239 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %240 = call i32 @xfs_iunlock(%struct.TYPE_29__* %238, i32 %239)
  %241 = load i32, i32* %30, align 4
  store i32 %241, i32* %6, align 4
  br label %255

242:                                              ; preds = %209, %204
  %243 = call i32 @xfs_bmap_cancel(i32* %25)
  %244 = load i32*, i32** %24, align 8
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %246 = load i64, i64* %26, align 8
  %247 = load i32, i32* %22, align 4
  %248 = call i32 @xfs_trans_unreserve_quota_nblks(i32* %244, %struct.TYPE_29__* %245, i64 %246, i32 0, i32 %247)
  br label %249

249:                                              ; preds = %242, %176
  %250 = load i32*, i32** %24, align 8
  %251 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %252 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %253 = or i32 %251, %252
  %254 = call i32 @xfs_trans_cancel(i32* %250, i32 %253)
  br label %237

255:                                              ; preds = %237, %160, %68, %38
  %256 = load i32, i32* %6, align 4
  ret i32 %256
}

declare dso_local i32 @xfs_qm_dqattach(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @XFS_IS_REALTIME_INODE(%struct.TYPE_29__*) #1

declare dso_local i64 @xfs_get_extsz_hint(%struct.TYPE_29__*) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @XFS_B_TO_FSB(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @XFS_ISIZE(%struct.TYPE_29__*) #1

declare dso_local i32 @xfs_iomap_eof_align_last_fsb(%struct.TYPE_28__*, %struct.TYPE_29__*, i64, i64*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @do_mod(i64, i64) #1

declare dso_local i64 @XFS_DIOSTRAT_SPACE_RES(%struct.TYPE_28__*, i64) #1

declare dso_local i32* @xfs_trans_alloc(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i64, i32, i64, i32, i32) #1

declare dso_local i32 @XFS_WRITE_LOG_RES(%struct.TYPE_28__*) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @xfs_trans_reserve_quota_nblks(i32*, %struct.TYPE_29__*, i64, i32, i32) #1

declare dso_local i32 @xfs_trans_ijoin(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @xfs_bmap_init(i32*, i32*) #1

declare dso_local i32 @xfs_bmapi(i32*, %struct.TYPE_29__*, i64, i64, i32, i32*, i32, %struct.TYPE_30__*, i32*, i32*) #1

declare dso_local i32 @xfs_bmap_finish(i32**, i32*, i32*) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

declare dso_local i32 @xfs_alert_fsblock_zero(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @xfs_bmap_cancel(i32*) #1

declare dso_local i32 @xfs_trans_unreserve_quota_nblks(i32*, %struct.TYPE_29__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
