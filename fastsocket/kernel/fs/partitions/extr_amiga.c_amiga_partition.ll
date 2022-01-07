; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_amiga.c_amiga_partition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_amiga.c_amiga_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32 }
%struct.block_device = type { i32 }
%struct.RigidDiskBlock = type { i64, i64, i64 }
%struct.PartitionBlock = type { i64, i64, i64, i64* }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@RDB_ALLOCATION_LIMIT = common dso_local global i32 0, align 4
@warn_no_part = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Dev %s: unable to read RDB block %d\0A\00", align 1
@IDNAME_RIGIDDISK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Warning: Trashed word at 0xd0 in block %d ignored in checksum calculation\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Dev %s: RDB in block %d has bad checksum\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" RDSK (%d)\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Dev %s: unable to read partition block %d\0A\00", align 1
@IDNAME_PARTITION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c" (%c%c%c^%c)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (%c%c%c%c)\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"(res %d spb %d)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amiga_partition(%struct.parsed_partitions* %0, %struct.block_device* %1) #0 {
  %3 = alloca %struct.parsed_partitions*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.RigidDiskBlock*, align 8
  %8 = alloca %struct.PartitionBlock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [4 x i8], align 1
  %19 = alloca i64*, align 8
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %3, align 8
  store %struct.block_device* %1, %struct.block_device** %4, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %20 = load i32, i32* @BDEVNAME_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %86, %2
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @RDB_ALLOCATION_LIMIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %282

29:                                               ; preds = %24
  %30 = load %struct.block_device*, %struct.block_device** %4, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i8* @read_dev_sector(%struct.block_device* %30, i32 %31, i32* %5)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @warn_no_part, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.block_device*, %struct.block_device** %4, align 8
  %40 = call i32 @bdevname(%struct.block_device* %39, i8* %23)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  store i32 -1, i32* %13, align 4
  br label %282

44:                                               ; preds = %29
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @IDNAME_RIGIDDISK, align 4
  %49 = call i64 @cpu_to_be32(i32 %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %86

52:                                               ; preds = %44
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to %struct.RigidDiskBlock*
  store %struct.RigidDiskBlock* %54, %struct.RigidDiskBlock** %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = bitcast i8* %55 to i64*
  %57 = load %struct.RigidDiskBlock*, %struct.RigidDiskBlock** %7, align 8
  %58 = getelementptr inbounds %struct.RigidDiskBlock, %struct.RigidDiskBlock* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @be32_to_cpu(i64 %59)
  %61 = and i32 %60, 127
  %62 = call i64 @checksum_block(i64* %56, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %91

65:                                               ; preds = %52
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 220
  %68 = bitcast i8* %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = bitcast i8* %69 to i64*
  %71 = load %struct.RigidDiskBlock*, %struct.RigidDiskBlock** %7, align 8
  %72 = getelementptr inbounds %struct.RigidDiskBlock, %struct.RigidDiskBlock* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @be32_to_cpu(i64 %73)
  %75 = and i32 %74, 127
  %76 = call i64 @checksum_block(i64* %70, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %91

81:                                               ; preds = %65
  %82 = load %struct.block_device*, %struct.block_device** %4, align 8
  %83 = call i32 @bdevname(%struct.block_device* %82, i8* %23)
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %51
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @put_dev_sector(i32 %89)
  br label %24

91:                                               ; preds = %78, %64
  %92 = load %struct.RigidDiskBlock*, %struct.RigidDiskBlock** %7, align 8
  %93 = getelementptr inbounds %struct.RigidDiskBlock, %struct.RigidDiskBlock* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @be32_to_cpu(i64 %94)
  %96 = sdiv i32 %95, 512
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = mul nsw i32 %97, 512
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.RigidDiskBlock*, %struct.RigidDiskBlock** %7, align 8
  %101 = getelementptr inbounds %struct.RigidDiskBlock, %struct.RigidDiskBlock* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @be32_to_cpu(i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @put_dev_sector(i32 %104)
  store i32 1, i32* %12, align 4
  br label %106

106:                                              ; preds = %275, %91
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = icmp sle i32 %110, 16
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i1 [ false, %106 ], [ %111, %109 ]
  br i1 %113, label %114, label %280

114:                                              ; preds = %112
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = mul nsw i32 %116, %115
  store i32 %117, i32* %11, align 4
  %118 = load %struct.block_device*, %struct.block_device** %4, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i8* @read_dev_sector(%struct.block_device* %118, i32 %119, i32* %5)
  store i8* %120, i8** %6, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %114
  %124 = load i64, i64* @warn_no_part, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.block_device*, %struct.block_device** %4, align 8
  %128 = call i32 @bdevname(%struct.block_device* %127, i8* %23)
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %123
  store i32 -1, i32* %13, align 4
  br label %282

132:                                              ; preds = %114
  %133 = load i8*, i8** %6, align 8
  %134 = bitcast i8* %133 to %struct.PartitionBlock*
  store %struct.PartitionBlock* %134, %struct.PartitionBlock** %8, align 8
  %135 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %136 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @be32_to_cpu(i64 %137)
  store i32 %138, i32* %11, align 4
  %139 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %140 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @IDNAME_PARTITION, align 4
  %143 = call i64 @cpu_to_be32(i32 %142)
  %144 = icmp ne i64 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %132
  br label %275

146:                                              ; preds = %132
  %147 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %148 = bitcast %struct.PartitionBlock* %147 to i64*
  %149 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %150 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @be32_to_cpu(i64 %151)
  %153 = and i32 %152, 127
  %154 = call i64 @checksum_block(i64* %148, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %275

157:                                              ; preds = %146
  %158 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %159 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %158, i32 0, i32 3
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 10
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @be32_to_cpu(i64 %162)
  %164 = add nsw i32 %163, 1
  %165 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %166 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %165, i32 0, i32 3
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 9
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @be32_to_cpu(i64 %169)
  %171 = sub nsw i32 %164, %170
  %172 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %173 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 3
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @be32_to_cpu(i64 %176)
  %178 = mul nsw i32 %171, %177
  %179 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %180 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %179, i32 0, i32 3
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 5
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @be32_to_cpu(i64 %183)
  %185 = mul nsw i32 %178, %184
  %186 = load i32, i32* %14, align 4
  %187 = mul nsw i32 %185, %186
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %157
  br label %275

191:                                              ; preds = %157
  %192 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %193 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %192, i32 0, i32 3
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 9
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @be32_to_cpu(i64 %196)
  %198 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %199 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %198, i32 0, i32 3
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 3
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @be32_to_cpu(i64 %202)
  %204 = mul nsw i32 %197, %203
  %205 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %206 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %205, i32 0, i32 3
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 5
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @be32_to_cpu(i64 %209)
  %211 = mul nsw i32 %204, %210
  %212 = load i32, i32* %14, align 4
  %213 = mul nsw i32 %211, %212
  store i32 %213, i32* %9, align 4
  %214 = load %struct.parsed_partitions*, %struct.parsed_partitions** %3, align 8
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @put_partition(%struct.parsed_partitions* %214, i32 %215, i32 %217, i32 %218)
  %220 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %221 = bitcast i8* %220 to i64*
  store i64* %221, i64** %19, align 8
  %222 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %223 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %222, i32 0, i32 3
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 16
  %226 = load i64, i64* %225, align 8
  %227 = load i64*, i64** %19, align 8
  store i64 %226, i64* %227, align 8
  %228 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 3
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp slt i32 %230, 32
  br i1 %231, label %232, label %247

232:                                              ; preds = %191
  %233 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 1
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 2
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 3
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = add nsw i32 %244, 64
  %246 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %235, i32 %238, i32 %241, i32 %245)
  br label %261

247:                                              ; preds = %191
  %248 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 0
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 1
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 2
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0, i64 3
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %250, i32 %253, i32 %256, i32 %259)
  br label %261

261:                                              ; preds = %247, %232
  %262 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %263 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %262, i32 0, i32 3
  %264 = load i64*, i64** %263, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 6
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @be32_to_cpu(i64 %266)
  %268 = load %struct.PartitionBlock*, %struct.PartitionBlock** %8, align 8
  %269 = getelementptr inbounds %struct.PartitionBlock, %struct.PartitionBlock* %268, i32 0, i32 3
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 4
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @be32_to_cpu(i64 %272)
  %274 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %267, i32 %273)
  store i32 1, i32* %13, align 4
  br label %275

275:                                              ; preds = %261, %190, %156, %145
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %12, align 4
  %278 = load i32, i32* %5, align 4
  %279 = call i32 @put_dev_sector(i32 %278)
  br label %106

280:                                              ; preds = %112
  %281 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %282

282:                                              ; preds = %280, %131, %43, %28
  %283 = load i32, i32* %13, align 4
  %284 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %284)
  ret i32 %283
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @read_dev_sector(%struct.block_device*, i32, i32*) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @bdevname(%struct.block_device*, i8*) #2

declare dso_local i64 @cpu_to_be32(i32) #2

declare dso_local i64 @checksum_block(i64*, i32) #2

declare dso_local i32 @be32_to_cpu(i64) #2

declare dso_local i32 @put_dev_sector(i32) #2

declare dso_local i32 @put_partition(%struct.parsed_partitions*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
