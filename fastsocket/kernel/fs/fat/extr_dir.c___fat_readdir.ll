; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c___fat_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c___fat_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.file = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_4__, %struct.nls_table* }
%struct.TYPE_4__ = type { i16, i32, i32, i64 }
%struct.nls_table = type { i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_dir_entry = type { i64*, i32, i32 }
%struct.fat_ioctl_filldir_callback = type { i8*, i32, i8*, i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@FAT_MAX_SHORT_SIZE = common dso_local global i32 0, align 4
@MSDOS_ROOT_INO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DELETED_FLAG = common dso_local global i64 0, align 8
@ATTR_EXT = common dso_local global i32 0, align 4
@ATTR_VOLUME = common dso_local global i32 0, align 4
@PARSE_INVALID = common dso_local global i32 0, align 4
@PARSE_NOT_LONGNAME = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@FAT_MAX_UNI_CHARS = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@FAT_MAX_UNI_SIZE = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@CASE_LOWER_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@CASE_LOWER_EXT = common dso_local global i32 0, align 4
@MSDOS_DOT = common dso_local global i32 0, align 4
@MSDOS_DOTDOT = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i8*, i64 (i8*, i8*, i32, i64, i64, i32)*, i32, i32)* @__fat_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fat_readdir(%struct.inode* %0, %struct.file* %1, i8* %2, i64 (i8*, i8*, i32, i64, i64, i32)* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64 (i8*, i8*, i32, i64, i64, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.msdos_sb_info*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.msdos_dir_entry*, align 8
  %17 = alloca %struct.nls_table*, align 8
  %18 = alloca i8, align 1
  %19 = alloca [14 x i32], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i16, align 2
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.fat_ioctl_filldir_callback*, align 8
  %50 = alloca i32, align 4
  %51 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 (i8*, i8*, i32, i64, i64, i32)* %3, i64 (i8*, i8*, i32, i64, i64, i32)** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load %struct.super_block*, %struct.super_block** %53, align 8
  store %struct.super_block* %54, %struct.super_block** %13, align 8
  %55 = load %struct.super_block*, %struct.super_block** %13, align 8
  %56 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %55)
  store %struct.msdos_sb_info* %56, %struct.msdos_sb_info** %14, align 8
  %57 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %14, align 8
  %58 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %57, i32 0, i32 1
  %59 = load %struct.nls_table*, %struct.nls_table** %58, align 8
  store %struct.nls_table* %59, %struct.nls_table** %17, align 8
  store i32* null, i32** %20, align 8
  %60 = load i32, i32* @MSDOS_NAME, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %22, align 8
  %63 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %23, align 8
  %64 = load i32, i32* @FAT_MAX_SHORT_SIZE, align 4
  %65 = zext i32 %64 to i64
  %66 = alloca i8, i64 %65, align 16
  store i64 %65, i64* %24, align 8
  store i8* %66, i8** %25, align 8
  %67 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %14, align 8
  %68 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i16, i16* %69, align 8
  store i16 %70, i16* %26, align 2
  %71 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %14, align 8
  %72 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %27, align 4
  %75 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %14, align 8
  %76 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %28, align 4
  store i8* null, i8** %29, align 8
  store i64* %31, i64** %33, align 8
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  store i32 0, i32* %44, align 4
  %79 = load %struct.super_block*, %struct.super_block** %13, align 8
  %80 = call i32 @lock_super(%struct.super_block* %79)
  %81 = load %struct.file*, %struct.file** %8, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %34, align 4
  %84 = load %struct.inode*, %struct.inode** %7, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %6
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i32, i32* %34, align 4
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load i64 (i8*, i8*, i32, i64, i64, i32)*, i64 (i8*, i8*, i32, i64, i64, i32)** %10, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %34, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %34, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %101 = load i32, i32* @DT_DIR, align 4
  %102 = call i64 %94(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %97, i64 %99, i64 %100, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %617

105:                                              ; preds = %93
  %106 = load i32, i32* %34, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %34, align 4
  %108 = load %struct.file*, %struct.file** %8, align 8
  %109 = getelementptr inbounds %struct.file, %struct.file* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %90

112:                                              ; preds = %90
  %113 = load i32, i32* %34, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i64 2, i64* %32, align 8
  store i64* %32, i64** %33, align 8
  store i32 0, i32* %34, align 4
  br label %116

116:                                              ; preds = %115, %112
  br label %117

117:                                              ; preds = %116, %6
  %118 = load i32, i32* %34, align 4
  %119 = sext i32 %118 to i64
  %120 = and i64 %119, 15
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %44, align 4
  br label %617

125:                                              ; preds = %117
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %126

126:                                              ; preds = %600, %125
  %127 = load %struct.inode*, %struct.inode** %7, align 8
  %128 = call i32 @fat_get_entry(%struct.inode* %127, i32* %34, %struct.buffer_head** %15, %struct.msdos_dir_entry** %16)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %604

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %218, %131
  store i8 0, i8* %18, align 1
  %133 = load i32, i32* %27, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %175

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %175, label %138

138:                                              ; preds = %135
  %139 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %140 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @DELETED_FLAG, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %600

147:                                              ; preds = %138
  %148 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %149 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @ATTR_EXT, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %155 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ATTR_VOLUME, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %600

161:                                              ; preds = %153, %147
  %162 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %163 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @ATTR_EXT, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %169 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = call i64 @IS_FREE(i64* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %600

174:                                              ; preds = %167, %161
  br label %190

175:                                              ; preds = %135, %132
  %176 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %177 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ATTR_VOLUME, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %175
  %183 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %184 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = call i64 @IS_FREE(i64* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182, %175
  br label %600

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %174
  %191 = load i32, i32* %27, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %251

193:                                              ; preds = %190
  %194 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %195 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @ATTR_EXT, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %251

199:                                              ; preds = %193
  %200 = load %struct.inode*, %struct.inode** %7, align 8
  %201 = call i32 @fat_parse_long(%struct.inode* %200, i32* %34, %struct.buffer_head** %15, %struct.msdos_dir_entry** %16, i32** %20, i8* %18)
  store i32 %201, i32* %45, align 4
  %202 = load i32, i32* %45, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i32, i32* %34, align 4
  %206 = load %struct.file*, %struct.file** %8, align 8
  %207 = getelementptr inbounds %struct.file, %struct.file* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %45, align 4
  store i32 %208, i32* %44, align 4
  br label %617

209:                                              ; preds = %199
  %210 = load i32, i32* %45, align 4
  %211 = load i32, i32* @PARSE_INVALID, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %600

214:                                              ; preds = %209
  %215 = load i32, i32* %45, align 4
  %216 = load i32, i32* @PARSE_NOT_LONGNAME, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %132

219:                                              ; preds = %214
  %220 = load i32, i32* %45, align 4
  %221 = load i32, i32* @PARSE_EOF, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %604

224:                                              ; preds = %219
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  %228 = load i8, i8* %18, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %250

230:                                              ; preds = %227
  %231 = load i32*, i32** %20, align 8
  %232 = load i32, i32* @FAT_MAX_UNI_CHARS, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = bitcast i32* %234 to i8*
  store i8* %235, i8** %46, align 8
  %236 = load i32, i32* @PATH_MAX, align 4
  %237 = load i32, i32* @FAT_MAX_UNI_SIZE, align 4
  %238 = sub nsw i32 %236, %237
  store i32 %238, i32* %47, align 4
  %239 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %14, align 8
  %240 = load i32*, i32** %20, align 8
  %241 = load i8*, i8** %46, align 8
  %242 = load i32, i32* %47, align 4
  %243 = call i32 @fat_uni_to_x8(%struct.msdos_sb_info* %239, i32* %240, i8* %241, i32 %242)
  store i32 %243, i32* %48, align 4
  %244 = load i8*, i8** %46, align 8
  store i8* %244, i8** %29, align 8
  %245 = load i32, i32* %48, align 4
  store i32 %245, i32* %43, align 4
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %230
  br label %520

249:                                              ; preds = %230
  br label %250

250:                                              ; preds = %249, %227
  br label %251

251:                                              ; preds = %250, %193, %190
  %252 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %14, align 8
  %253 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %251
  store i8* %66, i8** %25, align 8
  store i32 0, i32* %42, align 4
  %258 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %259 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @ATTR_HIDDEN, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load i8*, i8** %25, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %25, align 8
  store i8 46, i8* %265, align 1
  store i32 1, i32* %42, align 4
  br label %267

267:                                              ; preds = %264, %257
  br label %268

268:                                              ; preds = %267, %251
  %269 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %270 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = call i32 @memcpy(i8* %63, i64* %271, i32 8)
  %273 = getelementptr inbounds i8, i8* %63, i64 0
  %274 = load i8, i8* %273, align 16
  %275 = zext i8 %274 to i32
  %276 = icmp eq i32 %275, 5
  br i1 %276, label %277, label %279

277:                                              ; preds = %268
  %278 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 -27, i8* %278, align 16
  br label %279

279:                                              ; preds = %277, %268
  store i32 0, i32* %37, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  br label %280

280:                                              ; preds = %370, %279
  %281 = load i32, i32* %37, align 4
  %282 = icmp slt i32 %281, 8
  br i1 %282, label %283, label %371

283:                                              ; preds = %280
  %284 = load i32, i32* %37, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %63, i64 %285
  %287 = load i8, i8* %286, align 1
  store i8 %287, i8* %21, align 1
  %288 = icmp ne i8 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %283
  br label %371

290:                                              ; preds = %283
  %291 = load %struct.nls_table*, %struct.nls_table** %17, align 8
  %292 = load i32, i32* %37, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %63, i64 %293
  %295 = load i32, i32* %37, align 4
  %296 = sub nsw i32 8, %295
  %297 = load i32, i32* %39, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %39, align 4
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds [14 x i32], [14 x i32]* %19, i64 0, i64 %299
  %301 = load i16, i16* %26, align 2
  %302 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %303 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @CASE_LOWER_BASE, align 4
  %306 = and i32 %304, %305
  %307 = call i32 @fat_shortname2uni(%struct.nls_table* %291, i8* %294, i32 %296, i32* %300, i16 zeroext %301, i32 %306)
  store i32 %307, i32* %36, align 4
  %308 = load i32, i32* %36, align 4
  %309 = icmp sle i32 %308, 1
  br i1 %309, label %310, label %343

310:                                              ; preds = %290
  %311 = load i32, i32* %28, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %325, label %313

313:                                              ; preds = %310
  %314 = load i8, i8* %21, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp sge i32 %315, 65
  br i1 %316, label %317, label %325

317:                                              ; preds = %313
  %318 = load i8, i8* %21, align 1
  %319 = zext i8 %318 to i32
  %320 = icmp sle i32 %319, 90
  br i1 %320, label %321, label %325

321:                                              ; preds = %317
  %322 = load i8, i8* %21, align 1
  %323 = zext i8 %322 to i32
  %324 = add nsw i32 %323, 32
  br label %328

325:                                              ; preds = %317, %313, %310
  %326 = load i8, i8* %21, align 1
  %327 = zext i8 %326 to i32
  br label %328

328:                                              ; preds = %325, %321
  %329 = phi i32 [ %324, %321 ], [ %327, %325 ]
  %330 = trunc i32 %329 to i8
  %331 = load i8*, i8** %25, align 8
  %332 = load i32, i32* %37, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %37, align 4
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  store i8 %330, i8* %335, align 1
  %336 = load i8, i8* %21, align 1
  %337 = zext i8 %336 to i32
  %338 = icmp ne i32 %337, 32
  br i1 %338, label %339, label %342

339:                                              ; preds = %328
  %340 = load i32, i32* %37, align 4
  store i32 %340, i32* %40, align 4
  %341 = load i32, i32* %39, align 4
  store i32 %341, i32* %41, align 4
  br label %342

342:                                              ; preds = %339, %328
  br label %370

343:                                              ; preds = %290
  %344 = load i32, i32* %39, align 4
  store i32 %344, i32* %41, align 4
  store i32 0, i32* %35, align 4
  br label %345

345:                                              ; preds = %366, %343
  %346 = load i32, i32* %35, align 4
  %347 = load i32, i32* %36, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %345
  %350 = load i32, i32* %37, align 4
  %351 = icmp slt i32 %350, 8
  br label %352

352:                                              ; preds = %349, %345
  %353 = phi i1 [ false, %345 ], [ %351, %349 ]
  br i1 %353, label %354, label %369

354:                                              ; preds = %352
  %355 = load i32, i32* %37, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %63, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = load i8*, i8** %25, align 8
  %360 = load i32, i32* %37, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %359, i64 %361
  store i8 %358, i8* %362, align 1
  %363 = load i32, i32* %37, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %37, align 4
  %365 = load i32, i32* %37, align 4
  store i32 %365, i32* %40, align 4
  br label %366

366:                                              ; preds = %354
  %367 = load i32, i32* %35, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %35, align 4
  br label %345

369:                                              ; preds = %352
  br label %370

370:                                              ; preds = %369, %342
  br label %280

371:                                              ; preds = %289, %280
  %372 = load i32, i32* %40, align 4
  store i32 %372, i32* %37, align 4
  %373 = load i32, i32* %41, align 4
  store i32 %373, i32* %39, align 4
  %374 = load %struct.nls_table*, %struct.nls_table** %17, align 8
  %375 = load i32, i32* %39, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %39, align 4
  %377 = sext i32 %375 to i64
  %378 = getelementptr inbounds [14 x i32], [14 x i32]* %19, i64 0, i64 %377
  %379 = call i32 @fat_short2uni(%struct.nls_table* %374, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %378)
  %380 = load i8*, i8** %25, align 8
  %381 = load i32, i32* %37, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %37, align 4
  %383 = sext i32 %381 to i64
  %384 = getelementptr inbounds i8, i8* %380, i64 %383
  store i8 46, i8* %384, align 1
  store i32 8, i32* %38, align 4
  br label %385

385:                                              ; preds = %480, %371
  %386 = load i32, i32* %38, align 4
  %387 = load i32, i32* @MSDOS_NAME, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %481

389:                                              ; preds = %385
  %390 = load i32, i32* %38, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %63, i64 %391
  %393 = load i8, i8* %392, align 1
  store i8 %393, i8* %21, align 1
  %394 = icmp ne i8 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %389
  br label %481

396:                                              ; preds = %389
  %397 = load %struct.nls_table*, %struct.nls_table** %17, align 8
  %398 = load i32, i32* %38, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %63, i64 %399
  %401 = load i32, i32* @MSDOS_NAME, align 4
  %402 = load i32, i32* %38, align 4
  %403 = sub nsw i32 %401, %402
  %404 = load i32, i32* %39, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %39, align 4
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds [14 x i32], [14 x i32]* %19, i64 0, i64 %406
  %408 = load i16, i16* %26, align 2
  %409 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %410 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* @CASE_LOWER_EXT, align 4
  %413 = and i32 %411, %412
  %414 = call i32 @fat_shortname2uni(%struct.nls_table* %397, i8* %400, i32 %403, i32* %407, i16 zeroext %408, i32 %413)
  store i32 %414, i32* %36, align 4
  %415 = load i32, i32* %36, align 4
  %416 = icmp sle i32 %415, 1
  br i1 %416, label %417, label %452

417:                                              ; preds = %396
  %418 = load i32, i32* %38, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %38, align 4
  %420 = load i32, i32* %28, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %434, label %422

422:                                              ; preds = %417
  %423 = load i8, i8* %21, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp sge i32 %424, 65
  br i1 %425, label %426, label %434

426:                                              ; preds = %422
  %427 = load i8, i8* %21, align 1
  %428 = zext i8 %427 to i32
  %429 = icmp sle i32 %428, 90
  br i1 %429, label %430, label %434

430:                                              ; preds = %426
  %431 = load i8, i8* %21, align 1
  %432 = zext i8 %431 to i32
  %433 = add nsw i32 %432, 32
  br label %437

434:                                              ; preds = %426, %422, %417
  %435 = load i8, i8* %21, align 1
  %436 = zext i8 %435 to i32
  br label %437

437:                                              ; preds = %434, %430
  %438 = phi i32 [ %433, %430 ], [ %436, %434 ]
  %439 = trunc i32 %438 to i8
  %440 = load i8*, i8** %25, align 8
  %441 = load i32, i32* %37, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %37, align 4
  %443 = sext i32 %441 to i64
  %444 = getelementptr inbounds i8, i8* %440, i64 %443
  store i8 %439, i8* %444, align 1
  %445 = load i8, i8* %21, align 1
  %446 = zext i8 %445 to i32
  %447 = icmp ne i32 %446, 32
  br i1 %447, label %448, label %451

448:                                              ; preds = %437
  %449 = load i32, i32* %37, align 4
  store i32 %449, i32* %40, align 4
  %450 = load i32, i32* %39, align 4
  store i32 %450, i32* %41, align 4
  br label %451

451:                                              ; preds = %448, %437
  br label %480

452:                                              ; preds = %396
  %453 = load i32, i32* %39, align 4
  store i32 %453, i32* %41, align 4
  store i32 0, i32* %35, align 4
  br label %454

454:                                              ; preds = %476, %452
  %455 = load i32, i32* %35, align 4
  %456 = load i32, i32* %36, align 4
  %457 = icmp slt i32 %455, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %454
  %459 = load i32, i32* %38, align 4
  %460 = load i32, i32* @MSDOS_NAME, align 4
  %461 = icmp slt i32 %459, %460
  br label %462

462:                                              ; preds = %458, %454
  %463 = phi i1 [ false, %454 ], [ %461, %458 ]
  br i1 %463, label %464, label %479

464:                                              ; preds = %462
  %465 = load i32, i32* %38, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %38, align 4
  %467 = sext i32 %465 to i64
  %468 = getelementptr inbounds i8, i8* %63, i64 %467
  %469 = load i8, i8* %468, align 1
  %470 = load i8*, i8** %25, align 8
  %471 = load i32, i32* %37, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %37, align 4
  %473 = sext i32 %471 to i64
  %474 = getelementptr inbounds i8, i8* %470, i64 %473
  store i8 %469, i8* %474, align 1
  %475 = load i32, i32* %37, align 4
  store i32 %475, i32* %40, align 4
  br label %476

476:                                              ; preds = %464
  %477 = load i32, i32* %35, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %35, align 4
  br label %454

479:                                              ; preds = %462
  br label %480

480:                                              ; preds = %479, %451
  br label %385

481:                                              ; preds = %395, %385
  %482 = load i32, i32* %40, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %481
  br label %600

485:                                              ; preds = %481
  %486 = load i32, i32* %40, align 4
  %487 = load i32, i32* %42, align 4
  %488 = add nsw i32 %486, %487
  store i32 %488, i32* %37, align 4
  %489 = load i32, i32* %41, align 4
  store i32 %489, i32* %39, align 4
  %490 = load i32, i32* %27, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %500

492:                                              ; preds = %485
  %493 = load i32, i32* %39, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [14 x i32], [14 x i32]* %19, i64 0, i64 %494
  store i32 0, i32* %495, align 4
  %496 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %14, align 8
  %497 = getelementptr inbounds [14 x i32], [14 x i32]* %19, i64 0, i64 0
  %498 = trunc i64 %65 to i32
  %499 = call i32 @fat_uni_to_x8(%struct.msdos_sb_info* %496, i32* %497, i8* %66, i32 %498)
  store i32 %499, i32* %37, align 4
  br label %500

500:                                              ; preds = %492, %485
  %501 = load i8, i8* %18, align 1
  %502 = icmp ne i8 %501, 0
  br i1 %502, label %503, label %517

503:                                              ; preds = %500
  %504 = load i8*, i8** %9, align 8
  %505 = bitcast i8* %504 to %struct.fat_ioctl_filldir_callback*
  store %struct.fat_ioctl_filldir_callback* %505, %struct.fat_ioctl_filldir_callback** %49, align 8
  %506 = load i8*, i8** %29, align 8
  %507 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %49, align 8
  %508 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, %struct.fat_ioctl_filldir_callback* %507, i32 0, i32 0
  store i8* %506, i8** %508, align 8
  %509 = load i32, i32* %43, align 4
  %510 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %49, align 8
  %511 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, %struct.fat_ioctl_filldir_callback* %510, i32 0, i32 1
  store i32 %509, i32* %511, align 8
  %512 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %49, align 8
  %513 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, %struct.fat_ioctl_filldir_callback* %512, i32 0, i32 2
  store i8* %66, i8** %513, align 8
  %514 = load i32, i32* %37, align 4
  %515 = load %struct.fat_ioctl_filldir_callback*, %struct.fat_ioctl_filldir_callback** %49, align 8
  %516 = getelementptr inbounds %struct.fat_ioctl_filldir_callback, %struct.fat_ioctl_filldir_callback* %515, i32 0, i32 3
  store i32 %514, i32* %516, align 8
  store i8* null, i8** %29, align 8
  store i32 0, i32* %43, align 4
  br label %519

517:                                              ; preds = %500
  store i8* %66, i8** %29, align 8
  %518 = load i32, i32* %37, align 4
  store i32 %518, i32* %43, align 4
  br label %519

519:                                              ; preds = %517, %503
  br label %520

520:                                              ; preds = %519, %248
  %521 = load i32, i32* %34, align 4
  %522 = sext i32 %521 to i64
  %523 = load i8, i8* %18, align 1
  %524 = zext i8 %523 to i32
  %525 = add nsw i32 %524, 1
  %526 = sext i32 %525 to i64
  %527 = mul i64 %526, 16
  %528 = sub i64 %522, %527
  store i64 %528, i64* %31, align 8
  %529 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %530 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %529, i32 0, i32 0
  %531 = load i64*, i64** %530, align 8
  %532 = load i32, i32* @MSDOS_DOT, align 4
  %533 = load i32, i32* @MSDOS_NAME, align 4
  %534 = call i32 @memcmp(i64* %531, i32 %532, i32 %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %540, label %536

536:                                              ; preds = %520
  %537 = load %struct.inode*, %struct.inode** %7, align 8
  %538 = getelementptr inbounds %struct.inode, %struct.inode* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %30, align 8
  br label %576

540:                                              ; preds = %520
  %541 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %542 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %541, i32 0, i32 0
  %543 = load i64*, i64** %542, align 8
  %544 = load i32, i32* @MSDOS_DOTDOT, align 4
  %545 = load i32, i32* @MSDOS_NAME, align 4
  %546 = call i32 @memcmp(i64* %543, i32 %544, i32 %545)
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %540
  %549 = load %struct.file*, %struct.file** %8, align 8
  %550 = getelementptr inbounds %struct.file, %struct.file* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = call i64 @parent_ino(i32 %552)
  store i64 %553, i64* %30, align 8
  br label %575

554:                                              ; preds = %540
  %555 = load %struct.super_block*, %struct.super_block** %13, align 8
  %556 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %557 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %558 = call i32 @fat_make_i_pos(%struct.super_block* %555, %struct.buffer_head* %556, %struct.msdos_dir_entry* %557)
  store i32 %558, i32* %50, align 4
  %559 = load %struct.super_block*, %struct.super_block** %13, align 8
  %560 = load i32, i32* %50, align 4
  %561 = call %struct.inode* @fat_iget(%struct.super_block* %559, i32 %560)
  store %struct.inode* %561, %struct.inode** %51, align 8
  %562 = load %struct.inode*, %struct.inode** %51, align 8
  %563 = icmp ne %struct.inode* %562, null
  br i1 %563, label %564, label %570

564:                                              ; preds = %554
  %565 = load %struct.inode*, %struct.inode** %51, align 8
  %566 = getelementptr inbounds %struct.inode, %struct.inode* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %30, align 8
  %568 = load %struct.inode*, %struct.inode** %51, align 8
  %569 = call i32 @iput(%struct.inode* %568)
  br label %574

570:                                              ; preds = %554
  %571 = load %struct.super_block*, %struct.super_block** %13, align 8
  %572 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %573 = call i64 @iunique(%struct.super_block* %571, i64 %572)
  store i64 %573, i64* %30, align 8
  br label %574

574:                                              ; preds = %570, %564
  br label %575

575:                                              ; preds = %574, %548
  br label %576

576:                                              ; preds = %575, %536
  %577 = load i64 (i8*, i8*, i32, i64, i64, i32)*, i64 (i8*, i8*, i32, i64, i64, i32)** %10, align 8
  %578 = load i8*, i8** %9, align 8
  %579 = load i8*, i8** %29, align 8
  %580 = load i32, i32* %43, align 4
  %581 = load i64*, i64** %33, align 8
  %582 = load i64, i64* %581, align 8
  %583 = load i64, i64* %30, align 8
  %584 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %16, align 8
  %585 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @ATTR_DIR, align 4
  %588 = and i32 %586, %587
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %592

590:                                              ; preds = %576
  %591 = load i32, i32* @DT_DIR, align 4
  br label %594

592:                                              ; preds = %576
  %593 = load i32, i32* @DT_REG, align 4
  br label %594

594:                                              ; preds = %592, %590
  %595 = phi i32 [ %591, %590 ], [ %593, %592 ]
  %596 = call i64 %577(i8* %578, i8* %579, i32 %580, i64 %582, i64 %583, i32 %595)
  %597 = icmp slt i64 %596, 0
  br i1 %597, label %598, label %599

598:                                              ; preds = %594
  br label %608

599:                                              ; preds = %594
  br label %600

600:                                              ; preds = %599, %484, %213, %188, %173, %160, %146
  store i64* %31, i64** %33, align 8
  %601 = load i32, i32* %34, align 4
  %602 = load %struct.file*, %struct.file** %8, align 8
  %603 = getelementptr inbounds %struct.file, %struct.file* %602, i32 0, i32 0
  store i32 %601, i32* %603, align 4
  br label %126

604:                                              ; preds = %223, %130
  %605 = load i32, i32* %34, align 4
  %606 = load %struct.file*, %struct.file** %8, align 8
  %607 = getelementptr inbounds %struct.file, %struct.file* %606, i32 0, i32 0
  store i32 %605, i32* %607, align 4
  br label %608

608:                                              ; preds = %604, %598
  %609 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %610 = call i32 @brelse(%struct.buffer_head* %609)
  %611 = load i32*, i32** %20, align 8
  %612 = icmp ne i32* %611, null
  br i1 %612, label %613, label %616

613:                                              ; preds = %608
  %614 = load i32*, i32** %20, align 8
  %615 = call i32 @__putname(i32* %614)
  br label %616

616:                                              ; preds = %613, %608
  br label %617

617:                                              ; preds = %616, %204, %122, %104
  %618 = load %struct.super_block*, %struct.super_block** %13, align 8
  %619 = call i32 @unlock_super(%struct.super_block* %618)
  %620 = load i32, i32* %44, align 4
  %621 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %621)
  ret i32 %620
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @fat_get_entry(%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i64 @IS_FREE(i64*) #1

declare dso_local i32 @fat_parse_long(%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**, i32**, i8*) #1

declare dso_local i32 @fat_uni_to_x8(%struct.msdos_sb_info*, i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @fat_shortname2uni(%struct.nls_table*, i8*, i32, i32*, i16 zeroext, i32) #1

declare dso_local i32 @fat_short2uni(%struct.nls_table*, i8*, i32, i32*) #1

declare dso_local i32 @memcmp(i64*, i32, i32) #1

declare dso_local i64 @parent_ino(i32) #1

declare dso_local i32 @fat_make_i_pos(%struct.super_block*, %struct.buffer_head*, %struct.msdos_dir_entry*) #1

declare dso_local %struct.inode* @fat_iget(%struct.super_block*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @iunique(%struct.super_block*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @__putname(i32*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
