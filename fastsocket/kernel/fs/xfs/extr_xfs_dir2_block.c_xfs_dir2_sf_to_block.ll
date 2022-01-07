; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_sf_to_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_sf_to_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_63__ = type { i32*, %struct.TYPE_71__* }
%struct.TYPE_71__ = type { i32, %struct.TYPE_67__, %struct.TYPE_66__, %struct.TYPE_70__* }
%struct.TYPE_67__ = type { i64 }
%struct.TYPE_66__ = type { i32, i32, %struct.TYPE_65__ }
%struct.TYPE_65__ = type { i32* }
%struct.TYPE_70__ = type { %struct.TYPE_64__*, i64 }
%struct.TYPE_64__ = type { i32 (%struct.xfs_name*)* }
%struct.xfs_name = type { i32, %struct.TYPE_72__* }
%struct.TYPE_72__ = type { %struct.TYPE_69__ }
%struct.TYPE_69__ = type { i32, i32, i32 }
%struct.TYPE_61__ = type { i64, %struct.TYPE_68__ }
%struct.TYPE_68__ = type { i8* }
%struct.TYPE_57__ = type { i8*, i8* }
%struct.TYPE_62__ = type { %struct.TYPE_61__* }
%struct.TYPE_60__ = type { i8*, i64 }
%struct.TYPE_59__ = type { i32, i8*, i8* }
%struct.TYPE_58__ = type { i8*, i8* }
%struct.TYPE_56__ = type { i32, %struct.TYPE_72__* }

@XFS_IFINLINE = common dso_local global i32 0, align 4
@xfs_dir2_sf_hdr_t = common dso_local global i32 0, align 4
@parent = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_SPACE = common dso_local global i32 0, align 4
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_DOT_OFFSET = common dso_local global i32 0, align 4
@xfs_dir_hash_dot = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_DOTDOT_OFFSET = common dso_local global i32 0, align 4
@xfs_dir_hash_dotdot = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FIRST_OFFSET = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4
@xfs_dir2_block_sort = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_sf_to_block(%struct.TYPE_63__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_63__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_61__*, align 8
  %6 = alloca %struct.TYPE_57__*, align 8
  %7 = alloca %struct.TYPE_62__*, align 8
  %8 = alloca %struct.TYPE_60__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_59__*, align 8
  %12 = alloca %struct.TYPE_71__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_58__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_70__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_56__*, align 8
  %24 = alloca %struct.TYPE_72__*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.xfs_name, align 8
  store %struct.TYPE_63__* %0, %struct.TYPE_63__** %3, align 8
  %28 = load %struct.TYPE_63__*, %struct.TYPE_63__** %3, align 8
  %29 = call i32 @trace_xfs_dir2_sf_to_block(%struct.TYPE_63__* %28)
  %30 = load %struct.TYPE_63__*, %struct.TYPE_63__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_71__*, %struct.TYPE_71__** %31, align 8
  store %struct.TYPE_71__* %32, %struct.TYPE_71__** %12, align 8
  %33 = load %struct.TYPE_63__*, %struct.TYPE_63__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %26, align 8
  %36 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_70__*, %struct.TYPE_70__** %37, align 8
  store %struct.TYPE_70__* %38, %struct.TYPE_70__** %18, align 8
  %39 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XFS_IFINLINE, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @xfs_dir2_sf_hdr_t, align 4
  %51 = load i32, i32* @parent, align 4
  %52 = call i64 @offsetof(i32 %50, i32 %51)
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %1
  %55 = load %struct.TYPE_70__*, %struct.TYPE_70__** %18, align 8
  %56 = call i32 @XFS_FORCED_SHUTDOWN(%struct.TYPE_70__* %55)
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = call i32 @XFS_ERROR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %532

60:                                               ; preds = %1
  %61 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %65, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = bitcast i32* %85 to %struct.TYPE_72__*
  store %struct.TYPE_72__* %86, %struct.TYPE_72__** %24, align 8
  %87 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %92 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @xfs_dir2_sf_hdr_size(i32 %94)
  %96 = icmp sge i64 %90, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @KM_SLEEP, align 4
  %105 = call i8* @kmem_alloc(i32 %103, i32 %104)
  store i8* %105, i8** %9, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @memcpy(i8* %106, %struct.TYPE_72__* %107, i32 %108)
  %110 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 0, %111
  %113 = load i32, i32* @XFS_DATA_FORK, align 4
  %114 = call i32 @xfs_idata_realloc(%struct.TYPE_71__* %110, i32 %112, i32 %113)
  %115 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load i32*, i32** %26, align 8
  %119 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %120 = load i32, i32* @XFS_ILOG_CORE, align 4
  %121 = call i32 @xfs_trans_log_inode(i32* %118, %struct.TYPE_71__* %119, i32 %120)
  %122 = load i8*, i8** %9, align 8
  %123 = bitcast i8* %122 to %struct.TYPE_72__*
  store %struct.TYPE_72__* %123, %struct.TYPE_72__** %24, align 8
  %124 = load %struct.TYPE_63__*, %struct.TYPE_63__** %3, align 8
  %125 = load i32, i32* @XFS_DIR2_DATA_SPACE, align 4
  %126 = call i32 @xfs_dir2_grow_inode(%struct.TYPE_63__* %124, i32 %125, i32* %4)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %60
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @kmem_free(i8* %130)
  %132 = load i32, i32* %16, align 4
  store i32 %132, i32* %2, align 4
  br label %532

133:                                              ; preds = %60
  %134 = load %struct.TYPE_63__*, %struct.TYPE_63__** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @xfs_dir2_data_init(%struct.TYPE_63__* %134, i32 %135, %struct.TYPE_62__** %7)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 @kmem_free(i8* %140)
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %2, align 4
  br label %532

143:                                              ; preds = %133
  %144 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_61__*, %struct.TYPE_61__** %145, align 8
  store %struct.TYPE_61__* %146, %struct.TYPE_61__** %5, align 8
  %147 = load i32, i32* @XFS_DIR2_BLOCK_MAGIC, align 4
  %148 = call i8* @cpu_to_be32(i32 %147)
  %149 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  %152 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %153 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 2
  %157 = mul nsw i32 %156, 16
  %158 = add nsw i32 16, %157
  store i32 %158, i32* %17, align 4
  %159 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to %struct.TYPE_58__*
  store %struct.TYPE_58__* %162, %struct.TYPE_58__** %14, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %163 = load i32*, i32** %26, align 8
  %164 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %165 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %166 = load %struct.TYPE_70__*, %struct.TYPE_70__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = sub nsw i64 %168, %170
  %172 = load i32, i32* %17, align 4
  %173 = call i32 @xfs_dir2_data_use_free(i32* %163, %struct.TYPE_62__* %164, %struct.TYPE_58__* %165, i64 %171, i32 %172, i32* %19, i32* %20)
  %174 = load i32, i32* %20, align 4
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = call i32 @ASSERT(i32 %176)
  %178 = load %struct.TYPE_70__*, %struct.TYPE_70__** %18, align 8
  %179 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %180 = call %struct.TYPE_60__* @xfs_dir2_block_tail_p(%struct.TYPE_70__* %178, %struct.TYPE_61__* %179)
  store %struct.TYPE_60__* %180, %struct.TYPE_60__** %8, align 8
  %181 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %182 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 2
  %186 = call i8* @cpu_to_be32(i32 %185)
  %187 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %189, i32 0, i32 1
  store i64 0, i64* %190, align 8
  %191 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %192 = call %struct.TYPE_57__* @xfs_dir2_block_leaf_p(%struct.TYPE_60__* %191)
  store %struct.TYPE_57__* %192, %struct.TYPE_57__** %6, align 8
  %193 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %194 = bitcast %struct.TYPE_57__* %193 to i8*
  %195 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %196 = bitcast %struct.TYPE_61__* %195 to i8*
  %197 = ptrtoint i8* %194 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %15, align 4
  %201 = load i32*, i32** %26, align 8
  %202 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %203 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %204 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %205 = bitcast %struct.TYPE_58__* %204 to i8*
  %206 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %207 = bitcast %struct.TYPE_61__* %206 to i8*
  %208 = ptrtoint i8* %205 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @be16_to_cpu(i8* %213)
  %215 = call i32 @xfs_dir2_data_use_free(i32* %201, %struct.TYPE_62__* %202, %struct.TYPE_58__* %203, i64 %210, i32 %214, i32* %19, i32* %20)
  %216 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %217 = bitcast %struct.TYPE_61__* %216 to i8*
  %218 = load i32, i32* @XFS_DIR2_DATA_DOT_OFFSET, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = bitcast i8* %220 to %struct.TYPE_59__*
  store %struct.TYPE_59__* %221, %struct.TYPE_59__** %11, align 8
  %222 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i8* @cpu_to_be64(i32 %224)
  %226 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %226, i32 0, i32 2
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %228, i32 0, i32 0
  store i32 1, i32* %229, align 8
  %230 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 0
  store i8 46, i8* %233, align 1
  %234 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %235 = call i8** @xfs_dir2_data_entry_tag_p(%struct.TYPE_59__* %234)
  store i8** %235, i8*** %25, align 8
  %236 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %237 = bitcast %struct.TYPE_59__* %236 to i8*
  %238 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %239 = bitcast %struct.TYPE_61__* %238 to i8*
  %240 = ptrtoint i8* %237 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = trunc i64 %242 to i32
  %244 = call i8* @cpu_to_be16(i32 %243)
  %245 = load i8**, i8*** %25, align 8
  store i8* %244, i8** %245, align 8
  %246 = load i32*, i32** %26, align 8
  %247 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %248 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %249 = call i32 @xfs_dir2_data_log_entry(i32* %246, %struct.TYPE_62__* %247, %struct.TYPE_59__* %248)
  %250 = load i32, i32* @xfs_dir_hash_dot, align 4
  %251 = call i8* @cpu_to_be32(i32 %250)
  %252 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %252, i64 0
  %254 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %253, i32 0, i32 1
  store i8* %251, i8** %254, align 8
  %255 = load %struct.TYPE_70__*, %struct.TYPE_70__** %18, align 8
  %256 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %257 = bitcast %struct.TYPE_59__* %256 to i8*
  %258 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %259 = bitcast %struct.TYPE_61__* %258 to i8*
  %260 = ptrtoint i8* %257 to i64
  %261 = ptrtoint i8* %259 to i64
  %262 = sub i64 %260, %261
  %263 = trunc i64 %262 to i32
  %264 = call i32 @xfs_dir2_byte_to_dataptr(%struct.TYPE_70__* %255, i32 %263)
  %265 = call i8* @cpu_to_be32(i32 %264)
  %266 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %267, i32 0, i32 0
  store i8* %265, i8** %268, align 8
  %269 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %270 = bitcast %struct.TYPE_61__* %269 to i8*
  %271 = load i32, i32* @XFS_DIR2_DATA_DOTDOT_OFFSET, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = bitcast i8* %273 to %struct.TYPE_59__*
  store %struct.TYPE_59__* %274, %struct.TYPE_59__** %11, align 8
  %275 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %276 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %277 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %277, i32 0, i32 1
  %279 = call i32 @xfs_dir2_sf_get_inumber(%struct.TYPE_72__* %275, i32* %278)
  %280 = call i8* @cpu_to_be64(i32 %279)
  %281 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %281, i32 0, i32 2
  store i8* %280, i8** %282, align 8
  %283 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %283, i32 0, i32 0
  store i32 2, i32* %284, align 8
  %285 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %285, i32 0, i32 1
  %287 = load i8*, i8** %286, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  store i8 46, i8* %288, align 1
  %289 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 0
  store i8 46, i8* %292, align 1
  %293 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %294 = call i8** @xfs_dir2_data_entry_tag_p(%struct.TYPE_59__* %293)
  store i8** %294, i8*** %25, align 8
  %295 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %296 = bitcast %struct.TYPE_59__* %295 to i8*
  %297 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %298 = bitcast %struct.TYPE_61__* %297 to i8*
  %299 = ptrtoint i8* %296 to i64
  %300 = ptrtoint i8* %298 to i64
  %301 = sub i64 %299, %300
  %302 = trunc i64 %301 to i32
  %303 = call i8* @cpu_to_be16(i32 %302)
  %304 = load i8**, i8*** %25, align 8
  store i8* %303, i8** %304, align 8
  %305 = load i32*, i32** %26, align 8
  %306 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %307 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %308 = call i32 @xfs_dir2_data_log_entry(i32* %305, %struct.TYPE_62__* %306, %struct.TYPE_59__* %307)
  %309 = load i32, i32* @xfs_dir_hash_dotdot, align 4
  %310 = call i8* @cpu_to_be32(i32 %309)
  %311 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %311, i64 1
  %313 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %312, i32 0, i32 1
  store i8* %310, i8** %313, align 8
  %314 = load %struct.TYPE_70__*, %struct.TYPE_70__** %18, align 8
  %315 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %316 = bitcast %struct.TYPE_59__* %315 to i8*
  %317 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %318 = bitcast %struct.TYPE_61__* %317 to i8*
  %319 = ptrtoint i8* %316 to i64
  %320 = ptrtoint i8* %318 to i64
  %321 = sub i64 %319, %320
  %322 = trunc i64 %321 to i32
  %323 = call i32 @xfs_dir2_byte_to_dataptr(%struct.TYPE_70__* %314, i32 %322)
  %324 = call i8* @cpu_to_be32(i32 %323)
  %325 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %325, i64 1
  %327 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %326, i32 0, i32 0
  store i8* %324, i8** %327, align 8
  %328 = load i32, i32* @XFS_DIR2_DATA_FIRST_OFFSET, align 4
  store i32 %328, i32* %22, align 4
  store i32 0, i32* %17, align 4
  %329 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %330 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 0, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %143
  store %struct.TYPE_56__* null, %struct.TYPE_56__** %23, align 8
  br label %338

335:                                              ; preds = %143
  %336 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %337 = call %struct.TYPE_56__* @xfs_dir2_sf_firstentry(%struct.TYPE_72__* %336)
  store %struct.TYPE_56__* %337, %struct.TYPE_56__** %23, align 8
  br label %338

338:                                              ; preds = %335, %334
  br label %339

339:                                              ; preds = %501, %355, %338
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* %15, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %502

343:                                              ; preds = %339
  %344 = load %struct.TYPE_56__*, %struct.TYPE_56__** %23, align 8
  %345 = icmp eq %struct.TYPE_56__* %344, null
  br i1 %345, label %346, label %348

346:                                              ; preds = %343
  %347 = load i32, i32* %15, align 4
  store i32 %347, i32* %21, align 4
  br label %351

348:                                              ; preds = %343
  %349 = load %struct.TYPE_56__*, %struct.TYPE_56__** %23, align 8
  %350 = call i32 @xfs_dir2_sf_get_offset(%struct.TYPE_56__* %349)
  store i32 %350, i32* %21, align 4
  br label %351

351:                                              ; preds = %348, %346
  %352 = load i32, i32* %22, align 4
  %353 = load i32, i32* %21, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %397

355:                                              ; preds = %351
  %356 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %357 = bitcast %struct.TYPE_61__* %356 to i8*
  %358 = load i32, i32* %22, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %357, i64 %359
  %361 = bitcast i8* %360 to %struct.TYPE_58__*
  store %struct.TYPE_58__* %361, %struct.TYPE_58__** %14, align 8
  %362 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %363 = call i8* @cpu_to_be16(i32 %362)
  %364 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %364, i32 0, i32 1
  store i8* %363, i8** %365, align 8
  %366 = load i32, i32* %21, align 4
  %367 = load i32, i32* %22, align 4
  %368 = sub nsw i32 %366, %367
  %369 = call i8* @cpu_to_be16(i32 %368)
  %370 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %371 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %370, i32 0, i32 0
  store i8* %369, i8** %371, align 8
  %372 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %373 = bitcast %struct.TYPE_58__* %372 to i8*
  %374 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %375 = bitcast %struct.TYPE_61__* %374 to i8*
  %376 = ptrtoint i8* %373 to i64
  %377 = ptrtoint i8* %375 to i64
  %378 = sub i64 %376, %377
  %379 = trunc i64 %378 to i32
  %380 = call i8* @cpu_to_be16(i32 %379)
  %381 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %382 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_58__* %381)
  store i8* %380, i8** %382, align 8
  %383 = load i32*, i32** %26, align 8
  %384 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %385 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %386 = call i32 @xfs_dir2_data_log_unused(i32* %383, %struct.TYPE_62__* %384, %struct.TYPE_58__* %385)
  %387 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %388 = bitcast %struct.TYPE_61__* %387 to i32*
  %389 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %390 = call i32 @xfs_dir2_data_freeinsert(i32* %388, %struct.TYPE_58__* %389, i32* %13)
  %391 = load %struct.TYPE_58__*, %struct.TYPE_58__** %14, align 8
  %392 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %391, i32 0, i32 0
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @be16_to_cpu(i8* %393)
  %395 = load i32, i32* %22, align 4
  %396 = add nsw i32 %395, %394
  store i32 %396, i32* %22, align 4
  br label %339

397:                                              ; preds = %351
  %398 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %399 = bitcast %struct.TYPE_61__* %398 to i8*
  %400 = load i32, i32* %21, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8, i8* %399, i64 %401
  %403 = bitcast i8* %402 to %struct.TYPE_59__*
  store %struct.TYPE_59__* %403, %struct.TYPE_59__** %11, align 8
  %404 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %405 = load %struct.TYPE_56__*, %struct.TYPE_56__** %23, align 8
  %406 = call i32* @xfs_dir2_sf_inumberp(%struct.TYPE_56__* %405)
  %407 = call i32 @xfs_dir2_sf_get_inumber(%struct.TYPE_72__* %404, i32* %406)
  %408 = call i8* @cpu_to_be64(i32 %407)
  %409 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %409, i32 0, i32 2
  store i8* %408, i8** %410, align 8
  %411 = load %struct.TYPE_56__*, %struct.TYPE_56__** %23, align 8
  %412 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  %416 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %417 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %416, i32 0, i32 1
  %418 = load i8*, i8** %417, align 8
  %419 = load %struct.TYPE_56__*, %struct.TYPE_56__** %23, align 8
  %420 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %419, i32 0, i32 1
  %421 = load %struct.TYPE_72__*, %struct.TYPE_72__** %420, align 8
  %422 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %423 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @memcpy(i8* %418, %struct.TYPE_72__* %421, i32 %424)
  %426 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %427 = call i8** @xfs_dir2_data_entry_tag_p(%struct.TYPE_59__* %426)
  store i8** %427, i8*** %25, align 8
  %428 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %429 = bitcast %struct.TYPE_59__* %428 to i8*
  %430 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %431 = bitcast %struct.TYPE_61__* %430 to i8*
  %432 = ptrtoint i8* %429 to i64
  %433 = ptrtoint i8* %431 to i64
  %434 = sub i64 %432, %433
  %435 = trunc i64 %434 to i32
  %436 = call i8* @cpu_to_be16(i32 %435)
  %437 = load i8**, i8*** %25, align 8
  store i8* %436, i8** %437, align 8
  %438 = load i32*, i32** %26, align 8
  %439 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %440 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %441 = call i32 @xfs_dir2_data_log_entry(i32* %438, %struct.TYPE_62__* %439, %struct.TYPE_59__* %440)
  %442 = load %struct.TYPE_56__*, %struct.TYPE_56__** %23, align 8
  %443 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %442, i32 0, i32 1
  %444 = load %struct.TYPE_72__*, %struct.TYPE_72__** %443, align 8
  %445 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %27, i32 0, i32 1
  store %struct.TYPE_72__* %444, %struct.TYPE_72__** %445, align 8
  %446 = load %struct.TYPE_56__*, %struct.TYPE_56__** %23, align 8
  %447 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = getelementptr inbounds %struct.xfs_name, %struct.xfs_name* %27, i32 0, i32 0
  store i32 %448, i32* %449, align 8
  %450 = load %struct.TYPE_70__*, %struct.TYPE_70__** %18, align 8
  %451 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_64__*, %struct.TYPE_64__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %452, i32 0, i32 0
  %454 = load i32 (%struct.xfs_name*)*, i32 (%struct.xfs_name*)** %453, align 8
  %455 = call i32 %454(%struct.xfs_name* %27)
  %456 = call i8* @cpu_to_be32(i32 %455)
  %457 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %458 = load i32, i32* %17, align 4
  %459 = add nsw i32 2, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %457, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %461, i32 0, i32 1
  store i8* %456, i8** %462, align 8
  %463 = load %struct.TYPE_70__*, %struct.TYPE_70__** %18, align 8
  %464 = load %struct.TYPE_59__*, %struct.TYPE_59__** %11, align 8
  %465 = bitcast %struct.TYPE_59__* %464 to i8*
  %466 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %467 = bitcast %struct.TYPE_61__* %466 to i8*
  %468 = ptrtoint i8* %465 to i64
  %469 = ptrtoint i8* %467 to i64
  %470 = sub i64 %468, %469
  %471 = trunc i64 %470 to i32
  %472 = call i32 @xfs_dir2_byte_to_dataptr(%struct.TYPE_70__* %463, i32 %471)
  %473 = call i8* @cpu_to_be32(i32 %472)
  %474 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %475 = load i32, i32* %17, align 4
  %476 = add nsw i32 2, %475
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %474, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %478, i32 0, i32 0
  store i8* %473, i8** %479, align 8
  %480 = load i8**, i8*** %25, align 8
  %481 = getelementptr inbounds i8*, i8** %480, i64 1
  %482 = bitcast i8** %481 to i8*
  %483 = load %struct.TYPE_61__*, %struct.TYPE_61__** %5, align 8
  %484 = bitcast %struct.TYPE_61__* %483 to i8*
  %485 = ptrtoint i8* %482 to i64
  %486 = ptrtoint i8* %484 to i64
  %487 = sub i64 %485, %486
  %488 = trunc i64 %487 to i32
  store i32 %488, i32* %22, align 4
  %489 = load i32, i32* %17, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %17, align 4
  %491 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %492 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = icmp eq i32 %490, %494
  br i1 %495, label %496, label %497

496:                                              ; preds = %397
  store %struct.TYPE_56__* null, %struct.TYPE_56__** %23, align 8
  br label %501

497:                                              ; preds = %397
  %498 = load %struct.TYPE_72__*, %struct.TYPE_72__** %24, align 8
  %499 = load %struct.TYPE_56__*, %struct.TYPE_56__** %23, align 8
  %500 = call %struct.TYPE_56__* @xfs_dir2_sf_nextentry(%struct.TYPE_72__* %498, %struct.TYPE_56__* %499)
  store %struct.TYPE_56__* %500, %struct.TYPE_56__** %23, align 8
  br label %501

501:                                              ; preds = %497, %496
  br label %339

502:                                              ; preds = %339
  %503 = load i8*, i8** %9, align 8
  %504 = call i32 @kmem_free(i8* %503)
  %505 = load %struct.TYPE_57__*, %struct.TYPE_57__** %6, align 8
  %506 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %507 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %506, i32 0, i32 0
  %508 = load i8*, i8** %507, align 8
  %509 = call i64 @be32_to_cpu(i8* %508)
  %510 = load i32, i32* @xfs_dir2_block_sort, align 4
  %511 = call i32 @xfs_sort(%struct.TYPE_57__* %505, i64 %509, i32 16, i32 %510)
  %512 = load i32, i32* %20, align 4
  %513 = icmp eq i32 %512, 0
  %514 = zext i1 %513 to i32
  %515 = call i32 @ASSERT(i32 %514)
  %516 = load i32*, i32** %26, align 8
  %517 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %518 = load %struct.TYPE_60__*, %struct.TYPE_60__** %8, align 8
  %519 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %518, i32 0, i32 0
  %520 = load i8*, i8** %519, align 8
  %521 = call i64 @be32_to_cpu(i8* %520)
  %522 = sub nsw i64 %521, 1
  %523 = call i32 @xfs_dir2_block_log_leaf(i32* %516, %struct.TYPE_62__* %517, i32 0, i64 %522)
  %524 = load i32*, i32** %26, align 8
  %525 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %526 = call i32 @xfs_dir2_block_log_tail(i32* %524, %struct.TYPE_62__* %525)
  %527 = load %struct.TYPE_71__*, %struct.TYPE_71__** %12, align 8
  %528 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %529 = call i32 @xfs_dir2_data_check(%struct.TYPE_71__* %527, %struct.TYPE_62__* %528)
  %530 = load %struct.TYPE_62__*, %struct.TYPE_62__** %7, align 8
  %531 = call i32 @xfs_da_buf_done(%struct.TYPE_62__* %530)
  store i32 0, i32* %2, align 4
  br label %532

532:                                              ; preds = %502, %139, %129, %54
  %533 = load i32, i32* %2, align 4
  ret i32 %533
}

declare dso_local i32 @trace_xfs_dir2_sf_to_block(%struct.TYPE_63__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(%struct.TYPE_70__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @xfs_dir2_sf_hdr_size(i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_72__*, i32) #1

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_71__*, i32, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_71__*, i32) #1

declare dso_local i32 @xfs_dir2_grow_inode(%struct.TYPE_63__*, i32, i32*) #1

declare dso_local i32 @kmem_free(i8*) #1

declare dso_local i32 @xfs_dir2_data_init(%struct.TYPE_63__*, i32, %struct.TYPE_62__**) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_data_use_free(i32*, %struct.TYPE_62__*, %struct.TYPE_58__*, i64, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_60__* @xfs_dir2_block_tail_p(%struct.TYPE_70__*, %struct.TYPE_61__*) #1

declare dso_local %struct.TYPE_57__* @xfs_dir2_block_leaf_p(%struct.TYPE_60__*) #1

declare dso_local i32 @be16_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i8** @xfs_dir2_data_entry_tag_p(%struct.TYPE_59__*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_data_log_entry(i32*, %struct.TYPE_62__*, %struct.TYPE_59__*) #1

declare dso_local i32 @xfs_dir2_byte_to_dataptr(%struct.TYPE_70__*, i32) #1

declare dso_local i32 @xfs_dir2_sf_get_inumber(%struct.TYPE_72__*, i32*) #1

declare dso_local %struct.TYPE_56__* @xfs_dir2_sf_firstentry(%struct.TYPE_72__*) #1

declare dso_local i32 @xfs_dir2_sf_get_offset(%struct.TYPE_56__*) #1

declare dso_local i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_58__*) #1

declare dso_local i32 @xfs_dir2_data_log_unused(i32*, %struct.TYPE_62__*, %struct.TYPE_58__*) #1

declare dso_local i32 @xfs_dir2_data_freeinsert(i32*, %struct.TYPE_58__*, i32*) #1

declare dso_local i32* @xfs_dir2_sf_inumberp(%struct.TYPE_56__*) #1

declare dso_local %struct.TYPE_56__* @xfs_dir2_sf_nextentry(%struct.TYPE_72__*, %struct.TYPE_56__*) #1

declare dso_local i32 @xfs_sort(%struct.TYPE_57__*, i64, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @xfs_dir2_block_log_leaf(i32*, %struct.TYPE_62__*, i32, i64) #1

declare dso_local i32 @xfs_dir2_block_log_tail(i32*, %struct.TYPE_62__*) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_71__*, %struct.TYPE_62__*) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_62__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
