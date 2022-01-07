; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rtalloc.c_xfs_growfs_rt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rtalloc.c_xfs_growfs_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_25__, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_TRANS_GROWFSRT_FREE = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4
@XFS_TRANS_SB_REXTSIZE = common dso_local global i32 0, align 4
@XFS_TRANS_SB_RBMBLOCKS = common dso_local global i32 0, align 4
@XFS_TRANS_SB_RBLOCKS = common dso_local global i32 0, align 4
@XFS_TRANS_SB_REXTENTS = common dso_local global i32 0, align 4
@XFS_TRANS_SB_REXTSLOG = common dso_local global i32 0, align 4
@XFS_TRANS_SB_FREXTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_growfs_rt(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 5
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %20, align 8
  %26 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EPERM, align 4
  %31 = call i32 @XFS_ERROR(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %517

32:                                               ; preds = %2
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %63, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %39, align 8
  %41 = icmp eq %struct.TYPE_28__* %40, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %45, %48
  br i1 %49, label %63, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55, %42, %37, %32
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @XFS_ERROR(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %517

66:                                               ; preds = %55, %50
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @xfs_sb_validate_fsb_count(%struct.TYPE_25__* %67, i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %517

73:                                               ; preds = %66
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @XFS_FSB_TO_BB(%struct.TYPE_26__* %78, i64 %80)
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %83 = call i32 @XFS_FSB_TO_B(%struct.TYPE_26__* %82, i32 1)
  %84 = call i32* @xfs_buf_read_uncached(%struct.TYPE_26__* %74, i32* %77, i32 %81, i32 %83, i32 0)
  store i32* %84, i32** %7, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %73
  %88 = load i32, i32* @EIO, align 4
  store i32 %88, i32* %3, align 4
  br label %517

89:                                               ; preds = %73
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @xfs_buf_relse(i32* %90)
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @do_div(i64 %93, i32 %96)
  %98 = load i64, i64* %12, align 8
  %99 = load i32, i32* @NBBY, align 4
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = call i32 @howmany_64(i64 %98, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i64, i64* %12, align 8
  %106 = call i8* @xfs_highbit32(i64 %105)
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = mul nsw i32 4, %110
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %111, %112
  store i32 %113, i32* %16, align 4
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @XFS_B_TO_FSB(%struct.TYPE_26__* %114, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @XFS_FSB_TO_B(%struct.TYPE_26__* %117, i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 1
  %126 = icmp sgt i32 %120, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %89
  %128 = load i32, i32* @EINVAL, align 4
  %129 = call i32 @XFS_ERROR(i32 %128)
  store i32 %129, i32* %3, align 4
  br label %517

130:                                              ; preds = %89
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @XFS_B_TO_FSB(%struct.TYPE_26__* %131, i32 %137)
  store i32 %138, i32* %18, align 4
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @XFS_B_TO_FSB(%struct.TYPE_26__* %139, i32 %145)
  store i32 %146, i32* %19, align 4
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %151, align 8
  %153 = call i32 @xfs_growfs_rt_alloc(%struct.TYPE_26__* %147, i32 %148, i32 %149, %struct.TYPE_28__* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %130
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %517

158:                                              ; preds = %130
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %163, align 8
  %165 = call i32 @xfs_growfs_rt_alloc(%struct.TYPE_26__* %159, i32 %160, i32 %161, %struct.TYPE_28__* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  br label %517

170:                                              ; preds = %158
  %171 = load i32, i32* @KM_SLEEP, align 4
  %172 = call %struct.TYPE_26__* @kmem_alloc(i32 72, i32 %171)
  store %struct.TYPE_26__* %172, %struct.TYPE_26__** %9, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = shl i32 1, %181
  %183 = sub nsw i32 %182, 1
  %184 = and i32 %178, %183
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = sub nsw i32 %175, %186
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %510, %170
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %513

192:                                              ; preds = %188
  store i32 0, i32* %23, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %195 = bitcast %struct.TYPE_26__* %193 to i8*
  %196 = bitcast %struct.TYPE_26__* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 72, i1 false)
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 5
  store %struct.TYPE_25__* %198, %struct.TYPE_25__** %17, align 8
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 4
  %208 = load i64, i64* %10, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @NBBY, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %213, %216
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = mul nsw i32 %217, %220
  %222 = call i64 @XFS_RTMIN(i64 %208, i32 %221)
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @do_div(i64 %234, i32 %237)
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @ASSERT(i32 %243)
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = call i8* @xfs_highbit32(i64 %248)
  %250 = ptrtoint i8* %249 to i32
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 6
  store i32 %250, i32* %252, align 4
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  store i32 %256, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = mul nsw i32 4, %259
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %260, %263
  store i32 %264, i32* %16, align 4
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @XFS_B_TO_FSB(%struct.TYPE_26__* %265, i32 %266)
  store i32 %267, i32* %14, align 4
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %269 = load i32, i32* %14, align 4
  %270 = call i32 @XFS_FSB_TO_B(%struct.TYPE_26__* %268, i32 %269)
  store i32 %270, i32* %16, align 4
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %274 = load i32, i32* @XFS_TRANS_GROWFSRT_FREE, align 4
  %275 = call i32* @xfs_trans_alloc(%struct.TYPE_26__* %273, i32 %274)
  store i32* %275, i32** %22, align 8
  %276 = load i32*, i32** %22, align 8
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %278 = call i32 @XFS_GROWRTFREE_LOG_RES(%struct.TYPE_26__* %277)
  %279 = call i32 @xfs_trans_reserve(i32* %276, i32 0, i32 %278, i32 0, i32 0, i32 0)
  store i32 %279, i32* %8, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %192
  br label %482

282:                                              ; preds = %192
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 4
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %284, align 8
  %286 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %287 = call i32 @xfs_ilock(%struct.TYPE_28__* %285, i32 %286)
  %288 = load i32*, i32** %22, align 8
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 4
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %290, align 8
  %292 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %293 = call i32 @xfs_trans_ijoin_ref(i32* %288, %struct.TYPE_28__* %291, i32 %292)
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %296, %299
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 4
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 0
  store i32 %300, i32* %305, align 4
  %306 = load i32*, i32** %22, align 8
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 4
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %308, align 8
  %310 = load i32, i32* @XFS_ILOG_CORE, align 4
  %311 = call i32 @xfs_trans_log_inode(i32* %306, %struct.TYPE_28__* %309, i32 %310)
  %312 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %313 = load i32, i32* %23, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %23, align 4
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %316, align 8
  %318 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %319 = call i32 @xfs_ilock(%struct.TYPE_28__* %317, i32 %318)
  %320 = load i32*, i32** %22, align 8
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 3
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %322, align 8
  %324 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %325 = call i32 @xfs_trans_ijoin_ref(i32* %320, %struct.TYPE_28__* %323, i32 %324)
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %329, i32 0, i32 3
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 0
  store i32 %328, i32* %333, align 4
  %334 = load i32*, i32** %22, align 8
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 3
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %336, align 8
  %338 = load i32, i32* @XFS_ILOG_CORE, align 4
  %339 = call i32 @xfs_trans_log_inode(i32* %334, %struct.TYPE_28__* %337, i32 %338)
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %342, %345
  br i1 %346, label %355, label %347

347:                                              ; preds = %282
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %350, %353
  br i1 %354, label %355, label %364

355:                                              ; preds = %347, %282
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %358 = load i32*, i32** %22, align 8
  %359 = call i32 @xfs_rtcopy_summary(%struct.TYPE_26__* %356, %struct.TYPE_26__* %357, i32* %358)
  store i32 %359, i32* %8, align 4
  %360 = load i32, i32* %8, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %355
  br label %482

363:                                              ; preds = %355
  br label %364

364:                                              ; preds = %363, %347
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %367, %370
  br i1 %371, label %372, label %384

372:                                              ; preds = %364
  %373 = load i32*, i32** %22, align 8
  %374 = load i32, i32* @XFS_TRANS_SB_REXTSIZE, align 4
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %379 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = sub nsw i32 %377, %380
  %382 = sext i32 %381 to i64
  %383 = call i32 @xfs_trans_mod_sb(i32* %373, i32 %374, i64 %382)
  br label %384

384:                                              ; preds = %372, %364
  %385 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %387, %390
  br i1 %391, label %392, label %404

392:                                              ; preds = %384
  %393 = load i32*, i32** %22, align 8
  %394 = load i32, i32* @XFS_TRANS_SB_RBMBLOCKS, align 4
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 4
  %401 = sub nsw i32 %397, %400
  %402 = sext i32 %401 to i64
  %403 = call i32 @xfs_trans_mod_sb(i32* %393, i32 %394, i64 %402)
  br label %404

404:                                              ; preds = %392, %384
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %406 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %409 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %407, %410
  br i1 %411, label %412, label %423

412:                                              ; preds = %404
  %413 = load i32*, i32** %22, align 8
  %414 = load i32, i32* @XFS_TRANS_SB_RBLOCKS, align 4
  %415 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %416 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %419 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = sub nsw i64 %417, %420
  %422 = call i32 @xfs_trans_mod_sb(i32* %413, i32 %414, i64 %421)
  br label %423

423:                                              ; preds = %412, %404
  %424 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %425 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %424, i32 0, i32 5
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %428 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %427, i32 0, i32 5
  %429 = load i32, i32* %428, align 8
  %430 = icmp ne i32 %426, %429
  br i1 %430, label %431, label %443

431:                                              ; preds = %423
  %432 = load i32*, i32** %22, align 8
  %433 = load i32, i32* @XFS_TRANS_SB_REXTENTS, align 4
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %435 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %437, i32 0, i32 5
  %439 = load i32, i32* %438, align 8
  %440 = sub nsw i32 %436, %439
  %441 = sext i32 %440 to i64
  %442 = call i32 @xfs_trans_mod_sb(i32* %432, i32 %433, i64 %441)
  br label %443

443:                                              ; preds = %431, %423
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 6
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %448 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %447, i32 0, i32 6
  %449 = load i32, i32* %448, align 4
  %450 = icmp ne i32 %446, %449
  br i1 %450, label %451, label %463

451:                                              ; preds = %443
  %452 = load i32*, i32** %22, align 8
  %453 = load i32, i32* @XFS_TRANS_SB_REXTSLOG, align 4
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %454, i32 0, i32 6
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %458 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %457, i32 0, i32 6
  %459 = load i32, i32* %458, align 4
  %460 = sub nsw i32 %456, %459
  %461 = sext i32 %460 to i64
  %462 = call i32 @xfs_trans_mod_sb(i32* %452, i32 %453, i64 %461)
  br label %463

463:                                              ; preds = %451, %443
  store i32* null, i32** %7, align 8
  %464 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %465 = load i32*, i32** %22, align 8
  %466 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %467 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %466, i32 0, i32 5
  %468 = load i32, i32* %467, align 8
  %469 = sext i32 %468 to i64
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %471 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %470, i32 0, i32 5
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %474 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %473, i32 0, i32 5
  %475 = load i32, i32* %474, align 8
  %476 = sub nsw i32 %472, %475
  %477 = sext i32 %476 to i64
  %478 = call i32 @xfs_rtfree_range(%struct.TYPE_26__* %464, i32* %465, i64 %469, i64 %477, i32** %7, i32* %21)
  store i32 %478, i32* %8, align 4
  %479 = load i32, i32* %8, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %486

481:                                              ; preds = %463
  br label %482

482:                                              ; preds = %481, %362, %281
  %483 = load i32*, i32** %22, align 8
  %484 = load i32, i32* %23, align 4
  %485 = call i32 @xfs_trans_cancel(i32* %483, i32 %484)
  br label %513

486:                                              ; preds = %463
  %487 = load i32*, i32** %22, align 8
  %488 = load i32, i32* @XFS_TRANS_SB_FREXTENTS, align 4
  %489 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %490 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %489, i32 0, i32 5
  %491 = load i32, i32* %490, align 8
  %492 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %493 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 8
  %495 = sub nsw i32 %491, %494
  %496 = sext i32 %495 to i64
  %497 = call i32 @xfs_trans_mod_sb(i32* %487, i32 %488, i64 %496)
  %498 = load i32, i32* %15, align 4
  %499 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %499, i32 0, i32 1
  store i32 %498, i32* %500, align 4
  %501 = load i32, i32* %16, align 4
  %502 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %502, i32 0, i32 2
  store i32 %501, i32* %503, align 8
  %504 = load i32*, i32** %22, align 8
  %505 = call i32 @xfs_trans_commit(i32* %504, i32 0)
  store i32 %505, i32* %8, align 4
  %506 = load i32, i32* %8, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %486
  br label %513

509:                                              ; preds = %486
  br label %510

510:                                              ; preds = %509
  %511 = load i32, i32* %6, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %6, align 4
  br label %188

513:                                              ; preds = %508, %482, %188
  %514 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %515 = call i32 @kmem_free(%struct.TYPE_26__* %514)
  %516 = load i32, i32* %8, align 4
  store i32 %516, i32* %3, align 4
  br label %517

517:                                              ; preds = %513, %168, %156, %127, %87, %71, %63, %29
  %518 = load i32, i32* %3, align 4
  ret i32 %518
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_sb_validate_fsb_count(%struct.TYPE_25__*, i64) #1

declare dso_local i32* @xfs_buf_read_uncached(%struct.TYPE_26__*, i32*, i32, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_BB(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @XFS_FSB_TO_B(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @xfs_buf_relse(i32*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @howmany_64(i64, i32) #1

declare dso_local i8* @xfs_highbit32(i64) #1

declare dso_local i32 @XFS_B_TO_FSB(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @xfs_growfs_rt_alloc(%struct.TYPE_26__*, i32, i32, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_26__* @kmem_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @XFS_RTMIN(i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @xfs_trans_alloc(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_GROWRTFREE_LOG_RES(%struct.TYPE_26__*) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @xfs_trans_ijoin_ref(i32*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @xfs_rtcopy_summary(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @xfs_trans_mod_sb(i32*, i32, i64) #1

declare dso_local i32 @xfs_rtfree_range(%struct.TYPE_26__*, i32*, i64, i64, i32**, i32*) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
