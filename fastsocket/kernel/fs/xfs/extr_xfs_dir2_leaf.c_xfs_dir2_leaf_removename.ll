; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_removename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i64, i32*, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i64, i64 }
%struct.TYPE_48__ = type { %struct.TYPE_44__, %struct.TYPE_49__* }
%struct.TYPE_44__ = type { %struct.TYPE_43__*, i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_48__* }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_47__ = type { i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@NULLDATAOFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_removename(%struct.TYPE_42__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_42__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_48__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca %struct.TYPE_50__*, align 8
  %9 = alloca %struct.TYPE_46__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_41__*, align 8
  %14 = alloca %struct.TYPE_48__*, align 8
  %15 = alloca %struct.TYPE_49__*, align 8
  %16 = alloca %struct.TYPE_47__*, align 8
  %17 = alloca %struct.TYPE_45__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %3, align 8
  %22 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %23 = call i32 @trace_xfs_dir2_leaf_removename(%struct.TYPE_42__* %22)
  %24 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %25 = call i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_42__* %24, %struct.TYPE_41__** %13, i32* %12, %struct.TYPE_41__** %7)
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %2, align 4
  br label %306

29:                                               ; preds = %1
  %30 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_46__*, %struct.TYPE_46__** %31, align 8
  store %struct.TYPE_46__* %32, %struct.TYPE_46__** %9, align 8
  %33 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %21, align 8
  %36 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_45__*, %struct.TYPE_45__** %37, align 8
  store %struct.TYPE_45__* %38, %struct.TYPE_45__** %17, align 8
  %39 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_48__*, %struct.TYPE_48__** %40, align 8
  store %struct.TYPE_48__* %41, %struct.TYPE_48__** %14, align 8
  %42 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_48__*, %struct.TYPE_48__** %43, align 8
  store %struct.TYPE_48__* %44, %struct.TYPE_48__** %5, align 8
  %45 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %46 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %47 = call i32 @xfs_dir2_data_check(%struct.TYPE_46__* %45, %struct.TYPE_41__* %46)
  %48 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_49__*, %struct.TYPE_49__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %50, i64 %52
  store %struct.TYPE_49__* %53, %struct.TYPE_49__** %15, align 8
  %54 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %55 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = call i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_45__* %54, i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %61 = bitcast %struct.TYPE_48__* %60 to i8*
  %62 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %63 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be32_to_cpu(i32 %65)
  %67 = call i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_45__* %62, i32 %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %61, i64 %68
  %70 = bitcast i8* %69 to %struct.TYPE_50__*
  store %struct.TYPE_50__* %70, %struct.TYPE_50__** %8, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %71 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_43__*, %struct.TYPE_43__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @be16_to_cpu(i32 %77)
  store i64 %78, i64* %20, align 8
  %79 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %80 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %81 = call %struct.TYPE_47__* @xfs_dir2_leaf_tail_p(%struct.TYPE_45__* %79, %struct.TYPE_48__* %80)
  store %struct.TYPE_47__* %81, %struct.TYPE_47__** %16, align 8
  %82 = load %struct.TYPE_47__*, %struct.TYPE_47__** %16, align 8
  %83 = call i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_47__* %82)
  store i32* %83, i32** %4, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be16_to_cpu(i32 %87)
  %89 = load i64, i64* %20, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @ASSERT(i32 %91)
  %93 = load i32*, i32** %21, align 8
  %94 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %95 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %96 = bitcast %struct.TYPE_50__* %95 to i8*
  %97 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %98 = bitcast %struct.TYPE_48__* %97 to i8*
  %99 = ptrtoint i8* %96 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @xfs_dir2_data_entsize(i32 %105)
  %107 = call i32 @xfs_dir2_data_make_free(i32* %93, %struct.TYPE_41__* %94, i32 %102, i32 %106, i32* %18, i32* %19)
  %108 = load %struct.TYPE_48__*, %struct.TYPE_48__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %109, i32 0, i32 1
  %111 = call i32 @be16_add_cpu(i32* %110, i32 1)
  %112 = load i32*, i32** %21, align 8
  %113 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %114 = call i32 @xfs_dir2_leaf_log_header(i32* %112, %struct.TYPE_41__* %113)
  %115 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %116 = call i32 @cpu_to_be32(i32 %115)
  %117 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** %21, align 8
  %120 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @xfs_dir2_leaf_log_ents(i32* %119, %struct.TYPE_41__* %120, i32 %121, i32 %122)
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %29
  %127 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %128 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %129 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_45__* %127, %struct.TYPE_48__* %128, i32* %18)
  br label %130

130:                                              ; preds = %126, %29
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32*, i32** %21, align 8
  %135 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %136 = call i32 @xfs_dir2_data_log_header(i32* %134, %struct.TYPE_41__* %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_43__*, %struct.TYPE_43__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @be16_to_cpu(i32 %144)
  %146 = load i64, i64* %20, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %137
  %149 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_43__*, %struct.TYPE_43__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %155, i32* %158, align 4
  %159 = load i32*, i32** %21, align 8
  %160 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %6, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @xfs_dir2_leaf_log_bests(i32* %159, %struct.TYPE_41__* %160, i64 %161, i32 %163)
  br label %165

165:                                              ; preds = %148, %137
  %166 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %167 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %168 = call i32 @xfs_dir2_data_check(%struct.TYPE_46__* %166, %struct.TYPE_41__* %167)
  %169 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_43__*, %struct.TYPE_43__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @be16_to_cpu(i32 %175)
  %177 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %179, 16
  %181 = icmp eq i64 %176, %180
  br i1 %181, label %182, label %285

182:                                              ; preds = %165
  %183 = load i64, i64* %6, align 8
  %184 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %183, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @ASSERT(i32 %188)
  %190 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %191 = load i64, i64* %6, align 8
  %192 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %193 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_42__* %190, i64 %191, %struct.TYPE_41__* %192)
  store i32 %193, i32* %10, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %182
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @ENOSPC, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %206 = call i32 @xfs_da_buf_done(%struct.TYPE_41__* %205)
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %204, %199, %195
  %208 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %209 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %210 = call i32 @xfs_dir2_leaf_check(%struct.TYPE_46__* %208, %struct.TYPE_41__* %209)
  %211 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %212 = call i32 @xfs_da_buf_done(%struct.TYPE_41__* %211)
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %2, align 4
  br label %306

214:                                              ; preds = %182
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %7, align 8
  %215 = load i64, i64* %6, align 8
  %216 = load %struct.TYPE_47__*, %struct.TYPE_47__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @be32_to_cpu(i32 %218)
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = icmp eq i64 %215, %221
  br i1 %222, label %223, label %278

223:                                              ; preds = %214
  %224 = load i64, i64* %6, align 8
  %225 = sub i64 %224, 1
  store i64 %225, i64* %11, align 8
  br label %226

226:                                              ; preds = %239, %223
  %227 = load i64, i64* %11, align 8
  %228 = icmp ugt i64 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %226
  %230 = load i32*, i32** %4, align 8
  %231 = load i64, i64* %11, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @be16_to_cpu(i32 %233)
  %235 = load i64, i64* @NULLDATAOFF, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  br label %242

238:                                              ; preds = %229
  br label %239

239:                                              ; preds = %238
  %240 = load i64, i64* %11, align 8
  %241 = add i64 %240, -1
  store i64 %241, i64* %11, align 8
  br label %226

242:                                              ; preds = %237, %226
  %243 = load i32*, i32** %4, align 8
  %244 = load i64, i64* %6, align 8
  %245 = load i64, i64* %11, align 8
  %246 = sub i64 %244, %245
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32*, i32** %4, align 8
  %249 = load %struct.TYPE_47__*, %struct.TYPE_47__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @be32_to_cpu(i32 %251)
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* %6, align 8
  %255 = load i64, i64* %11, align 8
  %256 = sub i64 %254, %255
  %257 = sub i64 %253, %256
  %258 = mul i64 %257, 4
  %259 = call i32 @memmove(i32* %247, i32* %248, i64 %258)
  %260 = load %struct.TYPE_47__*, %struct.TYPE_47__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %260, i32 0, i32 0
  %262 = load i64, i64* %6, align 8
  %263 = load i64, i64* %11, align 8
  %264 = sub i64 %262, %263
  %265 = sub i64 0, %264
  %266 = call i32 @be32_add_cpu(i32* %261, i64 %265)
  %267 = load i32*, i32** %21, align 8
  %268 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %269 = call i32 @xfs_dir2_leaf_log_tail(i32* %267, %struct.TYPE_41__* %268)
  %270 = load i32*, i32** %21, align 8
  %271 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %272 = load %struct.TYPE_47__*, %struct.TYPE_47__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @be32_to_cpu(i32 %274)
  %276 = sub nsw i32 %275, 1
  %277 = call i32 @xfs_dir2_leaf_log_bests(i32* %270, %struct.TYPE_41__* %271, i64 0, i32 %276)
  br label %284

278:                                              ; preds = %214
  %279 = load i64, i64* @NULLDATAOFF, align 8
  %280 = call i32 @cpu_to_be16(i64 %279)
  %281 = load i32*, i32** %4, align 8
  %282 = load i64, i64* %6, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32 %280, i32* %283, align 4
  br label %284

284:                                              ; preds = %278, %242
  br label %298

285:                                              ; preds = %165
  %286 = load i64, i64* %6, align 8
  %287 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %286, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %285
  %292 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %293 = icmp ne %struct.TYPE_41__* %292, null
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %296 = call i32 @xfs_da_buf_done(%struct.TYPE_41__* %295)
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %7, align 8
  br label %297

297:                                              ; preds = %294, %291, %285
  br label %298

298:                                              ; preds = %297, %284
  %299 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %300 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %301 = call i32 @xfs_dir2_leaf_check(%struct.TYPE_46__* %299, %struct.TYPE_41__* %300)
  %302 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %303 = load %struct.TYPE_41__*, %struct.TYPE_41__** %13, align 8
  %304 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %305 = call i32 @xfs_dir2_leaf_to_block(%struct.TYPE_42__* %302, %struct.TYPE_41__* %303, %struct.TYPE_41__* %304)
  store i32 %305, i32* %2, align 4
  br label %306

306:                                              ; preds = %298, %207, %27
  %307 = load i32, i32* %2, align 4
  ret i32 %307
}

declare dso_local i32 @trace_xfs_dir2_leaf_removename(%struct.TYPE_42__*) #1

declare dso_local i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_42__*, %struct.TYPE_41__**, i32*, %struct.TYPE_41__**) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_46__*, %struct.TYPE_41__*) #1

declare dso_local i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_45__*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_45__*, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.TYPE_47__* @xfs_dir2_leaf_tail_p(%struct.TYPE_45__*, %struct.TYPE_48__*) #1

declare dso_local i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_47__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_data_make_free(i32*, %struct.TYPE_41__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_entsize(i32) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_header(i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_leaf_log_ents(i32*, %struct.TYPE_41__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_45__*, %struct.TYPE_48__*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @xfs_dir2_leaf_log_bests(i32*, %struct.TYPE_41__*, i64, i32) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_42__*, i64, %struct.TYPE_41__*) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_41__*) #1

declare dso_local i32 @xfs_dir2_leaf_check(%struct.TYPE_46__*, %struct.TYPE_41__*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @be32_add_cpu(i32*, i64) #1

declare dso_local i32 @xfs_dir2_leaf_log_tail(i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @xfs_dir2_leaf_to_block(%struct.TYPE_42__*, %struct.TYPE_41__*, %struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
