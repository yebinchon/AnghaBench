; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_addname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_addname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_44__ = type { i32, i64, i32, i32, i32, i32, i32*, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_50__ = type { i32, i32 }
%struct.TYPE_53__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_50__*, i8* }
%struct.TYPE_48__ = type { i8*, i8* }
%struct.TYPE_43__ = type { %struct.TYPE_53__* }
%struct.TYPE_52__ = type { i8*, i8* }
%struct.TYPE_51__ = type { i32, i32, i32 }
%struct.TYPE_49__ = type { i32, i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"xfs_dir2_block_addname\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_addname(%struct.TYPE_44__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_44__*, align 8
  %4 = alloca %struct.TYPE_50__*, align 8
  %5 = alloca %struct.TYPE_53__*, align 8
  %6 = alloca %struct.TYPE_48__*, align 8
  %7 = alloca %struct.TYPE_43__*, align 8
  %8 = alloca %struct.TYPE_52__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_51__*, align 8
  %11 = alloca %struct.TYPE_47__*, align 8
  %12 = alloca %struct.TYPE_49__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_49__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_46__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %3, align 8
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %14, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %23, align 4
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %32 = call i32 @trace_xfs_dir2_block_addname(%struct.TYPE_44__* %31)
  %33 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_47__*, %struct.TYPE_47__** %34, align 8
  store %struct.TYPE_47__* %35, %struct.TYPE_47__** %11, align 8
  %36 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %28, align 8
  %39 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_46__*, %struct.TYPE_46__** %40, align 8
  store %struct.TYPE_46__* %41, %struct.TYPE_46__** %24, align 8
  %42 = load i32*, i32** %28, align 8
  %43 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %44 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %45 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @XFS_DATA_FORK, align 4
  %48 = call i32 @xfs_da_read_buf(i32* %42, %struct.TYPE_47__* %43, i32 %46, i32 -1, %struct.TYPE_43__** %7, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %2, align 4
  br label %790

52:                                               ; preds = %1
  %53 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %54 = icmp ne %struct.TYPE_43__* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_53__*, %struct.TYPE_53__** %58, align 8
  store %struct.TYPE_53__* %59, %struct.TYPE_53__** %5, align 8
  %60 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @be32_to_cpu(i8* %63)
  %65 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %52
  %71 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %72 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %73 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %74 = call i32 @XFS_CORRUPTION_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %71, %struct.TYPE_46__* %72, %struct.TYPE_53__* %73)
  %75 = load i32*, i32** %28, align 8
  %76 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %77 = call i32 @xfs_da_brelse(i32* %75, %struct.TYPE_43__* %76)
  %78 = load i32, i32* @EFSCORRUPTED, align 4
  %79 = call i32 @XFS_ERROR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %790

80:                                               ; preds = %52
  %81 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @xfs_dir2_data_entsize(i32 %83)
  store i32 %84, i32* %20, align 4
  %85 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_50__*, %struct.TYPE_50__** %87, align 8
  store %struct.TYPE_50__* %88, %struct.TYPE_50__** %4, align 8
  %89 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %90 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %91 = call %struct.TYPE_52__* @xfs_dir2_block_tail_p(%struct.TYPE_46__* %89, %struct.TYPE_53__* %90)
  store %struct.TYPE_52__* %91, %struct.TYPE_52__** %8, align 8
  %92 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %93 = call %struct.TYPE_48__* @xfs_dir2_block_leaf_p(%struct.TYPE_52__* %92)
  store %struct.TYPE_48__* %93, %struct.TYPE_48__** %6, align 8
  %94 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %172, label %98

98:                                               ; preds = %80
  %99 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %100 = bitcast %struct.TYPE_48__* %99 to i32*
  %101 = getelementptr inbounds i32, i32* %100, i64 -1
  store i32* %101, i32** %27, align 8
  %102 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %103 = bitcast %struct.TYPE_53__* %102 to i8*
  %104 = load i32*, i32** %27, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be16_to_cpu(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = bitcast i8* %108 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %109, %struct.TYPE_49__** %14, align 8
  %110 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @be16_to_cpu(i32 %112)
  %114 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %98
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %14, align 8
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %12, align 8
  br label %171

117:                                              ; preds = %98
  %118 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %119 = bitcast %struct.TYPE_53__* %118 to i8*
  %120 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @be16_to_cpu(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %119, i64 %125
  %127 = bitcast i8* %126 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %127, %struct.TYPE_49__** %12, align 8
  %128 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %129 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %130 = icmp eq %struct.TYPE_49__* %128, %129
  br i1 %130, label %131, label %161

131:                                              ; preds = %117
  %132 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @be16_to_cpu(i32 %134)
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %136, 16
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %131
  %140 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %140, i64 1
  %142 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @be16_to_cpu(i32 %143)
  %145 = load i32, i32* %20, align 4
  %146 = icmp sge i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %139
  %148 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %149 = bitcast %struct.TYPE_53__* %148 to i8*
  %150 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @be16_to_cpu(i32 %153)
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %149, i64 %155
  %157 = bitcast i8* %156 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %157, %struct.TYPE_49__** %12, align 8
  br label %159

158:                                              ; preds = %139
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %12, align 8
  br label %159

159:                                              ; preds = %158, %147
  br label %160

160:                                              ; preds = %159, %131
  br label %170

161:                                              ; preds = %117
  %162 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @be16_to_cpu(i32 %164)
  %166 = load i32, i32* %20, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %12, align 8
  br label %169

169:                                              ; preds = %168, %161
  br label %170

170:                                              ; preds = %169, %160
  br label %171

171:                                              ; preds = %170, %116
  store i32 0, i32* %9, align 4
  br label %241

172:                                              ; preds = %80
  %173 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @be16_to_cpu(i32 %176)
  %178 = load i32, i32* %20, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %172
  %181 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %182 = bitcast %struct.TYPE_53__* %181 to i8*
  %183 = load %struct.TYPE_50__*, %struct.TYPE_50__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @be16_to_cpu(i32 %186)
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %182, i64 %188
  %190 = bitcast i8* %189 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %190, %struct.TYPE_49__** %12, align 8
  store i32 0, i32* %9, align 4
  br label %240

191:                                              ; preds = %172
  %192 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %193 = bitcast %struct.TYPE_48__* %192 to i32*
  %194 = getelementptr inbounds i32, i32* %193, i64 -1
  store i32* %194, i32** %27, align 8
  %195 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %196 = bitcast %struct.TYPE_53__* %195 to i8*
  %197 = load i32*, i32** %27, align 8
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @be16_to_cpu(i32 %198)
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  %202 = bitcast i8* %201 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %202, %struct.TYPE_49__** %12, align 8
  %203 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @be16_to_cpu(i32 %205)
  %207 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %191
  %210 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @be16_to_cpu(i32 %212)
  %214 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @be32_to_cpu(i8* %216)
  %218 = sub nsw i32 %217, 1
  %219 = mul nsw i32 %218, 16
  %220 = add nsw i32 %213, %219
  %221 = load i32, i32* %20, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %209
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %12, align 8
  br label %224

224:                                              ; preds = %223, %209
  br label %239

225:                                              ; preds = %191
  %226 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @be32_to_cpu(i8* %228)
  %230 = sub nsw i32 %229, 1
  %231 = mul nsw i32 %230, 16
  %232 = load i32, i32* %20, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %12, align 8
  br label %238

235:                                              ; preds = %225
  %236 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %237 = bitcast %struct.TYPE_48__* %236 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %237, %struct.TYPE_49__** %12, align 8
  br label %238

238:                                              ; preds = %235, %234
  br label %239

239:                                              ; preds = %238, %224
  store i32 1, i32* %9, align 4
  br label %240

240:                                              ; preds = %239, %180
  br label %241

241:                                              ; preds = %240, %171
  %242 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %241
  %249 = load i32*, i32** %28, align 8
  %250 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %251 = call i32 @xfs_da_brelse(i32* %249, %struct.TYPE_43__* %250)
  br label %252

252:                                              ; preds = %248, %241
  %253 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %254 = icmp ne %struct.TYPE_49__* %253, null
  br i1 %254, label %283, label %255

255:                                              ; preds = %252
  %256 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %255
  %263 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262, %255
  %268 = load i32, i32* @ENOSPC, align 4
  %269 = call i32 @XFS_ERROR(i32 %268)
  store i32 %269, i32* %2, align 4
  br label %790

270:                                              ; preds = %262
  %271 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %272 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %273 = call i32 @xfs_dir2_block_to_leaf(%struct.TYPE_44__* %271, %struct.TYPE_43__* %272)
  store i32 %273, i32* %13, align 4
  %274 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %275 = call i32 @xfs_da_buf_done(%struct.TYPE_43__* %274)
  %276 = load i32, i32* %13, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = load i32, i32* %13, align 4
  store i32 %279, i32* %2, align 4
  br label %790

280:                                              ; preds = %270
  %281 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %282 = call i32 @xfs_dir2_leaf_addname(%struct.TYPE_44__* %281)
  store i32 %282, i32* %2, align 4
  br label %790

283:                                              ; preds = %252
  %284 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  store i32 0, i32* %2, align 4
  br label %790

291:                                              ; preds = %283
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  %292 = load i32, i32* %9, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %409

294:                                              ; preds = %291
  %295 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @be32_to_cpu(i8* %297)
  %299 = sub nsw i32 %298, 1
  store i32 %299, i32* %30, align 4
  store i32 %299, i32* %29, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %17, align 4
  br label %300

300:                                              ; preds = %343, %294
  %301 = load i32, i32* %29, align 4
  %302 = icmp sge i32 %301, 0
  br i1 %302, label %303, label %346

303:                                              ; preds = %300
  %304 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %305 = load i32, i32* %29, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @be32_to_cpu(i8* %309)
  %311 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %325

313:                                              ; preds = %303
  %314 = load i32, i32* %17, align 4
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = load i32, i32* %30, align 4
  store i32 %317, i32* %17, align 4
  br label %324

318:                                              ; preds = %313
  %319 = load i32, i32* %18, align 4
  %320 = icmp eq i32 %319, -1
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  %322 = load i32, i32* %30, align 4
  store i32 %322, i32* %18, align 4
  br label %323

323:                                              ; preds = %321, %318
  br label %343

324:                                              ; preds = %316
  br label %325

325:                                              ; preds = %324, %303
  %326 = load i32, i32* %29, align 4
  %327 = load i32, i32* %30, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %340

329:                                              ; preds = %325
  %330 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %331 = load i32, i32* %30, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %330, i64 %332
  %334 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %335 = load i32, i32* %29, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %334, i64 %336
  %338 = bitcast %struct.TYPE_48__* %333 to i8*
  %339 = bitcast %struct.TYPE_48__* %337 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %338, i8* align 8 %339, i64 16, i1 false)
  br label %340

340:                                              ; preds = %329, %325
  %341 = load i32, i32* %30, align 4
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* %30, align 4
  br label %343

343:                                              ; preds = %340, %323
  %344 = load i32, i32* %29, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %29, align 4
  br label %300

346:                                              ; preds = %300
  %347 = load i32, i32* %30, align 4
  %348 = add nsw i32 %347, 1
  %349 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @be32_to_cpu(i8* %351)
  %353 = sub nsw i32 %352, 1
  %354 = sub nsw i32 %348, %353
  store i32 %354, i32* %19, align 4
  %355 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @be32_to_cpu(i8* %357)
  %359 = sub nsw i32 %358, 1
  %360 = load i32, i32* %18, align 4
  %361 = sub nsw i32 %360, %359
  store i32 %361, i32* %18, align 4
  %362 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %362, i32 0, i32 1
  %364 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %364, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 @be32_to_cpu(i8* %366)
  %368 = sub nsw i32 %367, 1
  %369 = sub nsw i32 0, %368
  %370 = call i32 @be32_add_cpu(i8** %363, i32 %369)
  %371 = load i32*, i32** %28, align 8
  %372 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %373 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %374 = bitcast %struct.TYPE_48__* %373 to i8*
  %375 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %376 = bitcast %struct.TYPE_53__* %375 to i8*
  %377 = ptrtoint i8* %374 to i64
  %378 = ptrtoint i8* %376 to i64
  %379 = sub i64 %377, %378
  %380 = trunc i64 %379 to i32
  %381 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %381, i32 0, i32 0
  %383 = load i8*, i8** %382, align 8
  %384 = call i32 @be32_to_cpu(i8* %383)
  %385 = sub nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = mul i64 %386, 16
  %388 = trunc i64 %387 to i32
  %389 = call i32 @xfs_dir2_data_make_free(i32* %371, %struct.TYPE_43__* %372, i32 %380, i32 %388, i32* %25, i32* %26)
  %390 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %390, i32 0, i32 0
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 @be32_to_cpu(i8* %392)
  %394 = sub nsw i32 %393, 1
  %395 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %396 = sext i32 %394 to i64
  %397 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %395, i64 %396
  store %struct.TYPE_48__* %397, %struct.TYPE_48__** %6, align 8
  %398 = call i8* @cpu_to_be32(i32 1)
  %399 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %399, i32 0, i32 0
  store i8* %398, i8** %400, align 8
  %401 = load i32, i32* %26, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %346
  %404 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %405 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %406 = bitcast %struct.TYPE_53__* %405 to i32*
  %407 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_46__* %404, i32* %406, i32* %25)
  store i32 0, i32* %26, align 4
  br label %408

408:                                              ; preds = %403, %346
  br label %420

409:                                              ; preds = %291
  %410 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %410, i32 0, i32 0
  %412 = load i8*, i8** %411, align 8
  %413 = icmp ne i8* %412, null
  br i1 %413, label %414, label %419

414:                                              ; preds = %409
  %415 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %415, i32 0, i32 1
  %417 = load i8*, i8** %416, align 8
  %418 = call i32 @be32_to_cpu(i8* %417)
  store i32 %418, i32* %19, align 4
  store i32 -1, i32* %18, align 4
  br label %419

419:                                              ; preds = %414, %409
  br label %420

420:                                              ; preds = %419, %408
  store i32 0, i32* %21, align 4
  %421 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %421, i32 0, i32 1
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @be32_to_cpu(i8* %423)
  %425 = sub nsw i32 %424, 1
  store i32 %425, i32* %16, align 4
  br label %426

426:                                              ; preds = %459, %420
  %427 = load i32, i32* %21, align 4
  %428 = load i32, i32* %16, align 4
  %429 = icmp sle i32 %427, %428
  br i1 %429, label %430, label %460

430:                                              ; preds = %426
  %431 = load i32, i32* %21, align 4
  %432 = load i32, i32* %16, align 4
  %433 = add nsw i32 %431, %432
  %434 = ashr i32 %433, 1
  store i32 %434, i32* %23, align 4
  %435 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %436 = load i32, i32* %23, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %438, i32 0, i32 1
  %440 = load i8*, i8** %439, align 8
  %441 = call i32 @be32_to_cpu(i8* %440)
  store i32 %441, i32* %15, align 4
  %442 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = icmp eq i32 %441, %444
  br i1 %445, label %446, label %447

446:                                              ; preds = %430
  br label %460

447:                                              ; preds = %430
  %448 = load i32, i32* %15, align 4
  %449 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = icmp slt i32 %448, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %447
  %454 = load i32, i32* %23, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %21, align 4
  br label %459

456:                                              ; preds = %447
  %457 = load i32, i32* %23, align 4
  %458 = sub nsw i32 %457, 1
  store i32 %458, i32* %16, align 4
  br label %459

459:                                              ; preds = %456, %453
  br label %426

460:                                              ; preds = %446, %426
  br label %461

461:                                              ; preds = %478, %460
  %462 = load i32, i32* %23, align 4
  %463 = icmp sge i32 %462, 0
  br i1 %463, label %464, label %476

464:                                              ; preds = %461
  %465 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %466 = load i32, i32* %23, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %468, i32 0, i32 1
  %470 = load i8*, i8** %469, align 8
  %471 = call i32 @be32_to_cpu(i8* %470)
  %472 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 8
  %475 = icmp sge i32 %471, %474
  br label %476

476:                                              ; preds = %464, %461
  %477 = phi i1 [ false, %461 ], [ %475, %464 ]
  br i1 %477, label %478, label %481

478:                                              ; preds = %476
  %479 = load i32, i32* %23, align 4
  %480 = add nsw i32 %479, -1
  store i32 %480, i32* %23, align 4
  br label %461

481:                                              ; preds = %476
  %482 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %482, i32 0, i32 0
  %484 = load i8*, i8** %483, align 8
  %485 = icmp ne i8* %484, null
  br i1 %485, label %534, label %486

486:                                              ; preds = %481
  %487 = load i32*, i32** %28, align 8
  %488 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %489 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %490 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %491 = bitcast %struct.TYPE_49__* %490 to i8*
  %492 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %493 = bitcast %struct.TYPE_53__* %492 to i8*
  %494 = ptrtoint i8* %491 to i64
  %495 = ptrtoint i8* %493 to i64
  %496 = sub i64 %494, %495
  %497 = load %struct.TYPE_49__*, %struct.TYPE_49__** %14, align 8
  %498 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = call i32 @be16_to_cpu(i32 %499)
  %501 = sext i32 %500 to i64
  %502 = add nsw i64 %496, %501
  %503 = sub i64 %502, 16
  %504 = trunc i64 %503 to i32
  %505 = call i32 @xfs_dir2_data_use_free(i32* %487, %struct.TYPE_43__* %488, %struct.TYPE_49__* %489, i32 %504, i32 16, i32* %25, i32* %26)
  %506 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %507 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %506, i32 0, i32 1
  %508 = call i32 @be32_add_cpu(i8** %507, i32 1)
  %509 = load i32, i32* %26, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %486
  %512 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %513 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %514 = bitcast %struct.TYPE_53__* %513 to i32*
  %515 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_46__* %512, i32* %514, i32* %25)
  store i32 0, i32* %26, align 4
  br label %516

516:                                              ; preds = %511, %486
  %517 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %517, i32 -1
  store %struct.TYPE_48__* %518, %struct.TYPE_48__** %6, align 8
  %519 = load i32, i32* %23, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %23, align 4
  %521 = load i32, i32* %23, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %532

523:                                              ; preds = %516
  %524 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %525 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %526 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %525, i64 1
  %527 = load i32, i32* %23, align 4
  %528 = sext i32 %527 to i64
  %529 = mul i64 %528, 16
  %530 = trunc i64 %529 to i32
  %531 = call i32 @memmove(%struct.TYPE_48__* %524, %struct.TYPE_48__* %526, i32 %530)
  br label %532

532:                                              ; preds = %523, %516
  store i32 0, i32* %19, align 4
  %533 = load i32, i32* %23, align 4
  store i32 %533, i32* %18, align 4
  br label %684

534:                                              ; preds = %481
  %535 = load i32, i32* %23, align 4
  store i32 %535, i32* %22, align 4
  br label %536

536:                                              ; preds = %552, %534
  %537 = load i32, i32* %22, align 4
  %538 = icmp sge i32 %537, 0
  br i1 %538, label %539, label %549

539:                                              ; preds = %536
  %540 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %541 = load i32, i32* %22, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %540, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %543, i32 0, i32 0
  %545 = load i8*, i8** %544, align 8
  %546 = call i32 @be32_to_cpu(i8* %545)
  %547 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %548 = icmp ne i32 %546, %547
  br label %549

549:                                              ; preds = %539, %536
  %550 = phi i1 [ false, %536 ], [ %548, %539 ]
  br i1 %550, label %551, label %555

551:                                              ; preds = %549
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %22, align 4
  %554 = add nsw i32 %553, -1
  store i32 %554, i32* %22, align 4
  br label %536

555:                                              ; preds = %549
  %556 = load i32, i32* %23, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %17, align 4
  br label %558

558:                                              ; preds = %591, %555
  %559 = load i32, i32* %17, align 4
  %560 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %561 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %560, i32 0, i32 1
  %562 = load i8*, i8** %561, align 8
  %563 = call i32 @be32_to_cpu(i8* %562)
  %564 = icmp slt i32 %559, %563
  br i1 %564, label %565, label %588

565:                                              ; preds = %558
  %566 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %567 = load i32, i32* %17, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %566, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %569, i32 0, i32 0
  %571 = load i8*, i8** %570, align 8
  %572 = call i32 @be32_to_cpu(i8* %571)
  %573 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %574 = icmp ne i32 %572, %573
  br i1 %574, label %575, label %588

575:                                              ; preds = %565
  %576 = load i32, i32* %22, align 4
  %577 = icmp slt i32 %576, 0
  br i1 %577, label %586, label %578

578:                                              ; preds = %575
  %579 = load i32, i32* %23, align 4
  %580 = load i32, i32* %22, align 4
  %581 = sub nsw i32 %579, %580
  %582 = load i32, i32* %17, align 4
  %583 = load i32, i32* %23, align 4
  %584 = sub nsw i32 %582, %583
  %585 = icmp sgt i32 %581, %584
  br label %586

586:                                              ; preds = %578, %575
  %587 = phi i1 [ true, %575 ], [ %585, %578 ]
  br label %588

588:                                              ; preds = %586, %565, %558
  %589 = phi i1 [ false, %565 ], [ false, %558 ], [ %587, %586 ]
  br i1 %589, label %590, label %594

590:                                              ; preds = %588
  br label %591

591:                                              ; preds = %590
  %592 = load i32, i32* %17, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %17, align 4
  br label %558

594:                                              ; preds = %588
  %595 = load i32, i32* %22, align 4
  %596 = icmp sge i32 %595, 0
  br i1 %596, label %597, label %641

597:                                              ; preds = %594
  %598 = load i32, i32* %17, align 4
  %599 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %600 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %599, i32 0, i32 1
  %601 = load i8*, i8** %600, align 8
  %602 = call i32 @be32_to_cpu(i8* %601)
  %603 = icmp eq i32 %598, %602
  br i1 %603, label %612, label %604

604:                                              ; preds = %597
  %605 = load i32, i32* %23, align 4
  %606 = load i32, i32* %22, align 4
  %607 = sub nsw i32 %605, %606
  %608 = load i32, i32* %17, align 4
  %609 = load i32, i32* %23, align 4
  %610 = sub nsw i32 %608, %609
  %611 = icmp sle i32 %607, %610
  br i1 %611, label %612, label %641

612:                                              ; preds = %604, %597
  %613 = load i32, i32* %23, align 4
  %614 = load i32, i32* %22, align 4
  %615 = sub nsw i32 %613, %614
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %634

617:                                              ; preds = %612
  %618 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %619 = load i32, i32* %22, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %618, i64 %620
  %622 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %623 = load i32, i32* %22, align 4
  %624 = add nsw i32 %623, 1
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %622, i64 %625
  %627 = load i32, i32* %23, align 4
  %628 = load i32, i32* %22, align 4
  %629 = sub nsw i32 %627, %628
  %630 = sext i32 %629 to i64
  %631 = mul i64 %630, 16
  %632 = trunc i64 %631 to i32
  %633 = call i32 @memmove(%struct.TYPE_48__* %621, %struct.TYPE_48__* %626, i32 %632)
  br label %634

634:                                              ; preds = %617, %612
  %635 = load i32, i32* %22, align 4
  %636 = load i32, i32* %19, align 4
  %637 = call i32 @MIN(i32 %635, i32 %636)
  store i32 %637, i32* %19, align 4
  %638 = load i32, i32* %23, align 4
  %639 = load i32, i32* %18, align 4
  %640 = call i32 @MAX(i32 %638, i32 %639)
  store i32 %640, i32* %18, align 4
  br label %680

641:                                              ; preds = %604, %594
  %642 = load i32, i32* %17, align 4
  %643 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %644 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %643, i32 0, i32 1
  %645 = load i8*, i8** %644, align 8
  %646 = call i32 @be32_to_cpu(i8* %645)
  %647 = icmp slt i32 %642, %646
  %648 = zext i1 %647 to i32
  %649 = call i32 @ASSERT(i32 %648)
  %650 = load i32, i32* %23, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %23, align 4
  %652 = load i32, i32* %17, align 4
  %653 = load i32, i32* %23, align 4
  %654 = sub nsw i32 %652, %653
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %673

656:                                              ; preds = %641
  %657 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %658 = load i32, i32* %23, align 4
  %659 = add nsw i32 %658, 1
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %657, i64 %660
  %662 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %663 = load i32, i32* %23, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %662, i64 %664
  %666 = load i32, i32* %17, align 4
  %667 = load i32, i32* %23, align 4
  %668 = sub nsw i32 %666, %667
  %669 = sext i32 %668 to i64
  %670 = mul i64 %669, 16
  %671 = trunc i64 %670 to i32
  %672 = call i32 @memmove(%struct.TYPE_48__* %661, %struct.TYPE_48__* %665, i32 %671)
  br label %673

673:                                              ; preds = %656, %641
  %674 = load i32, i32* %23, align 4
  %675 = load i32, i32* %19, align 4
  %676 = call i32 @MIN(i32 %674, i32 %675)
  store i32 %676, i32* %19, align 4
  %677 = load i32, i32* %17, align 4
  %678 = load i32, i32* %18, align 4
  %679 = call i32 @MAX(i32 %677, i32 %678)
  store i32 %679, i32* %18, align 4
  br label %680

680:                                              ; preds = %673, %634
  %681 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %682 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %681, i32 0, i32 0
  %683 = call i32 @be32_add_cpu(i8** %682, i32 -1)
  br label %684

684:                                              ; preds = %680, %532
  %685 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %686 = bitcast %struct.TYPE_49__* %685 to %struct.TYPE_51__*
  store %struct.TYPE_51__* %686, %struct.TYPE_51__** %10, align 8
  %687 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %688 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %687, i32 0, i32 2
  %689 = load i32, i32* %688, align 8
  %690 = call i8* @cpu_to_be32(i32 %689)
  %691 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %692 = load i32, i32* %23, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %691, i64 %693
  %695 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %694, i32 0, i32 1
  store i8* %690, i8** %695, align 8
  %696 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %697 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %698 = bitcast %struct.TYPE_51__* %697 to i8*
  %699 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %700 = bitcast %struct.TYPE_53__* %699 to i8*
  %701 = ptrtoint i8* %698 to i64
  %702 = ptrtoint i8* %700 to i64
  %703 = sub i64 %701, %702
  %704 = trunc i64 %703 to i32
  %705 = call i32 @xfs_dir2_byte_to_dataptr(%struct.TYPE_46__* %696, i32 %704)
  %706 = call i8* @cpu_to_be32(i32 %705)
  %707 = load %struct.TYPE_48__*, %struct.TYPE_48__** %6, align 8
  %708 = load i32, i32* %23, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %707, i64 %709
  %711 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %710, i32 0, i32 0
  store i8* %706, i8** %711, align 8
  %712 = load i32*, i32** %28, align 8
  %713 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %714 = load i32, i32* %19, align 4
  %715 = load i32, i32* %18, align 4
  %716 = call i32 @xfs_dir2_block_log_leaf(i32* %712, %struct.TYPE_43__* %713, i32 %714, i32 %715)
  %717 = load i32*, i32** %28, align 8
  %718 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %719 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %720 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %721 = bitcast %struct.TYPE_49__* %720 to i8*
  %722 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %723 = bitcast %struct.TYPE_53__* %722 to i8*
  %724 = ptrtoint i8* %721 to i64
  %725 = ptrtoint i8* %723 to i64
  %726 = sub i64 %724, %725
  %727 = trunc i64 %726 to i32
  %728 = load i32, i32* %20, align 4
  %729 = call i32 @xfs_dir2_data_use_free(i32* %717, %struct.TYPE_43__* %718, %struct.TYPE_49__* %719, i32 %727, i32 %728, i32* %25, i32* %26)
  %730 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %731 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %730, i32 0, i32 5
  %732 = load i32, i32* %731, align 4
  %733 = call i32 @cpu_to_be64(i32 %732)
  %734 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %735 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %734, i32 0, i32 2
  store i32 %733, i32* %735, align 4
  %736 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %737 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %736, i32 0, i32 3
  %738 = load i32, i32* %737, align 4
  %739 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %740 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %739, i32 0, i32 1
  store i32 %738, i32* %740, align 4
  %741 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %742 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %741, i32 0, i32 0
  %743 = load i32, i32* %742, align 4
  %744 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %745 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %744, i32 0, i32 4
  %746 = load i32, i32* %745, align 8
  %747 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  %748 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %747, i32 0, i32 3
  %749 = load i32, i32* %748, align 4
  %750 = call i32 @memcpy(i32 %743, i32 %746, i32 %749)
  %751 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %752 = call i32* @xfs_dir2_data_entry_tag_p(%struct.TYPE_51__* %751)
  store i32* %752, i32** %27, align 8
  %753 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %754 = bitcast %struct.TYPE_51__* %753 to i8*
  %755 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %756 = bitcast %struct.TYPE_53__* %755 to i8*
  %757 = ptrtoint i8* %754 to i64
  %758 = ptrtoint i8* %756 to i64
  %759 = sub i64 %757, %758
  %760 = trunc i64 %759 to i32
  %761 = call i32 @cpu_to_be16(i32 %760)
  %762 = load i32*, i32** %27, align 8
  store i32 %761, i32* %762, align 4
  %763 = load i32, i32* %26, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %770

765:                                              ; preds = %684
  %766 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %767 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %768 = bitcast %struct.TYPE_53__* %767 to i32*
  %769 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_46__* %766, i32* %768, i32* %25)
  br label %770

770:                                              ; preds = %765, %684
  %771 = load i32, i32* %25, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %777

773:                                              ; preds = %770
  %774 = load i32*, i32** %28, align 8
  %775 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %776 = call i32 @xfs_dir2_data_log_header(i32* %774, %struct.TYPE_43__* %775)
  br label %777

777:                                              ; preds = %773, %770
  %778 = load i32*, i32** %28, align 8
  %779 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %780 = call i32 @xfs_dir2_block_log_tail(i32* %778, %struct.TYPE_43__* %779)
  %781 = load i32*, i32** %28, align 8
  %782 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %783 = load %struct.TYPE_51__*, %struct.TYPE_51__** %10, align 8
  %784 = call i32 @xfs_dir2_data_log_entry(i32* %781, %struct.TYPE_43__* %782, %struct.TYPE_51__* %783)
  %785 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %786 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %787 = call i32 @xfs_dir2_data_check(%struct.TYPE_47__* %785, %struct.TYPE_43__* %786)
  %788 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %789 = call i32 @xfs_da_buf_done(%struct.TYPE_43__* %788)
  store i32 0, i32* %2, align 4
  br label %790

790:                                              ; preds = %777, %290, %280, %278, %267, %70, %50
  %791 = load i32, i32* %2, align 4
  ret i32 %791
}

declare dso_local i32 @trace_xfs_dir2_block_addname(%struct.TYPE_44__*) #1

declare dso_local i32 @xfs_da_read_buf(i32*, %struct.TYPE_47__*, i32, i32, %struct.TYPE_43__**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @XFS_CORRUPTION_ERROR(i8*, i32, %struct.TYPE_46__*, %struct.TYPE_53__*) #1

declare dso_local i32 @xfs_da_brelse(i32*, %struct.TYPE_43__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_dir2_data_entsize(i32) #1

declare dso_local %struct.TYPE_52__* @xfs_dir2_block_tail_p(%struct.TYPE_46__*, %struct.TYPE_53__*) #1

declare dso_local %struct.TYPE_48__* @xfs_dir2_block_leaf_p(%struct.TYPE_52__*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_block_to_leaf(%struct.TYPE_44__*, %struct.TYPE_43__*) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_43__*) #1

declare dso_local i32 @xfs_dir2_leaf_addname(%struct.TYPE_44__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @be32_add_cpu(i8**, i32) #1

declare dso_local i32 @xfs_dir2_data_make_free(i32*, %struct.TYPE_43__*, i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_46__*, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_use_free(i32*, %struct.TYPE_43__*, %struct.TYPE_49__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @memmove(%struct.TYPE_48__*, %struct.TYPE_48__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @xfs_dir2_byte_to_dataptr(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @xfs_dir2_block_log_leaf(i32*, %struct.TYPE_43__*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32* @xfs_dir2_data_entry_tag_p(%struct.TYPE_51__*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_data_log_header(i32*, %struct.TYPE_43__*) #1

declare dso_local i32 @xfs_dir2_block_log_tail(i32*, %struct.TYPE_43__*) #1

declare dso_local i32 @xfs_dir2_data_log_entry(i32*, %struct.TYPE_43__*, %struct.TYPE_51__*) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_47__*, %struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
