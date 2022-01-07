; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_fill_partdesc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_fill_partdesc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.partitionDesc = type { i64, i64, %struct.TYPE_12__, i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.udf_part_map = type { i32, %struct.TYPE_20__, %struct.TYPE_15__, i8*, i8*, i32 }
%struct.TYPE_20__ = type { %struct.udf_bitmap*, %struct.TYPE_19__* }
%struct.udf_bitmap = type { i8*, i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_15__ = type { %struct.udf_bitmap*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.udf_sb_info = type { %struct.udf_part_map* }
%struct.partitionHeaderDesc = type { %struct.TYPE_11__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.kernel_lb_addr = type { i8*, i32 }

@PD_ACCESS_TYPE_READ_ONLY = common dso_local global i32 0, align 4
@UDF_PART_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@PD_ACCESS_TYPE_WRITE_ONCE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_WRITE_ONCE = common dso_local global i32 0, align 4
@PD_ACCESS_TYPE_REWRITABLE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_REWRITABLE = common dso_local global i32 0, align 4
@PD_ACCESS_TYPE_OVERWRITABLE = common dso_local global i32 0, align 4
@UDF_PART_FLAG_OVERWRITABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Partition (%d type %x) starts at physical %d, block length %d\0A\00", align 1
@PD_PARTITION_CONTENTS_NSR02 = common dso_local global i32 0, align 4
@PD_PARTITION_CONTENTS_NSR03 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot load unallocSpaceTable (part %d)\0A\00", align 1
@UDF_PART_FLAG_UNALLOC_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unallocSpaceTable (part %d) @ %ld\0A\00", align 1
@UDF_PART_FLAG_UNALLOC_BITMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"unallocSpaceBitmap (part %d) @ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"partitionIntegrityTable (part %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"cannot load freedSpaceTable (part %d)\0A\00", align 1
@UDF_PART_FLAG_FREED_TABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"freedSpaceTable (part %d) @ %ld\0A\00", align 1
@UDF_PART_FLAG_FREED_BITMAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"freedSpaceBitmap (part %d) @ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.partitionDesc*, i32)* @udf_fill_partdesc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_fill_partdesc_info(%struct.super_block* %0, %struct.partitionDesc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.partitionDesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.udf_part_map*, align 8
  %9 = alloca %struct.udf_sb_info*, align 8
  %10 = alloca %struct.partitionHeaderDesc*, align 8
  %11 = alloca %struct.kernel_lb_addr, align 8
  %12 = alloca %struct.udf_bitmap*, align 8
  %13 = alloca %struct.kernel_lb_addr, align 8
  %14 = alloca %struct.udf_bitmap*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.partitionDesc* %1, %struct.partitionDesc** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %15)
  store %struct.udf_sb_info* %16, %struct.udf_sb_info** %9, align 8
  %17 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %18 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %17, i32 0, i32 0
  %19 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %19, i64 %21
  store %struct.udf_part_map* %22, %struct.udf_part_map** %8, align 8
  %23 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %24 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @le32_to_cpu(i64 %25)
  %27 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %28 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %30 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @le32_to_cpu(i64 %31)
  %33 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %34 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %36 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @PD_ACCESS_TYPE_READ_ONLY, align 4
  %39 = call i64 @cpu_to_le32(i32 %38)
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load i32, i32* @UDF_PART_FLAG_READ_ONLY, align 4
  %43 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %44 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %3
  %48 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %49 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @PD_ACCESS_TYPE_WRITE_ONCE, align 4
  %52 = call i64 @cpu_to_le32(i32 %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @UDF_PART_FLAG_WRITE_ONCE, align 4
  %56 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %57 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %62 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @PD_ACCESS_TYPE_REWRITABLE, align 4
  %65 = call i64 @cpu_to_le32(i32 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @UDF_PART_FLAG_REWRITABLE, align 4
  %69 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %70 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %75 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @PD_ACCESS_TYPE_OVERWRITABLE, align 4
  %78 = call i64 @cpu_to_le32(i32 %77)
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @UDF_PART_FLAG_OVERWRITABLE, align 4
  %82 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %83 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %73
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %89 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %92 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %95 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %90, i8* %93, i8* %96)
  %98 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %99 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @PD_PARTITION_CONTENTS_NSR02, align 4
  %103 = call i64 @strcmp(i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %86
  %106 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %107 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @PD_PARTITION_CONTENTS_NSR03, align 4
  %111 = call i64 @strcmp(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %298

114:                                              ; preds = %105, %86
  %115 = load %struct.partitionDesc*, %struct.partitionDesc** %6, align 8
  %116 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.partitionHeaderDesc*
  store %struct.partitionHeaderDesc* %118, %struct.partitionHeaderDesc** %10, align 8
  %119 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %120 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %161

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 0
  %126 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %127 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @le32_to_cpu(i64 %129)
  store i8* %130, i8** %125, align 8
  %131 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %11, i32 0, i32 1
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %131, align 8
  %133 = load %struct.super_block*, %struct.super_block** %5, align 8
  %134 = call i8* @udf_iget(%struct.super_block* %133, %struct.kernel_lb_addr* %11)
  %135 = bitcast i8* %134 to %struct.TYPE_14__*
  %136 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %137 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %138, align 8
  %139 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %140 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = icmp ne %struct.TYPE_14__* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %124
  %145 = load i32, i32* %7, align 4
  %146 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  store i32 1, i32* %4, align 4
  br label %298

147:                                              ; preds = %124
  %148 = load i32, i32* @UDF_PART_FLAG_UNALLOC_TABLE, align 4
  %149 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %150 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %155 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %153, i8* %159)
  br label %161

161:                                              ; preds = %147, %114
  %162 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %163 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %203

167:                                              ; preds = %161
  %168 = load %struct.super_block*, %struct.super_block** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call %struct.udf_bitmap* @udf_sb_alloc_bitmap(%struct.super_block* %168, i32 %169)
  store %struct.udf_bitmap* %170, %struct.udf_bitmap** %12, align 8
  %171 = load %struct.udf_bitmap*, %struct.udf_bitmap** %12, align 8
  %172 = icmp ne %struct.udf_bitmap* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %167
  store i32 1, i32* %4, align 4
  br label %298

174:                                              ; preds = %167
  %175 = load %struct.udf_bitmap*, %struct.udf_bitmap** %12, align 8
  %176 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %177 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store %struct.udf_bitmap* %175, %struct.udf_bitmap** %178, align 8
  %179 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %180 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @le32_to_cpu(i64 %182)
  %184 = load %struct.udf_bitmap*, %struct.udf_bitmap** %12, align 8
  %185 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %187 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i8* @le32_to_cpu(i64 %189)
  %191 = load %struct.udf_bitmap*, %struct.udf_bitmap** %12, align 8
  %192 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  %193 = load i32, i32* @UDF_PART_FLAG_UNALLOC_BITMAP, align 4
  %194 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %195 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.udf_bitmap*, %struct.udf_bitmap** %12, align 8
  %200 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %198, i8* %201)
  br label %203

203:                                              ; preds = %174, %161
  %204 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %205 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %203
  %210 = load i32, i32* %7, align 4
  %211 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %209, %203
  %213 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %214 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %255

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %13, i32 0, i32 0
  %220 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %221 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i8* @le32_to_cpu(i64 %223)
  store i8* %224, i8** %219, align 8
  %225 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %13, i32 0, i32 1
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %225, align 8
  %227 = load %struct.super_block*, %struct.super_block** %5, align 8
  %228 = call i8* @udf_iget(%struct.super_block* %227, %struct.kernel_lb_addr* %13)
  %229 = bitcast i8* %228 to %struct.TYPE_19__*
  %230 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %231 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 1
  store %struct.TYPE_19__* %229, %struct.TYPE_19__** %232, align 8
  %233 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %234 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %235, align 8
  %237 = icmp ne %struct.TYPE_19__* %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %218
  %239 = load i32, i32* %7, align 4
  %240 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %239)
  store i32 1, i32* %4, align 4
  br label %298

241:                                              ; preds = %218
  %242 = load i32, i32* @UDF_PART_FLAG_FREED_TABLE, align 4
  %243 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %244 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load i32, i32* %7, align 4
  %248 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %249 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %247, i8* %253)
  br label %255

255:                                              ; preds = %241, %212
  %256 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %257 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %297

261:                                              ; preds = %255
  %262 = load %struct.super_block*, %struct.super_block** %5, align 8
  %263 = load i32, i32* %7, align 4
  %264 = call %struct.udf_bitmap* @udf_sb_alloc_bitmap(%struct.super_block* %262, i32 %263)
  store %struct.udf_bitmap* %264, %struct.udf_bitmap** %14, align 8
  %265 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %266 = icmp ne %struct.udf_bitmap* %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %261
  store i32 1, i32* %4, align 4
  br label %298

268:                                              ; preds = %261
  %269 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %270 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %271 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  store %struct.udf_bitmap* %269, %struct.udf_bitmap** %272, align 8
  %273 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %274 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = call i8* @le32_to_cpu(i64 %276)
  %278 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %279 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %278, i32 0, i32 1
  store i8* %277, i8** %279, align 8
  %280 = load %struct.partitionHeaderDesc*, %struct.partitionHeaderDesc** %10, align 8
  %281 = getelementptr inbounds %struct.partitionHeaderDesc, %struct.partitionHeaderDesc* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i8* @le32_to_cpu(i64 %283)
  %285 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %286 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %285, i32 0, i32 0
  store i8* %284, i8** %286, align 8
  %287 = load i32, i32* @UDF_PART_FLAG_FREED_BITMAP, align 4
  %288 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %289 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load i32, i32* %7, align 4
  %293 = load %struct.udf_bitmap*, %struct.udf_bitmap** %14, align 8
  %294 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %292, i8* %295)
  br label %297

297:                                              ; preds = %268, %255
  store i32 0, i32* %4, align 4
  br label %298

298:                                              ; preds = %297, %267, %238, %173, %144, %113
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @udf_debug(i8*, i32, ...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i8* @udf_iget(%struct.super_block*, %struct.kernel_lb_addr*) #1

declare dso_local %struct.udf_bitmap* @udf_sb_alloc_bitmap(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
