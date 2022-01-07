; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i64, i32*, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { %struct.TYPE_49__* }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_51__* }
%struct.TYPE_51__ = type { %struct.TYPE_48__, i8**, %struct.TYPE_52__* }
%struct.TYPE_48__ = type { i8*, i8*, i32, i8*, %struct.TYPE_47__*, i8*, i8*, %struct.TYPE_46__ }
%struct.TYPE_47__ = type { i8* }
%struct.TYPE_46__ = type { i8* }
%struct.TYPE_52__ = type { i8* }
%struct.TYPE_44__ = type { i64, i32, %struct.TYPE_43__* }
%struct.TYPE_42__ = type { i32 }

@XFS_DIR2_LEAFN_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_MAGIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@NULLDATAOFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_45__*, %struct.TYPE_43__*, i32, %struct.TYPE_44__*, i32*)* @xfs_dir2_leafn_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_leafn_remove(%struct.TYPE_45__* %0, %struct.TYPE_43__* %1, i32 %2, %struct.TYPE_44__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_45__*, align 8
  %8 = alloca %struct.TYPE_43__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_51__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_43__*, align 8
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca %struct.TYPE_50__*, align 8
  %17 = alloca %struct.TYPE_51__*, align 8
  %18 = alloca %struct.TYPE_52__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_49__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_43__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_51__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %7, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_44__* %3, %struct.TYPE_44__** %10, align 8
  store i32* %4, i32** %11, align 8
  %32 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @trace_xfs_dir2_leafn_remove(%struct.TYPE_45__* %32, i32 %33)
  %35 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_50__*, %struct.TYPE_50__** %36, align 8
  store %struct.TYPE_50__* %37, %struct.TYPE_50__** %16, align 8
  %38 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %24, align 8
  %41 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_49__*, %struct.TYPE_49__** %42, align 8
  store %struct.TYPE_49__* %43, %struct.TYPE_49__** %21, align 8
  %44 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_51__*, %struct.TYPE_51__** %45, align 8
  store %struct.TYPE_51__* %46, %struct.TYPE_51__** %17, align 8
  %47 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @be16_to_cpu(i8* %51)
  %53 = load i32, i32* @XFS_DIR2_LEAFN_MAGIC, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_52__*, %struct.TYPE_52__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %59, i64 %61
  store %struct.TYPE_52__* %62, %struct.TYPE_52__** %18, align 8
  %63 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %64 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @be32_to_cpu(i8* %66)
  %68 = call i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_49__* %63, i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %77 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @be32_to_cpu(i8* %79)
  %81 = call i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_49__* %76, i32 %80)
  store i32 %81, i32* %20, align 4
  %82 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %20, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %90, i32 0, i32 0
  %92 = call i32 @be16_add_cpu(i8** %91, i32 1)
  %93 = load i32*, i32** %24, align 8
  %94 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %95 = call i32 @xfs_dir2_leaf_log_header(i32* %93, %struct.TYPE_43__* %94)
  %96 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %97 = call i8* @cpu_to_be32(i32 %96)
  %98 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load i32*, i32** %24, align 8
  %101 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @xfs_dir2_leaf_log_ents(i32* %100, %struct.TYPE_43__* %101, i32 %102, i32 %103)
  %105 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_43__*, %struct.TYPE_43__** %106, align 8
  store %struct.TYPE_43__* %107, %struct.TYPE_43__** %14, align 8
  %108 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_51__*, %struct.TYPE_51__** %109, align 8
  store %struct.TYPE_51__* %110, %struct.TYPE_51__** %12, align 8
  %111 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %112 = bitcast %struct.TYPE_51__* %111 to i8*
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = bitcast i8* %115 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %116, %struct.TYPE_42__** %15, align 8
  %117 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_47__*, %struct.TYPE_47__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @be16_to_cpu(i8* %123)
  store i32 %124, i32* %19, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  %125 = load i32*, i32** %24, align 8
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %127 = load i32, i32* %20, align 4
  %128 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @xfs_dir2_data_entsize(i32 %130)
  %132 = call i32 @xfs_dir2_data_make_free(i32* %125, %struct.TYPE_43__* %126, i32 %127, i32 %131, i32* %22, i32* %23)
  %133 = load i32, i32* %23, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %5
  %136 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %137 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %138 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_49__* %136, %struct.TYPE_51__* %137, i32* %22)
  br label %139

139:                                              ; preds = %135, %5
  %140 = load i32, i32* %22, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32*, i32** %24, align 8
  %144 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %145 = call i32 @xfs_dir2_data_log_header(i32* %143, %struct.TYPE_43__* %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %148 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %149 = call i32 @xfs_dir2_data_check(%struct.TYPE_50__* %147, %struct.TYPE_43__* %148)
  %150 = load i32, i32* %19, align 4
  %151 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_47__*, %struct.TYPE_47__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @be16_to_cpu(i8* %157)
  %159 = icmp slt i32 %150, %158
  br i1 %159, label %160, label %359

160:                                              ; preds = %146
  %161 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %162 = load i64, i64* %13, align 8
  %163 = call i64 @xfs_dir2_db_to_fdb(%struct.TYPE_49__* %161, i64 %162)
  store i64 %163, i64* %27, align 8
  %164 = load i32*, i32** %24, align 8
  %165 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %166 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %167 = load i64, i64* %27, align 8
  %168 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_49__* %166, i64 %167)
  %169 = load i32, i32* @XFS_DATA_FORK, align 4
  %170 = call i32 @xfs_da_read_buf(i32* %164, %struct.TYPE_50__* %165, i32 %168, i32 -1, %struct.TYPE_43__** %26, i32 %169)
  store i32 %170, i32* %25, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %160
  %173 = load i32, i32* %25, align 4
  store i32 %173, i32* %6, align 4
  br label %382

174:                                              ; preds = %160
  %175 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %176 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_51__*, %struct.TYPE_51__** %176, align 8
  store %struct.TYPE_51__* %177, %struct.TYPE_51__** %29, align 8
  %178 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %179 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %179, i32 0, i32 6
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @be32_to_cpu(i8* %181)
  %183 = load i32, i32* @XFS_DIR2_FREE_MAGIC, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @ASSERT(i32 %185)
  %187 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %188 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %188, i32 0, i32 5
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @be32_to_cpu(i8* %190)
  %192 = sext i32 %191 to i64
  %193 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %194 = call i64 @XFS_DIR2_MAX_FREE_BESTS(%struct.TYPE_49__* %193)
  %195 = load i64, i64* %27, align 8
  %196 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %197 = call i64 @XFS_DIR2_FREE_FIRSTDB(%struct.TYPE_49__* %196)
  %198 = sub nsw i64 %195, %197
  %199 = mul nsw i64 %194, %198
  %200 = icmp eq i64 %192, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @ASSERT(i32 %201)
  %203 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %204 = load i64, i64* %13, align 8
  %205 = call i32 @xfs_dir2_db_to_fdindex(%struct.TYPE_49__* %203, i64 %204)
  store i32 %205, i32* %28, align 4
  %206 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_47__*, %struct.TYPE_47__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @be16_to_cpu(i8* %212)
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %216 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, 64
  %219 = icmp eq i32 %214, %218
  br i1 %219, label %220, label %246

220:                                              ; preds = %174
  %221 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %222 = load i64, i64* %13, align 8
  %223 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %224 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_45__* %221, i64 %222, %struct.TYPE_43__* %223)
  store i32 %224, i32* %25, align 4
  %225 = load i32, i32* %25, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %220
  %228 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %228, i32 0, i32 2
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %229, align 8
  store %struct.TYPE_51__* null, %struct.TYPE_51__** %12, align 8
  br label %245

230:                                              ; preds = %220
  %231 = load i32, i32* %25, align 4
  %232 = load i32, i32* @ENOSPC, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load %struct.TYPE_43__*, %struct.TYPE_43__** %14, align 8
  %241 = call i32 @xfs_da_buf_done(%struct.TYPE_43__* %240)
  br label %244

242:                                              ; preds = %234, %230
  %243 = load i32, i32* %25, align 4
  store i32 %243, i32* %6, align 4
  br label %382

244:                                              ; preds = %239
  br label %245

245:                                              ; preds = %244, %227
  br label %246

246:                                              ; preds = %245, %174
  %247 = load %struct.TYPE_51__*, %struct.TYPE_51__** %12, align 8
  %248 = icmp eq %struct.TYPE_51__* %247, null
  br i1 %248, label %249, label %334

249:                                              ; preds = %246
  %250 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %251 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %251, i32 0, i32 2
  %253 = call i32 @be32_add_cpu(i32* %252, i32 -1)
  %254 = load i32*, i32** %24, align 8
  %255 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %256 = call i32 @xfs_dir2_free_log_header(i32* %254, %struct.TYPE_43__* %255)
  %257 = load i32, i32* %28, align 4
  %258 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %259 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %259, i32 0, i32 3
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @be32_to_cpu(i8* %261)
  %263 = sub nsw i32 %262, 1
  %264 = icmp eq i32 %257, %263
  br i1 %264, label %265, label %296

265:                                              ; preds = %249
  %266 = load i32, i32* %28, align 4
  %267 = sub nsw i32 %266, 1
  store i32 %267, i32* %31, align 4
  br label %268

268:                                              ; preds = %286, %265
  %269 = load i32, i32* %31, align 4
  %270 = icmp sge i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %268
  %272 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %273 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %272, i32 0, i32 1
  %274 = load i8**, i8*** %273, align 8
  %275 = load i32, i32* %31, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @be16_to_cpu(i8* %278)
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* @NULLDATAOFF, align 8
  %282 = icmp eq i64 %280, %281
  br label %283

283:                                              ; preds = %271, %268
  %284 = phi i1 [ false, %268 ], [ %282, %271 ]
  br i1 %284, label %285, label %289

285:                                              ; preds = %283
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %31, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %31, align 4
  br label %268

289:                                              ; preds = %283
  %290 = load i32, i32* %31, align 4
  %291 = add nsw i32 %290, 1
  %292 = call i8* @cpu_to_be32(i32 %291)
  %293 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %294 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %294, i32 0, i32 3
  store i8* %292, i8** %295, align 8
  store i32 0, i32* %30, align 4
  br label %306

296:                                              ; preds = %249
  %297 = load i64, i64* @NULLDATAOFF, align 8
  %298 = trunc i64 %297 to i32
  %299 = call i8* @cpu_to_be16(i32 %298)
  %300 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %301 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %300, i32 0, i32 1
  %302 = load i8**, i8*** %301, align 8
  %303 = load i32, i32* %28, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %302, i64 %304
  store i8* %299, i8** %305, align 8
  store i32 1, i32* %30, align 4
  br label %306

306:                                              ; preds = %296, %289
  %307 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %308 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %333, label %312

312:                                              ; preds = %306
  %313 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %314 = load i64, i64* %27, align 8
  %315 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %316 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_45__* %313, i64 %314, %struct.TYPE_43__* %315)
  store i32 %316, i32* %25, align 4
  %317 = load i32, i32* %25, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %26, align 8
  store i32 0, i32* %30, align 4
  br label %332

320:                                              ; preds = %312
  %321 = load i32, i32* %25, align 4
  %322 = load i32, i32* @ENOSPC, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %329, label %324

324:                                              ; preds = %320
  %325 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324, %320
  %330 = load i32, i32* %25, align 4
  store i32 %330, i32* %6, align 4
  br label %382

331:                                              ; preds = %324
  br label %332

332:                                              ; preds = %331, %319
  br label %333

333:                                              ; preds = %332, %306
  br label %343

334:                                              ; preds = %246
  %335 = load i32, i32* %19, align 4
  %336 = call i8* @cpu_to_be16(i32 %335)
  %337 = load %struct.TYPE_51__*, %struct.TYPE_51__** %29, align 8
  %338 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %337, i32 0, i32 1
  %339 = load i8**, i8*** %338, align 8
  %340 = load i32, i32* %28, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  store i8* %336, i8** %342, align 8
  store i32 1, i32* %30, align 4
  br label %343

343:                                              ; preds = %334, %333
  %344 = load i32, i32* %30, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load i32*, i32** %24, align 8
  %348 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %349 = load i32, i32* %28, align 4
  %350 = load i32, i32* %28, align 4
  %351 = call i32 @xfs_dir2_free_log_bests(i32* %347, %struct.TYPE_43__* %348, i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %346, %343
  %353 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %354 = icmp ne %struct.TYPE_43__* %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load %struct.TYPE_43__*, %struct.TYPE_43__** %26, align 8
  %357 = call i32 @xfs_da_buf_done(%struct.TYPE_43__* %356)
  br label %358

358:                                              ; preds = %355, %352
  br label %359

359:                                              ; preds = %358, %146
  %360 = load %struct.TYPE_50__*, %struct.TYPE_50__** %16, align 8
  %361 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %362 = call i32 @xfs_dir2_leafn_check(%struct.TYPE_50__* %360, %struct.TYPE_43__* %361)
  %363 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %364 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %364, i32 0, i32 1
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 @be16_to_cpu(i8* %366)
  %368 = load %struct.TYPE_51__*, %struct.TYPE_51__** %17, align 8
  %369 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %369, i32 0, i32 0
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 @be16_to_cpu(i8* %371)
  %373 = sub nsw i32 %367, %372
  %374 = mul nsw i32 8, %373
  %375 = add nsw i32 64, %374
  %376 = load %struct.TYPE_49__*, %struct.TYPE_49__** %21, align 8
  %377 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = icmp slt i32 %375, %378
  %380 = zext i1 %379 to i32
  %381 = load i32*, i32** %11, align 8
  store i32 %380, i32* %381, align 4
  store i32 0, i32* %6, align 4
  br label %382

382:                                              ; preds = %359, %329, %242, %172
  %383 = load i32, i32* %6, align 4
  ret i32 %383
}

declare dso_local i32 @trace_xfs_dir2_leafn_remove(%struct.TYPE_45__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @be16_add_cpu(i8**, i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_header(i32*, %struct.TYPE_43__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_ents(i32*, %struct.TYPE_43__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_data_make_free(i32*, %struct.TYPE_43__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_entsize(i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_49__*, %struct.TYPE_51__*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(i32*, %struct.TYPE_43__*) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_50__*, %struct.TYPE_43__*) #1

declare dso_local i64 @xfs_dir2_db_to_fdb(%struct.TYPE_49__*, i64) #1

declare dso_local i32 @xfs_da_read_buf(i32*, %struct.TYPE_50__*, i32, i32, %struct.TYPE_43__**, i32) #1

declare dso_local i32 @xfs_dir2_db_to_da(%struct.TYPE_49__*, i64) #1

declare dso_local i64 @XFS_DIR2_MAX_FREE_BESTS(%struct.TYPE_49__*) #1

declare dso_local i64 @XFS_DIR2_FREE_FIRSTDB(%struct.TYPE_49__*) #1

declare dso_local i32 @xfs_dir2_db_to_fdindex(%struct.TYPE_49__*, i64) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_45__*, i64, %struct.TYPE_43__*) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_43__*) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @xfs_dir2_free_log_header(i32*, %struct.TYPE_43__*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_free_log_bests(i32*, %struct.TYPE_43__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_leafn_check(%struct.TYPE_50__*, %struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
