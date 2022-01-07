; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_convert_to_initialized.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_convert_to_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent*, %struct.ext4_extent_header* }
%struct.ext4_extent = type { i8*, i8* }
%struct.ext4_extent_header = type { i32 }

@.str = private unnamed_addr constant [78 x i8] c"ext4_ext_convert_to_initialized: inode %lu, logicalblock %llu, max_blocks %u\0A\00", align 1
@EXT4_EXT_ZERO_LEN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, i32, i32, i32)* @ext4_ext_convert_to_initialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_convert_to_initialized(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent*, align 8
  %15 = alloca %struct.ext4_extent, align 8
  %16 = alloca %struct.ext4_extent, align 8
  %17 = alloca %struct.ext4_extent*, align 8
  %18 = alloca %struct.ext4_extent*, align 8
  %19 = alloca %struct.ext4_extent*, align 8
  %20 = alloca %struct.ext4_extent_header*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.ext4_extent* null, %struct.ext4_extent** %17, align 8
  store %struct.ext4_extent* null, %struct.ext4_extent** %18, align 8
  store %struct.ext4_extent* null, %struct.ext4_extent** %19, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @ext_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %35, i32 %36)
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %40, %45
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %47, %52
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %55, %56
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %6
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %60, %61
  store i32 %62, i32* %22, align 4
  br label %63

63:                                               ; preds = %59, %6
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = call i32 @ext_depth(%struct.inode* %64)
  store i32 %65, i32* %25, align 4
  %66 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %67 = load i32, i32* %25, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %66, i64 %68
  %70 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %69, i32 0, i32 1
  %71 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %70, align 8
  store %struct.ext4_extent_header* %71, %struct.ext4_extent_header** %20, align 8
  %72 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %73 = load i32, i32* %25, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %72, i64 %74
  %76 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %75, i32 0, i32 0
  %77 = load %struct.ext4_extent*, %struct.ext4_extent** %76, align 8
  store %struct.ext4_extent* %77, %struct.ext4_extent** %14, align 8
  %78 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %79 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @le32_to_cpu(i8* %80)
  store i32 %81, i32* %21, align 4
  %82 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %83 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %82)
  store i32 %83, i32* %24, align 4
  %84 = load i32, i32* %24, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %21, align 4
  %87 = sub i32 %85, %86
  %88 = sub i32 %84, %87
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %21, align 4
  %91 = sub i32 %89, %90
  %92 = zext i32 %91 to i64
  %93 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %94 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %93)
  %95 = add nsw i64 %92, %94
  store i64 %95, i64* %26, align 8
  %96 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %96, %struct.ext4_extent** %18, align 8
  %97 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %98 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* %24, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %105 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %104)
  %106 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %16, i64 %105)
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %24, align 4
  %109 = add i32 %107, %108
  %110 = load i32, i32* %22, align 4
  %111 = icmp ule i32 %109, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %29, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %116 = load i32, i32* %25, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %115, i64 %117
  %119 = call i32 @ext4_ext_get_access(i32* %113, %struct.inode* %114, %struct.ext4_ext_path* %118)
  store i32 %119, i32* %27, align 4
  %120 = load i32, i32* %27, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %63
  br label %631

123:                                              ; preds = %63
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* @EXT4_EXT_ZERO_LEN, align 4
  %126 = mul nsw i32 2, %125
  %127 = icmp ule i32 %124, %126
  br i1 %127, label %128, label %157

128:                                              ; preds = %123
  %129 = load i32, i32* %29, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %128
  %132 = load %struct.inode*, %struct.inode** %9, align 8
  %133 = call i32 @ext4_ext_zeroout(%struct.inode* %132, %struct.ext4_extent* %16)
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %27, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %643

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %141 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %145 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %147 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %148 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %146, i64 %147)
  %149 = load i32*, i32** %8, align 8
  %150 = load %struct.inode*, %struct.inode** %9, align 8
  %151 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %152 = load i32, i32* %25, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %151, i64 %153
  %155 = call i32 @ext4_ext_dirty(i32* %149, %struct.inode* %150, %struct.ext4_ext_path* %154)
  %156 = load i32, i32* %23, align 4
  store i32 %156, i32* %7, align 4
  br label %665

157:                                              ; preds = %128, %123
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %21, align 4
  %160 = icmp ugt i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %162, %struct.ext4_extent** %17, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %21, align 4
  %165 = sub i32 %163, %164
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %168 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %170 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %169)
  %171 = load i32*, i32** %8, align 8
  %172 = load %struct.inode*, %struct.inode** %9, align 8
  %173 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %174 = load i32, i32* %25, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %173, i64 %175
  %177 = call i32 @ext4_ext_dirty(i32* %171, %struct.inode* %172, %struct.ext4_ext_path* %176)
  store %struct.ext4_extent* %15, %struct.ext4_extent** %18, align 8
  br label %178

178:                                              ; preds = %161, %157
  %179 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %180 = icmp ne %struct.ext4_extent* %179, null
  br i1 %180, label %190, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %23, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp ugt i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load i32, i32* %12, align 4
  %187 = call i8* @cpu_to_le16(i32 %186)
  %188 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %189 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %188, i32 0, i32 0
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %185, %181, %178
  %191 = load i32, i32* %23, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp ugt i32 %191, %192
  br i1 %193, label %194, label %491

194:                                              ; preds = %190
  %195 = load i32, i32* %23, align 4
  %196 = load i32, i32* @EXT4_EXT_ZERO_LEN, align 4
  %197 = icmp ule i32 %195, %196
  br i1 %197, label %198, label %328

198:                                              ; preds = %194
  %199 = load i32, i32* %29, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %328

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %205 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* %24, align 4
  %207 = load i32, i32* %23, align 4
  %208 = sub i32 %206, %207
  %209 = call i8* @cpu_to_le16(i32 %208)
  %210 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %211 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  %212 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %213 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %212)
  %214 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %215 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %216 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %214, i64 %215)
  %217 = load i32*, i32** %8, align 8
  %218 = load %struct.inode*, %struct.inode** %9, align 8
  %219 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %220 = load i32, i32* %25, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %219, i64 %221
  %223 = call i32 @ext4_ext_dirty(i32* %217, %struct.inode* %218, %struct.ext4_ext_path* %222)
  store %struct.ext4_extent* %15, %struct.ext4_extent** %19, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i8* @cpu_to_le32(i32 %224)
  %226 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %227 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %229 = load i64, i64* %26, align 8
  %230 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %228, i64 %229)
  %231 = load i32, i32* %23, align 4
  %232 = call i8* @cpu_to_le16(i32 %231)
  %233 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %234 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %233, i32 0, i32 0
  store i8* %232, i8** %234, align 8
  %235 = load i32*, i32** %8, align 8
  %236 = load %struct.inode*, %struct.inode** %9, align 8
  %237 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %238 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %239 = call i32 @ext4_ext_insert_extent(i32* %235, %struct.inode* %236, %struct.ext4_ext_path* %237, %struct.ext4_extent* %238, i32 0)
  store i32 %239, i32* %27, align 4
  %240 = load i32, i32* %27, align 4
  %241 = load i32, i32* @ENOSPC, align 4
  %242 = sub nsw i32 0, %241
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %244, label %270

244:                                              ; preds = %201
  %245 = load %struct.inode*, %struct.inode** %9, align 8
  %246 = call i32 @ext4_ext_zeroout(%struct.inode* %245, %struct.ext4_extent* %16)
  store i32 %246, i32* %27, align 4
  %247 = load i32, i32* %27, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %643

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %254 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %253, i32 0, i32 1
  store i8* %252, i8** %254, align 8
  %255 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %258 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %257, i32 0, i32 0
  store i8* %256, i8** %258, align 8
  %259 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %260 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %261 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %259, i64 %260)
  %262 = load i32*, i32** %8, align 8
  %263 = load %struct.inode*, %struct.inode** %9, align 8
  %264 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %265 = load i32, i32* %25, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %264, i64 %266
  %268 = call i32 @ext4_ext_dirty(i32* %262, %struct.inode* %263, %struct.ext4_ext_path* %267)
  %269 = load i32, i32* %23, align 4
  store i32 %269, i32* %7, align 4
  br label %665

270:                                              ; preds = %201
  %271 = load i32, i32* %27, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  br label %643

274:                                              ; preds = %270
  br label %275

275:                                              ; preds = %274
  %276 = load %struct.inode*, %struct.inode** %9, align 8
  %277 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %278 = call i32 @ext4_ext_zeroout(%struct.inode* %276, %struct.ext4_extent* %277)
  store i32 %278, i32* %27, align 4
  %279 = load i32, i32* %27, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %326

281:                                              ; preds = %275
  %282 = load %struct.inode*, %struct.inode** %9, align 8
  %283 = call i32 @ext_depth(%struct.inode* %282)
  store i32 %283, i32* %25, align 4
  %284 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %285 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %284)
  %286 = load %struct.inode*, %struct.inode** %9, align 8
  %287 = load i32, i32* %11, align 4
  %288 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %289 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %286, i32 %287, %struct.ext4_ext_path* %288)
  store %struct.ext4_ext_path* %289, %struct.ext4_ext_path** %10, align 8
  %290 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %291 = call i64 @IS_ERR(%struct.ext4_ext_path* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %281
  %294 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %295 = call i32 @PTR_ERR(%struct.ext4_ext_path* %294)
  store i32 %295, i32* %27, align 4
  %296 = load i32, i32* %27, align 4
  store i32 %296, i32* %7, align 4
  br label %665

297:                                              ; preds = %281
  %298 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %299 = load i32, i32* %25, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %298, i64 %300
  %302 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %301, i32 0, i32 0
  %303 = load %struct.ext4_extent*, %struct.ext4_extent** %302, align 8
  store %struct.ext4_extent* %303, %struct.ext4_extent** %14, align 8
  %304 = load i32*, i32** %8, align 8
  %305 = load %struct.inode*, %struct.inode** %9, align 8
  %306 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %307 = load i32, i32* %25, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %306, i64 %308
  %310 = call i32 @ext4_ext_get_access(i32* %304, %struct.inode* %305, %struct.ext4_ext_path* %309)
  store i32 %310, i32* %27, align 4
  %311 = load i32, i32* %27, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %297
  %314 = load i32, i32* %27, align 4
  store i32 %314, i32* %7, align 4
  br label %665

315:                                              ; preds = %297
  %316 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %317 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %316)
  %318 = load i32*, i32** %8, align 8
  %319 = load %struct.inode*, %struct.inode** %9, align 8
  %320 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %321 = load i32, i32* %25, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %320, i64 %322
  %324 = call i32 @ext4_ext_dirty(i32* %318, %struct.inode* %319, %struct.ext4_ext_path* %323)
  %325 = load i32, i32* %27, align 4
  store i32 %325, i32* %7, align 4
  br label %665

326:                                              ; preds = %275
  %327 = load i32, i32* %23, align 4
  store i32 %327, i32* %7, align 4
  br label %665

328:                                              ; preds = %198, %194
  store %struct.ext4_extent* %15, %struct.ext4_extent** %19, align 8
  %329 = load i32, i32* %11, align 4
  %330 = load i32, i32* %12, align 4
  %331 = add i32 %329, %330
  %332 = call i8* @cpu_to_le32(i32 %331)
  %333 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %334 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %333, i32 0, i32 1
  store i8* %332, i8** %334, align 8
  %335 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %336 = load i64, i64* %26, align 8
  %337 = load i32, i32* %12, align 4
  %338 = zext i32 %337 to i64
  %339 = add nsw i64 %336, %338
  %340 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %335, i64 %339)
  %341 = load i32, i32* %23, align 4
  %342 = load i32, i32* %12, align 4
  %343 = sub i32 %341, %342
  %344 = call i8* @cpu_to_le16(i32 %343)
  %345 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %346 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %345, i32 0, i32 0
  store i8* %344, i8** %346, align 8
  %347 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %348 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %347)
  %349 = load i32*, i32** %8, align 8
  %350 = load %struct.inode*, %struct.inode** %9, align 8
  %351 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %352 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %353 = load i32, i32* %13, align 4
  %354 = call i32 @ext4_ext_insert_extent(i32* %349, %struct.inode* %350, %struct.ext4_ext_path* %351, %struct.ext4_extent* %352, i32 %353)
  store i32 %354, i32* %27, align 4
  %355 = load i32, i32* %27, align 4
  %356 = load i32, i32* @ENOSPC, align 4
  %357 = sub nsw i32 0, %356
  %358 = icmp eq i32 %355, %357
  br i1 %358, label %359, label %388

359:                                              ; preds = %328
  %360 = load i32, i32* %29, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %388

362:                                              ; preds = %359
  %363 = load %struct.inode*, %struct.inode** %9, align 8
  %364 = call i32 @ext4_ext_zeroout(%struct.inode* %363, %struct.ext4_extent* %16)
  store i32 %364, i32* %27, align 4
  %365 = load i32, i32* %27, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  br label %643

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %370 = load i8*, i8** %369, align 8
  %371 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %372 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %371, i32 0, i32 1
  store i8* %370, i8** %372, align 8
  %373 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8
  %375 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %376 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %375, i32 0, i32 0
  store i8* %374, i8** %376, align 8
  %377 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %378 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %379 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %377, i64 %378)
  %380 = load i32*, i32** %8, align 8
  %381 = load %struct.inode*, %struct.inode** %9, align 8
  %382 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %383 = load i32, i32* %25, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %382, i64 %384
  %386 = call i32 @ext4_ext_dirty(i32* %380, %struct.inode* %381, %struct.ext4_ext_path* %385)
  %387 = load i32, i32* %23, align 4
  store i32 %387, i32* %7, align 4
  br label %665

388:                                              ; preds = %359, %328
  %389 = load i32, i32* %27, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %388
  br label %643

392:                                              ; preds = %388
  br label %393

393:                                              ; preds = %392
  %394 = load %struct.inode*, %struct.inode** %9, align 8
  %395 = call i32 @ext_depth(%struct.inode* %394)
  store i32 %395, i32* %30, align 4
  %396 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %397 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %396)
  %398 = load i32, i32* %24, align 4
  %399 = sub i32 %398, %397
  store i32 %399, i32* %24, align 4
  %400 = load i32, i32* %24, align 4
  %401 = call i8* @cpu_to_le16(i32 %400)
  %402 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  store i8* %401, i8** %402, align 8
  %403 = load i32, i32* %21, align 4
  %404 = load i32, i32* %24, align 4
  %405 = add i32 %403, %404
  %406 = load i32, i32* %22, align 4
  %407 = icmp ule i32 %405, %406
  %408 = zext i1 %407 to i32
  store i32 %408, i32* %29, align 4
  %409 = load i32, i32* %30, align 4
  store i32 %409, i32* %25, align 4
  %410 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %411 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %410)
  %412 = load %struct.inode*, %struct.inode** %9, align 8
  %413 = load i32, i32* %11, align 4
  %414 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %415 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %412, i32 %413, %struct.ext4_ext_path* %414)
  store %struct.ext4_ext_path* %415, %struct.ext4_ext_path** %10, align 8
  %416 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %417 = call i64 @IS_ERR(%struct.ext4_ext_path* %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %393
  %420 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %421 = call i32 @PTR_ERR(%struct.ext4_ext_path* %420)
  store i32 %421, i32* %27, align 4
  br label %631

422:                                              ; preds = %393
  %423 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %424 = load i32, i32* %25, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %423, i64 %425
  %427 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %426, i32 0, i32 1
  %428 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %427, align 8
  store %struct.ext4_extent_header* %428, %struct.ext4_extent_header** %20, align 8
  %429 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %430 = load i32, i32* %25, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %429, i64 %431
  %433 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %432, i32 0, i32 0
  %434 = load %struct.ext4_extent*, %struct.ext4_extent** %433, align 8
  store %struct.ext4_extent* %434, %struct.ext4_extent** %14, align 8
  %435 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %436 = icmp ne %struct.ext4_extent* %435, %15
  br i1 %436, label %437, label %439

437:                                              ; preds = %422
  %438 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %438, %struct.ext4_extent** %18, align 8
  br label %439

439:                                              ; preds = %437, %422
  %440 = load i32*, i32** %8, align 8
  %441 = load %struct.inode*, %struct.inode** %9, align 8
  %442 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %443 = load i32, i32* %25, align 4
  %444 = zext i32 %443 to i64
  %445 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %442, i64 %444
  %446 = call i32 @ext4_ext_get_access(i32* %440, %struct.inode* %441, %struct.ext4_ext_path* %445)
  store i32 %446, i32* %27, align 4
  %447 = load i32, i32* %27, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %450

449:                                              ; preds = %439
  br label %631

450:                                              ; preds = %439
  %451 = load i32, i32* %12, align 4
  store i32 %451, i32* %23, align 4
  %452 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %453 = load i8*, i8** %452, align 8
  %454 = call i32 @le16_to_cpu(i8* %453)
  %455 = load i32, i32* @EXT4_EXT_ZERO_LEN, align 4
  %456 = icmp sle i32 %454, %455
  br i1 %456, label %457, label %490

457:                                              ; preds = %450
  %458 = load i32, i32* %11, align 4
  %459 = load i32, i32* %21, align 4
  %460 = icmp ne i32 %458, %459
  br i1 %460, label %461, label %490

461:                                              ; preds = %457
  %462 = load i32, i32* %29, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %490

464:                                              ; preds = %461
  %465 = load %struct.inode*, %struct.inode** %9, align 8
  %466 = call i32 @ext4_ext_zeroout(%struct.inode* %465, %struct.ext4_extent* %16)
  store i32 %466, i32* %27, align 4
  %467 = load i32, i32* %27, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %464
  br label %643

470:                                              ; preds = %464
  %471 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %472 = load i8*, i8** %471, align 8
  %473 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %474 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %473, i32 0, i32 1
  store i8* %472, i8** %474, align 8
  %475 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %476 = load i8*, i8** %475, align 8
  %477 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %478 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %477, i32 0, i32 0
  store i8* %476, i8** %478, align 8
  %479 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %480 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %481 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %479, i64 %480)
  %482 = load i32*, i32** %8, align 8
  %483 = load %struct.inode*, %struct.inode** %9, align 8
  %484 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %485 = load i32, i32* %25, align 4
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %484, i64 %486
  %488 = call i32 @ext4_ext_dirty(i32* %482, %struct.inode* %483, %struct.ext4_ext_path* %487)
  %489 = load i32, i32* %23, align 4
  store i32 %489, i32* %7, align 4
  br label %665

490:                                              ; preds = %461, %457, %450
  br label %491

491:                                              ; preds = %490, %190
  %492 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %493 = icmp ne %struct.ext4_extent* %492, null
  br i1 %493, label %494, label %515

494:                                              ; preds = %491
  %495 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %496 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %497 = icmp ne %struct.ext4_extent* %495, %496
  br i1 %497, label %498, label %515

498:                                              ; preds = %494
  %499 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %499, %struct.ext4_extent** %17, align 8
  %500 = load i32, i32* %11, align 4
  %501 = load i32, i32* %21, align 4
  %502 = sub i32 %500, %501
  %503 = call i8* @cpu_to_le16(i32 %502)
  %504 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %505 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %504, i32 0, i32 0
  store i8* %503, i8** %505, align 8
  %506 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %507 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %506)
  %508 = load i32*, i32** %8, align 8
  %509 = load %struct.inode*, %struct.inode** %9, align 8
  %510 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %511 = load i32, i32* %25, align 4
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %510, i64 %512
  %514 = call i32 @ext4_ext_dirty(i32* %508, %struct.inode* %509, %struct.ext4_ext_path* %513)
  store %struct.ext4_extent* %15, %struct.ext4_extent** %18, align 8
  br label %515

515:                                              ; preds = %498, %494, %491
  %516 = load i32, i32* %11, align 4
  %517 = call i8* @cpu_to_le32(i32 %516)
  %518 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %519 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %518, i32 0, i32 1
  store i8* %517, i8** %519, align 8
  %520 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %521 = load i64, i64* %26, align 8
  %522 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %520, i64 %521)
  %523 = load i32, i32* %23, align 4
  %524 = call i8* @cpu_to_le16(i32 %523)
  %525 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %526 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %525, i32 0, i32 0
  store i8* %524, i8** %526, align 8
  %527 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %528 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %529 = icmp ne %struct.ext4_extent* %527, %528
  br i1 %529, label %530, label %531

530:                                              ; preds = %515
  br label %586

531:                                              ; preds = %515
  %532 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %533 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %20, align 8
  %534 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %533)
  %535 = icmp ugt %struct.ext4_extent* %532, %534
  br i1 %535, label %536, label %558

536:                                              ; preds = %531
  %537 = load %struct.inode*, %struct.inode** %9, align 8
  %538 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %539 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %540 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %539, i64 -1
  %541 = call i32 @ext4_ext_try_to_merge(%struct.inode* %537, %struct.ext4_ext_path* %538, %struct.ext4_extent* %540)
  store i32 %541, i32* %28, align 4
  %542 = load i32, i32* %28, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %557

544:                                              ; preds = %536
  %545 = load i32*, i32** %8, align 8
  %546 = load %struct.inode*, %struct.inode** %9, align 8
  %547 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %548 = call i32 @ext4_ext_correct_indexes(i32* %545, %struct.inode* %546, %struct.ext4_ext_path* %547)
  store i32 %548, i32* %27, align 4
  %549 = load i32, i32* %27, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %544
  br label %631

552:                                              ; preds = %544
  %553 = load %struct.inode*, %struct.inode** %9, align 8
  %554 = call i32 @ext_depth(%struct.inode* %553)
  store i32 %554, i32* %25, align 4
  %555 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %556 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %555, i32 -1
  store %struct.ext4_extent* %556, %struct.ext4_extent** %18, align 8
  br label %557

557:                                              ; preds = %552, %536
  br label %558

558:                                              ; preds = %557, %531
  %559 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %560 = icmp ne %struct.ext4_extent* %559, null
  br i1 %560, label %578, label %561

561:                                              ; preds = %558
  %562 = load %struct.inode*, %struct.inode** %9, align 8
  %563 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %564 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %565 = call i32 @ext4_ext_try_to_merge(%struct.inode* %562, %struct.ext4_ext_path* %563, %struct.ext4_extent* %564)
  store i32 %565, i32* %28, align 4
  %566 = load i32, i32* %28, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %577

568:                                              ; preds = %561
  %569 = load i32*, i32** %8, align 8
  %570 = load %struct.inode*, %struct.inode** %9, align 8
  %571 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %572 = call i32 @ext4_ext_correct_indexes(i32* %569, %struct.inode* %570, %struct.ext4_ext_path* %571)
  store i32 %572, i32* %27, align 4
  %573 = load i32, i32* %27, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %576

575:                                              ; preds = %568
  br label %631

576:                                              ; preds = %568
  br label %577

577:                                              ; preds = %576, %561
  br label %578

578:                                              ; preds = %577, %558
  %579 = load i32*, i32** %8, align 8
  %580 = load %struct.inode*, %struct.inode** %9, align 8
  %581 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %582 = load i32, i32* %25, align 4
  %583 = zext i32 %582 to i64
  %584 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %581, i64 %583
  %585 = call i32 @ext4_ext_dirty(i32* %579, %struct.inode* %580, %struct.ext4_ext_path* %584)
  store i32 %585, i32* %27, align 4
  br label %631

586:                                              ; preds = %530
  %587 = load i32*, i32** %8, align 8
  %588 = load %struct.inode*, %struct.inode** %9, align 8
  %589 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %590 = load i32, i32* %13, align 4
  %591 = call i32 @ext4_ext_insert_extent(i32* %587, %struct.inode* %588, %struct.ext4_ext_path* %589, %struct.ext4_extent* %15, i32 %590)
  store i32 %591, i32* %27, align 4
  %592 = load i32, i32* %27, align 4
  %593 = load i32, i32* @ENOSPC, align 4
  %594 = sub nsw i32 0, %593
  %595 = icmp eq i32 %592, %594
  br i1 %595, label %596, label %625

596:                                              ; preds = %586
  %597 = load i32, i32* %29, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %625

599:                                              ; preds = %596
  %600 = load %struct.inode*, %struct.inode** %9, align 8
  %601 = call i32 @ext4_ext_zeroout(%struct.inode* %600, %struct.ext4_extent* %16)
  store i32 %601, i32* %27, align 4
  %602 = load i32, i32* %27, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %605

604:                                              ; preds = %599
  br label %643

605:                                              ; preds = %599
  %606 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %607 = load i8*, i8** %606, align 8
  %608 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %609 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %608, i32 0, i32 1
  store i8* %607, i8** %609, align 8
  %610 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %611 = load i8*, i8** %610, align 8
  %612 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %613 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %612, i32 0, i32 0
  store i8* %611, i8** %613, align 8
  %614 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %615 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %616 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %614, i64 %615)
  %617 = load i32*, i32** %8, align 8
  %618 = load %struct.inode*, %struct.inode** %9, align 8
  %619 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %620 = load i32, i32* %25, align 4
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %619, i64 %621
  %623 = call i32 @ext4_ext_dirty(i32* %617, %struct.inode* %618, %struct.ext4_ext_path* %622)
  %624 = load i32, i32* %23, align 4
  store i32 %624, i32* %7, align 4
  br label %665

625:                                              ; preds = %596, %586
  %626 = load i32, i32* %27, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %625
  br label %643

629:                                              ; preds = %625
  br label %630

630:                                              ; preds = %629
  br label %631

631:                                              ; preds = %630, %578, %575, %551, %449, %419, %122
  %632 = load %struct.inode*, %struct.inode** %9, align 8
  %633 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %634 = call i32 @ext4_ext_show_leaf(%struct.inode* %632, %struct.ext4_ext_path* %633)
  %635 = load i32, i32* %27, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %639

637:                                              ; preds = %631
  %638 = load i32, i32* %27, align 4
  br label %641

639:                                              ; preds = %631
  %640 = load i32, i32* %23, align 4
  br label %641

641:                                              ; preds = %639, %637
  %642 = phi i32 [ %638, %637 ], [ %640, %639 ]
  store i32 %642, i32* %7, align 4
  br label %665

643:                                              ; preds = %628, %604, %469, %391, %367, %273, %249, %136
  %644 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %645 = load i8*, i8** %644, align 8
  %646 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %647 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %646, i32 0, i32 1
  store i8* %645, i8** %647, align 8
  %648 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %649 = load i8*, i8** %648, align 8
  %650 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %651 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %650, i32 0, i32 0
  store i8* %649, i8** %651, align 8
  %652 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %653 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %654 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %652, i64 %653)
  %655 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %656 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %655)
  %657 = load i32*, i32** %8, align 8
  %658 = load %struct.inode*, %struct.inode** %9, align 8
  %659 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %660 = load i32, i32* %25, align 4
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %659, i64 %661
  %663 = call i32 @ext4_ext_dirty(i32* %657, %struct.inode* %658, %struct.ext4_ext_path* %662)
  %664 = load i32, i32* %27, align 4
  store i32 %664, i32* %7, align 4
  br label %665

665:                                              ; preds = %643, %641, %605, %470, %368, %326, %315, %313, %293, %250, %137
  %666 = load i32, i32* %7, align 4
  ret i32 %666
}

declare dso_local i32 @ext_debug(i8*, i32, i64, i32) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_zeroout(%struct.inode*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_ext_insert_extent(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i32, %struct.ext4_ext_path*) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_try_to_merge(%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_correct_indexes(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
