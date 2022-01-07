; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_syscalls.c_xfs_qm_scall_setqlim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_syscalls.c_xfs_qm_scall_setqlim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.xfs_quotainfo* }
%struct.xfs_quotainfo = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.xfs_disk_dquot = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.xfs_dquot = type { i32, %struct.xfs_disk_dquot }
%struct.xfs_trans = type { i32 }

@XFS_DQ_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFS_TRANS_QM_SETQLIM = common dso_local global i32 0, align 4
@XFS_DEFAULT_LOG_COUNT = common dso_local global i32 0, align 4
@XFS_QMOPT_DQALLOC = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FS_DQ_BHARD = common dso_local global i32 0, align 4
@FS_DQ_BSOFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"blkhard %Ld < blksoft %Ld\0A\00", align 1
@FS_DQ_RTBHARD = common dso_local global i32 0, align 4
@FS_DQ_RTBSOFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"rtbhard %Ld < rtbsoft %Ld\0A\00", align 1
@FS_DQ_IHARD = common dso_local global i32 0, align 4
@FS_DQ_ISOFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ihard %Ld < isoft %Ld\0A\00", align 1
@FS_DQ_BWARNS = common dso_local global i32 0, align 4
@FS_DQ_IWARNS = common dso_local global i32 0, align 4
@FS_DQ_RTBWARNS = common dso_local global i32 0, align 4
@FS_DQ_BTIMER = common dso_local global i32 0, align 4
@FS_DQ_ITIMER = common dso_local global i32 0, align 4
@FS_DQ_RTBTIMER = common dso_local global i32 0, align 4
@XFS_DQ_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_scall_setqlim(%struct.xfs_mount* %0, i64 %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.xfs_quotainfo*, align 8
  %11 = alloca %struct.xfs_disk_dquot*, align 8
  %12 = alloca %struct.xfs_dquot*, align 8
  %13 = alloca %struct.xfs_trans*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 0
  %19 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %18, align 8
  store %struct.xfs_quotainfo* %19, %struct.xfs_quotainfo** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @XFS_DQ_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %444

29:                                               ; preds = %4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XFS_DQ_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %444

37:                                               ; preds = %29
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %39 = load i32, i32* @XFS_TRANS_QM_SETQLIM, align 4
  %40 = call %struct.xfs_trans* @xfs_trans_alloc(%struct.xfs_mount* %38, i32 %39)
  store %struct.xfs_trans* %40, %struct.xfs_trans** %13, align 8
  %41 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %42 = load i32, i32* @XFS_DEFAULT_LOG_COUNT, align 4
  %43 = call i32 @xfs_trans_reserve(%struct.xfs_trans* %41, i32 0, i32 132, i32 0, i32 0, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %47 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %46, i32 0)
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %444

49:                                               ; preds = %37
  %50 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %51 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @XFS_QMOPT_DQALLOC, align 4
  %57 = call i32 @xfs_qm_dqget(%struct.xfs_mount* %53, i32* null, i64 %54, i32 %55, i32 %56, %struct.xfs_dquot** %12)
  store i32 %57, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %61 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %62 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %60, i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @ENOENT, align 4
  %65 = icmp ne i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  br label %439

68:                                               ; preds = %49
  %69 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %70 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %71 = call i32 @xfs_trans_dqjoin(%struct.xfs_trans* %69, %struct.xfs_dquot* %70)
  %72 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %73 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %72, i32 0, i32 1
  store %struct.xfs_disk_dquot* %73, %struct.xfs_disk_dquot** %11, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FS_DQ_BHARD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %81, i32 %84)
  br label %91

86:                                               ; preds = %68
  %87 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %88 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %87, i32 0, i32 11
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @be64_to_cpu(i8* %89)
  br label %91

91:                                               ; preds = %86, %80
  %92 = phi i64 [ %85, %80 ], [ %90, %86 ]
  store i64 %92, i64* %15, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FS_DQ_BSOFT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %100, i32 %103)
  br label %110

105:                                              ; preds = %91
  %106 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %107 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %106, i32 0, i32 10
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @be64_to_cpu(i8* %108)
  br label %110

110:                                              ; preds = %105, %99
  %111 = phi i64 [ %104, %99 ], [ %109, %105 ]
  store i64 %111, i64* %16, align 8
  %112 = load i64, i64* %15, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %16, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %114, %110
  %119 = load i64, i64* %15, align 8
  %120 = call i8* @cpu_to_be64(i64 %119)
  %121 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %122 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %121, i32 0, i32 11
  store i8* %120, i8** %122, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call i8* @cpu_to_be64(i64 %123)
  %125 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %126 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %125, i32 0, i32 10
  store i8* %124, i8** %126, align 8
  %127 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %128 = call i32 @xfs_dquot_set_prealloc_limits(%struct.xfs_dquot* %127)
  %129 = load i64, i64* %7, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load i64, i64* %15, align 8
  %133 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %134 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %133, i32 0, i32 12
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %137 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %136, i32 0, i32 11
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %131, %118
  br label %144

139:                                              ; preds = %114
  %140 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* %16, align 8
  %143 = call i32 @xfs_debug(%struct.xfs_mount* %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %139, %138
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @FS_DQ_RTBHARD, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %152, i32 %155)
  br label %162

157:                                              ; preds = %144
  %158 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %159 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %158, i32 0, i32 9
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @be64_to_cpu(i8* %160)
  br label %162

162:                                              ; preds = %157, %151
  %163 = phi i64 [ %156, %151 ], [ %161, %157 ]
  store i64 %163, i64* %15, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @FS_DQ_RTBSOFT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %171, i32 %174)
  br label %181

176:                                              ; preds = %162
  %177 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %178 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %177, i32 0, i32 8
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @be64_to_cpu(i8* %179)
  br label %181

181:                                              ; preds = %176, %170
  %182 = phi i64 [ %175, %170 ], [ %180, %176 ]
  store i64 %182, i64* %16, align 8
  %183 = load i64, i64* %15, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %16, align 8
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %208

189:                                              ; preds = %185, %181
  %190 = load i64, i64* %15, align 8
  %191 = call i8* @cpu_to_be64(i64 %190)
  %192 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %193 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %192, i32 0, i32 9
  store i8* %191, i8** %193, align 8
  %194 = load i64, i64* %16, align 8
  %195 = call i8* @cpu_to_be64(i64 %194)
  %196 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %197 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %196, i32 0, i32 8
  store i8* %195, i8** %197, align 8
  %198 = load i64, i64* %7, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %189
  %201 = load i64, i64* %15, align 8
  %202 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %203 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %202, i32 0, i32 10
  store i64 %201, i64* %203, align 8
  %204 = load i64, i64* %16, align 8
  %205 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %206 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %205, i32 0, i32 9
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %200, %189
  br label %213

208:                                              ; preds = %185
  %209 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %210 = load i64, i64* %15, align 8
  %211 = load i64, i64* %16, align 8
  %212 = call i32 @xfs_debug(%struct.xfs_mount* %209, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %210, i64 %211)
  br label %213

213:                                              ; preds = %208, %207
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @FS_DQ_IHARD, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  br label %229

224:                                              ; preds = %213
  %225 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %226 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %225, i32 0, i32 7
  %227 = load i8*, i8** %226, align 8
  %228 = call i64 @be64_to_cpu(i8* %227)
  br label %229

229:                                              ; preds = %224, %220
  %230 = phi i64 [ %223, %220 ], [ %228, %224 ]
  store i64 %230, i64* %15, align 8
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @FS_DQ_ISOFT, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %229
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 7
  %240 = load i64, i64* %239, align 8
  br label %246

241:                                              ; preds = %229
  %242 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %243 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %242, i32 0, i32 6
  %244 = load i8*, i8** %243, align 8
  %245 = call i64 @be64_to_cpu(i8* %244)
  br label %246

246:                                              ; preds = %241, %237
  %247 = phi i64 [ %240, %237 ], [ %245, %241 ]
  store i64 %247, i64* %16, align 8
  %248 = load i64, i64* %15, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = load i64, i64* %15, align 8
  %252 = load i64, i64* %16, align 8
  %253 = icmp sge i64 %251, %252
  br i1 %253, label %254, label %273

254:                                              ; preds = %250, %246
  %255 = load i64, i64* %15, align 8
  %256 = call i8* @cpu_to_be64(i64 %255)
  %257 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %258 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %257, i32 0, i32 7
  store i8* %256, i8** %258, align 8
  %259 = load i64, i64* %16, align 8
  %260 = call i8* @cpu_to_be64(i64 %259)
  %261 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %262 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %261, i32 0, i32 6
  store i8* %260, i8** %262, align 8
  %263 = load i64, i64* %7, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %254
  %266 = load i64, i64* %15, align 8
  %267 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %268 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %267, i32 0, i32 8
  store i64 %266, i64* %268, align 8
  %269 = load i64, i64* %16, align 8
  %270 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %271 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %270, i32 0, i32 7
  store i64 %269, i64* %271, align 8
  br label %272

272:                                              ; preds = %265, %254
  br label %278

273:                                              ; preds = %250
  %274 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %275 = load i64, i64* %15, align 8
  %276 = load i64, i64* %16, align 8
  %277 = call i32 @xfs_debug(%struct.xfs_mount* %274, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %275, i64 %276)
  br label %278

278:                                              ; preds = %273, %272
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @FS_DQ_BWARNS, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %278
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = call i8* @cpu_to_be16(i32 %288)
  %290 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %291 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %290, i32 0, i32 5
  store i8* %289, i8** %291, align 8
  br label %292

292:                                              ; preds = %285, %278
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @FS_DQ_IWARNS, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %292
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = call i8* @cpu_to_be16(i32 %302)
  %304 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %305 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %304, i32 0, i32 4
  store i8* %303, i8** %305, align 8
  br label %306

306:                                              ; preds = %299, %292
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @FS_DQ_RTBWARNS, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %306
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = call i8* @cpu_to_be16(i32 %316)
  %318 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %319 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %318, i32 0, i32 3
  store i8* %317, i8** %319, align 8
  br label %320

320:                                              ; preds = %313, %306
  %321 = load i64, i64* %7, align 8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %323, label %420

323:                                              ; preds = %320
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @FS_DQ_BTIMER, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %342

330:                                              ; preds = %323
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 6
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %335 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %334, i32 0, i32 6
  store i32 %333, i32* %335, align 8
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = call i8* @cpu_to_be32(i32 %338)
  %340 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %341 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %340, i32 0, i32 2
  store i8* %339, i8** %341, align 8
  br label %342

342:                                              ; preds = %330, %323
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @FS_DQ_ITIMER, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %361

349:                                              ; preds = %342
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %354 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %353, i32 0, i32 5
  store i32 %352, i32* %354, align 4
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = call i8* @cpu_to_be32(i32 %357)
  %359 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %360 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %359, i32 0, i32 1
  store i8* %358, i8** %360, align 8
  br label %361

361:                                              ; preds = %349, %342
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @FS_DQ_RTBTIMER, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %380

368:                                              ; preds = %361
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %373 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %372, i32 0, i32 4
  store i32 %371, i32* %373, align 8
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  %377 = call i8* @cpu_to_be32(i32 %376)
  %378 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %379 = getelementptr inbounds %struct.xfs_disk_dquot, %struct.xfs_disk_dquot* %378, i32 0, i32 0
  store i8* %377, i8** %379, align 8
  br label %380

380:                                              ; preds = %368, %361
  %381 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @FS_DQ_BWARNS, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %380
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %392 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %391, i32 0, i32 3
  store i32 %390, i32* %392, align 4
  br label %393

393:                                              ; preds = %387, %380
  %394 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @FS_DQ_IWARNS, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %393
  %401 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %405 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %404, i32 0, i32 2
  store i32 %403, i32* %405, align 8
  br label %406

406:                                              ; preds = %400, %393
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @FS_DQ_RTBWARNS, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %406
  %414 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %418 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %417, i32 0, i32 1
  store i32 %416, i32* %418, align 4
  br label %419

419:                                              ; preds = %413, %406
  br label %424

420:                                              ; preds = %320
  %421 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %422 = load %struct.xfs_disk_dquot*, %struct.xfs_disk_dquot** %11, align 8
  %423 = call i32 @xfs_qm_adjust_dqtimers(%struct.xfs_mount* %421, %struct.xfs_disk_dquot* %422)
  br label %424

424:                                              ; preds = %420, %419
  %425 = load i32, i32* @XFS_DQ_DIRTY, align 4
  %426 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %427 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = or i32 %428, %425
  store i32 %429, i32* %427, align 8
  %430 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %431 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %432 = call i32 @xfs_trans_log_dquot(%struct.xfs_trans* %430, %struct.xfs_dquot* %431)
  %433 = load %struct.xfs_trans*, %struct.xfs_trans** %13, align 8
  %434 = call i32 @xfs_trans_commit(%struct.xfs_trans* %433, i32 0)
  store i32 %434, i32* %14, align 4
  %435 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %436 = call i32 @xfs_qm_dqprint(%struct.xfs_dquot* %435)
  %437 = load %struct.xfs_dquot*, %struct.xfs_dquot** %12, align 8
  %438 = call i32 @xfs_qm_dqrele(%struct.xfs_dquot* %437)
  br label %439

439:                                              ; preds = %424, %59
  %440 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %10, align 8
  %441 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %440, i32 0, i32 0
  %442 = call i32 @mutex_unlock(i32* %441)
  %443 = load i32, i32* %14, align 4
  store i32 %443, i32* %5, align 4
  br label %444

444:                                              ; preds = %439, %45, %36, %27
  %445 = load i32, i32* %5, align 4
  ret i32 %445
}

declare dso_local %struct.xfs_trans* @xfs_trans_alloc(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_trans_reserve(%struct.xfs_trans*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xfs_qm_dqget(%struct.xfs_mount*, i32*, i64, i32, i32, %struct.xfs_dquot**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_dqjoin(%struct.xfs_trans*, %struct.xfs_dquot*) #1

declare dso_local i64 @XFS_BB_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i64 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dquot_set_prealloc_limits(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_debug(%struct.xfs_mount*, i8*, i64, i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_qm_adjust_dqtimers(%struct.xfs_mount*, %struct.xfs_disk_dquot*) #1

declare dso_local i32 @xfs_trans_log_dquot(%struct.xfs_trans*, %struct.xfs_dquot*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*, i32) #1

declare dso_local i32 @xfs_qm_dqprint(%struct.xfs_dquot*) #1

declare dso_local i32 @xfs_qm_dqrele(%struct.xfs_dquot*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
