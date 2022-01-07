; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_dx_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_dx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32, i32 }
%struct.inode = type { i64, i32 }
%struct.dx_hash_info = type { i64, i64, i32 }
%struct.dx_frame = type { %struct.buffer_head*, %struct.dx_entry*, %struct.dx_entry* }
%struct.buffer_head = type { i64 }
%struct.dx_entry = type { i32 }
%struct.dx_root = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.dx_node = type { %struct.dx_entry* }

@DX_HASH_TEA = common dso_local global i64 0, align 8
@DX_HASH_HALF_MD4 = common dso_local global i64 0, align 8
@DX_HASH_LEGACY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unrecognised inode hash code %d\00", align 1
@ERR_BAD_DX_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unimplemented inode hash flags: %#06x\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unimplemented inode hash depth: %#06x\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"dx entry: limit != root limit\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Look up %x\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"dx entry: no count or count > limit\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" %x->%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"dx entry: limit != node limit\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Corrupt dir inode %ld, running e2fsck is recommended.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dx_frame* (%struct.qstr*, %struct.inode*, %struct.dx_hash_info*, %struct.dx_frame*, i32*)* @dx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dx_frame* @dx_probe(%struct.qstr* %0, %struct.inode* %1, %struct.dx_hash_info* %2, %struct.dx_frame* %3, i32* %4) #0 {
  %6 = alloca %struct.dx_frame*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dx_hash_info*, align 8
  %10 = alloca %struct.dx_frame*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dx_entry*, align 8
  %15 = alloca %struct.dx_entry*, align 8
  %16 = alloca %struct.dx_entry*, align 8
  %17 = alloca %struct.dx_entry*, align 8
  %18 = alloca %struct.dx_entry*, align 8
  %19 = alloca %struct.dx_root*, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.dx_frame*, align 8
  %22 = alloca i64, align 8
  store %struct.qstr* %0, %struct.qstr** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.dx_hash_info* %2, %struct.dx_hash_info** %9, align 8
  store %struct.dx_frame* %3, %struct.dx_frame** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.dx_frame*, %struct.dx_frame** %10, align 8
  store %struct.dx_frame* %23, %struct.dx_frame** %21, align 8
  %24 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %25 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %24, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %25, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call %struct.buffer_head* @ext4_bread(i32* null, %struct.inode* %26, i32 0, i32 0, i32* %27)
  store %struct.buffer_head* %28, %struct.buffer_head** %20, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %318

31:                                               ; preds = %5
  %32 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.dx_root*
  store %struct.dx_root* %35, %struct.dx_root** %19, align 8
  %36 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %37 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DX_HASH_TEA, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %31
  %43 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %44 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DX_HASH_HALF_MD4, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %51 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DX_HASH_LEGACY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %61 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, ...) @ext4_warning(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %66 = call i32 @brelse(%struct.buffer_head* %65)
  %67 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  br label %318

69:                                               ; preds = %49, %42, %31
  %70 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %71 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.dx_hash_info*, %struct.dx_hash_info** %9, align 8
  %75 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.dx_hash_info*, %struct.dx_hash_info** %9, align 8
  %77 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DX_HASH_TEA, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %69
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.TYPE_4__* @EXT4_SB(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.dx_hash_info*, %struct.dx_hash_info** %9, align 8
  %89 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %81, %69
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_4__* @EXT4_SB(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.dx_hash_info*, %struct.dx_hash_info** %9, align 8
  %100 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.qstr*, %struct.qstr** %7, align 8
  %102 = icmp ne %struct.qstr* %101, null
  br i1 %102, label %103, label %112

103:                                              ; preds = %92
  %104 = load %struct.qstr*, %struct.qstr** %7, align 8
  %105 = getelementptr inbounds %struct.qstr, %struct.qstr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.qstr*, %struct.qstr** %7, align 8
  %108 = getelementptr inbounds %struct.qstr, %struct.qstr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dx_hash_info*, %struct.dx_hash_info** %9, align 8
  %111 = call i32 @ext4fs_dirhash(i32 %106, i32 %109, %struct.dx_hash_info* %110)
  br label %112

112:                                              ; preds = %103, %92
  %113 = load %struct.dx_hash_info*, %struct.dx_hash_info** %9, align 8
  %114 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %22, align 8
  %116 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %117 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %112
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %127 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @ext4_warning(i32 %125, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %132 = call i32 @brelse(%struct.buffer_head* %131)
  %133 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %134 = load i32*, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  br label %318

135:                                              ; preds = %112
  %136 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %137 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %13, align 4
  %140 = icmp ugt i32 %139, 1
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %146 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @ext4_warning(i32 %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %151 = call i32 @brelse(%struct.buffer_head* %150)
  %152 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %153 = load i32*, i32** %11, align 8
  store i32 %152, i32* %153, align 4
  br label %318

154:                                              ; preds = %135
  %155 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %156 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %155, i32 0, i32 0
  %157 = bitcast %struct.TYPE_3__* %156 to i8*
  %158 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %159 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %157, i64 %162
  %164 = bitcast i8* %163 to %struct.dx_entry*
  store %struct.dx_entry* %164, %struct.dx_entry** %15, align 8
  %165 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  %166 = call i32 @dx_get_limit(%struct.dx_entry* %165)
  %167 = load %struct.inode*, %struct.inode** %8, align 8
  %168 = load %struct.dx_root*, %struct.dx_root** %19, align 8
  %169 = getelementptr inbounds %struct.dx_root, %struct.dx_root* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dx_root_limit(%struct.inode* %167, i32 %171)
  %173 = icmp ne i32 %166, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %154
  %175 = load %struct.inode*, %struct.inode** %8, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, ...) @ext4_warning(i32 %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %179 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %180 = call i32 @brelse(%struct.buffer_head* %179)
  %181 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %182 = load i32*, i32** %11, align 8
  store i32 %181, i32* %182, align 4
  br label %318

183:                                              ; preds = %154
  %184 = load i64, i64* %22, align 8
  %185 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %184)
  %186 = call i32 @dxtrace(i32 %185)
  br label %187

187:                                              ; preds = %183, %300
  %188 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  %189 = call i32 @dx_get_count(%struct.dx_entry* %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  %195 = call i32 @dx_get_limit(%struct.dx_entry* %194)
  %196 = icmp ugt i32 %193, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %192, %187
  %198 = load %struct.inode*, %struct.inode** %8, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i32, i8*, ...) @ext4_warning(i32 %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %202 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %203 = call i32 @brelse(%struct.buffer_head* %202)
  %204 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %205 = load i32*, i32** %11, align 8
  store i32 %204, i32* %205, align 4
  br label %305

206:                                              ; preds = %192
  %207 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  %208 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %207, i64 1
  store %struct.dx_entry* %208, %struct.dx_entry** %16, align 8
  %209 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  %210 = load i32, i32* %12, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %209, i64 %211
  %213 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %212, i64 -1
  store %struct.dx_entry* %213, %struct.dx_entry** %17, align 8
  br label %214

214:                                              ; preds = %240, %206
  %215 = load %struct.dx_entry*, %struct.dx_entry** %16, align 8
  %216 = load %struct.dx_entry*, %struct.dx_entry** %17, align 8
  %217 = icmp ule %struct.dx_entry* %215, %216
  br i1 %217, label %218, label %241

218:                                              ; preds = %214
  %219 = load %struct.dx_entry*, %struct.dx_entry** %16, align 8
  %220 = load %struct.dx_entry*, %struct.dx_entry** %17, align 8
  %221 = load %struct.dx_entry*, %struct.dx_entry** %16, align 8
  %222 = ptrtoint %struct.dx_entry* %220 to i64
  %223 = ptrtoint %struct.dx_entry* %221 to i64
  %224 = sub i64 %222, %223
  %225 = sdiv exact i64 %224, 4
  %226 = sdiv i64 %225, 2
  %227 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %219, i64 %226
  store %struct.dx_entry* %227, %struct.dx_entry** %18, align 8
  %228 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %229 = call i32 @dxtrace(i32 %228)
  %230 = load %struct.dx_entry*, %struct.dx_entry** %18, align 8
  %231 = call i64 @dx_get_hash(%struct.dx_entry* %230)
  %232 = load i64, i64* %22, align 8
  %233 = icmp sgt i64 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %218
  %235 = load %struct.dx_entry*, %struct.dx_entry** %18, align 8
  %236 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %235, i64 -1
  store %struct.dx_entry* %236, %struct.dx_entry** %17, align 8
  br label %240

237:                                              ; preds = %218
  %238 = load %struct.dx_entry*, %struct.dx_entry** %18, align 8
  %239 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %238, i64 1
  store %struct.dx_entry* %239, %struct.dx_entry** %16, align 8
  br label %240

240:                                              ; preds = %237, %234
  br label %214

241:                                              ; preds = %214
  %242 = load %struct.dx_entry*, %struct.dx_entry** %16, align 8
  %243 = getelementptr inbounds %struct.dx_entry, %struct.dx_entry* %242, i64 -1
  store %struct.dx_entry* %243, %struct.dx_entry** %14, align 8
  %244 = load %struct.dx_entry*, %struct.dx_entry** %14, align 8
  %245 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  %246 = icmp eq %struct.dx_entry* %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %251

248:                                              ; preds = %241
  %249 = load %struct.dx_entry*, %struct.dx_entry** %14, align 8
  %250 = call i64 @dx_get_hash(%struct.dx_entry* %249)
  br label %251

251:                                              ; preds = %248, %247
  %252 = phi i64 [ 0, %247 ], [ %250, %248 ]
  %253 = load %struct.dx_entry*, %struct.dx_entry** %14, align 8
  %254 = call i32 @dx_get_block(%struct.dx_entry* %253)
  %255 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %252, i32 %254)
  %256 = call i32 @dxtrace(i32 %255)
  %257 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %258 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %259 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %258, i32 0, i32 0
  store %struct.buffer_head* %257, %struct.buffer_head** %259, align 8
  %260 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  %261 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %262 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %261, i32 0, i32 2
  store %struct.dx_entry* %260, %struct.dx_entry** %262, align 8
  %263 = load %struct.dx_entry*, %struct.dx_entry** %14, align 8
  %264 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %265 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %264, i32 0, i32 1
  store %struct.dx_entry* %263, %struct.dx_entry** %265, align 8
  %266 = load i32, i32* %13, align 4
  %267 = add i32 %266, -1
  store i32 %267, i32* %13, align 4
  %268 = icmp ne i32 %266, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %251
  %270 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  store %struct.dx_frame* %270, %struct.dx_frame** %6, align 8
  br label %332

271:                                              ; preds = %251
  %272 = load %struct.inode*, %struct.inode** %8, align 8
  %273 = load %struct.dx_entry*, %struct.dx_entry** %14, align 8
  %274 = call i32 @dx_get_block(%struct.dx_entry* %273)
  %275 = load i32*, i32** %11, align 8
  %276 = call %struct.buffer_head* @ext4_bread(i32* null, %struct.inode* %272, i32 %274, i32 0, i32* %275)
  store %struct.buffer_head* %276, %struct.buffer_head** %20, align 8
  %277 = icmp ne %struct.buffer_head* %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %271
  br label %305

279:                                              ; preds = %271
  %280 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %281 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to %struct.dx_node*
  %284 = getelementptr inbounds %struct.dx_node, %struct.dx_node* %283, i32 0, i32 0
  %285 = load %struct.dx_entry*, %struct.dx_entry** %284, align 8
  store %struct.dx_entry* %285, %struct.dx_entry** %15, align 8
  store %struct.dx_entry* %285, %struct.dx_entry** %14, align 8
  %286 = load %struct.dx_entry*, %struct.dx_entry** %15, align 8
  %287 = call i32 @dx_get_limit(%struct.dx_entry* %286)
  %288 = load %struct.inode*, %struct.inode** %8, align 8
  %289 = call i32 @dx_node_limit(%struct.inode* %288)
  %290 = icmp ne i32 %287, %289
  br i1 %290, label %291, label %300

291:                                              ; preds = %279
  %292 = load %struct.inode*, %struct.inode** %8, align 8
  %293 = getelementptr inbounds %struct.inode, %struct.inode* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i32, i8*, ...) @ext4_warning(i32 %294, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %296 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %297 = call i32 @brelse(%struct.buffer_head* %296)
  %298 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %299 = load i32*, i32** %11, align 8
  store i32 %298, i32* %299, align 4
  br label %305

300:                                              ; preds = %279
  %301 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %302 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %301, i32 1
  store %struct.dx_frame* %302, %struct.dx_frame** %21, align 8
  %303 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %304 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %303, i32 0, i32 0
  store %struct.buffer_head* null, %struct.buffer_head** %304, align 8
  br label %187

305:                                              ; preds = %291, %278, %197
  br label %306

306:                                              ; preds = %310, %305
  %307 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %308 = load %struct.dx_frame*, %struct.dx_frame** %10, align 8
  %309 = icmp uge %struct.dx_frame* %307, %308
  br i1 %309, label %310, label %317

310:                                              ; preds = %306
  %311 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %312 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %311, i32 0, i32 0
  %313 = load %struct.buffer_head*, %struct.buffer_head** %312, align 8
  %314 = call i32 @brelse(%struct.buffer_head* %313)
  %315 = load %struct.dx_frame*, %struct.dx_frame** %21, align 8
  %316 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %315, i32 -1
  store %struct.dx_frame* %316, %struct.dx_frame** %21, align 8
  br label %306

317:                                              ; preds = %306
  br label %318

318:                                              ; preds = %317, %174, %141, %122, %56, %30
  %319 = load i32*, i32** %11, align 8
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %331

323:                                              ; preds = %318
  %324 = load %struct.inode*, %struct.inode** %8, align 8
  %325 = getelementptr inbounds %struct.inode, %struct.inode* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.inode*, %struct.inode** %8, align 8
  %328 = getelementptr inbounds %struct.inode, %struct.inode* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i32 (i32, i8*, ...) @ext4_warning(i32 %326, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i64 %329)
  br label %331

331:                                              ; preds = %323, %318
  store %struct.dx_frame* null, %struct.dx_frame** %6, align 8
  br label %332

332:                                              ; preds = %331, %269
  %333 = load %struct.dx_frame*, %struct.dx_frame** %6, align 8
  ret %struct.dx_frame* %333
}

declare dso_local %struct.buffer_head* @ext4_bread(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @ext4_warning(i32, i8*, ...) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(i32) #1

declare dso_local i32 @ext4fs_dirhash(i32, i32, %struct.dx_hash_info*) #1

declare dso_local i32 @dx_get_limit(%struct.dx_entry*) #1

declare dso_local i32 @dx_root_limit(%struct.inode*, i32) #1

declare dso_local i32 @dxtrace(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @dx_get_count(%struct.dx_entry*) #1

declare dso_local i64 @dx_get_hash(%struct.dx_entry*) #1

declare dso_local i32 @dx_get_block(%struct.dx_entry*) #1

declare dso_local i32 @dx_node_limit(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
