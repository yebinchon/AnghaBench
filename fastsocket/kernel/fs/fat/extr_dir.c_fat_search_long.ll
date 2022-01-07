; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_search_long.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_search_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fat_slot_info = type { i8, %struct.msdos_dir_entry*, %struct.buffer_head*, i32, i64 }
%struct.msdos_dir_entry = type { i64*, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_2__, %struct.nls_table* }
%struct.TYPE_2__ = type { i16 }
%struct.nls_table = type { i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@FAT_MAX_SHORT_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DELETED_FLAG = common dso_local global i64 0, align 8
@ATTR_EXT = common dso_local global i32 0, align 4
@ATTR_VOLUME = common dso_local global i32 0, align 4
@PARSE_INVALID = common dso_local global i32 0, align 4
@PARSE_NOT_LONGNAME = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@CASE_LOWER_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@CASE_LOWER_EXT = common dso_local global i32 0, align 4
@FAT_MAX_UNI_CHARS = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@FAT_MAX_UNI_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_search_long(%struct.inode* %0, i8* %1, i32 %2, %struct.fat_slot_info* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fat_slot_info*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.msdos_sb_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.msdos_dir_entry*, align 8
  %13 = alloca %struct.nls_table*, align 8
  %14 = alloca i8, align 1
  %15 = alloca [14 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i16, align 2
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fat_slot_info* %3, %struct.fat_slot_info** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %9, align 8
  %34 = load %struct.super_block*, %struct.super_block** %9, align 8
  %35 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %34)
  store %struct.msdos_sb_info* %35, %struct.msdos_sb_info** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %36 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %37 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %36, i32 0, i32 1
  %38 = load %struct.nls_table*, %struct.nls_table** %37, align 8
  store %struct.nls_table* %38, %struct.nls_table** %13, align 8
  store i32* null, i32** %16, align 8
  %39 = load i32, i32* @MSDOS_NAME, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %17, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %18, align 8
  %43 = load i32, i32* @FAT_MAX_SHORT_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %19, align 8
  %46 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %47 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i16, i16* %48, align 8
  store i16 %49, i16* %20, align 2
  store i64 0, i64* %21, align 8
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %26, align 4
  br label %52

52:                                               ; preds = %286, %244, %112, %94, %81, %67, %4
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = call i32 @fat_get_entry(%struct.inode* %54, i64* %21, %struct.buffer_head** %11, %struct.msdos_dir_entry** %12)
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %316

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %117, %58
  store i8 0, i8* %14, align 1
  %60 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %61 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DELETED_FLAG, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %52

68:                                               ; preds = %59
  %69 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %70 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ATTR_EXT, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %76 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ATTR_VOLUME, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %52

82:                                               ; preds = %74, %68
  %83 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %84 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ATTR_EXT, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %90 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = call i64 @IS_FREE(i64* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %52

95:                                               ; preds = %88, %82
  %96 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %97 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ATTR_EXT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = call i32 @fat_parse_long(%struct.inode* %102, i64* %21, %struct.buffer_head** %11, %struct.msdos_dir_entry** %12, i32** %16, i8* %14)
  store i32 %103, i32* %28, align 4
  %104 = load i32, i32* %28, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %28, align 4
  store i32 %107, i32* %26, align 4
  br label %316

108:                                              ; preds = %101
  %109 = load i32, i32* %28, align 4
  %110 = load i32, i32* @PARSE_INVALID, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %52

113:                                              ; preds = %108
  %114 = load i32, i32* %28, align 4
  %115 = load i32, i32* @PARSE_NOT_LONGNAME, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %59

118:                                              ; preds = %113
  %119 = load i32, i32* %28, align 4
  %120 = load i32, i32* @PARSE_EOF, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %316

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126, %95
  %128 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %129 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = call i32 @memcpy(i8* %42, i64* %130, i32 8)
  %132 = getelementptr inbounds i8, i8* %42, i64 0
  %133 = load i8, i8* %132, align 16
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 5
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 -27, i8* %137, align 16
  br label %138

138:                                              ; preds = %136, %127
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %139

139:                                              ; preds = %181, %138
  %140 = load i32, i32* %23, align 4
  %141 = icmp slt i32 %140, 8
  br i1 %141, label %142, label %185

142:                                              ; preds = %139
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %42, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  br label %185

149:                                              ; preds = %142
  %150 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %151 = load i32, i32* %23, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %42, i64 %152
  %154 = load i32, i32* %23, align 4
  %155 = sub nsw i32 8, %154
  %156 = load i32, i32* %24, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %24, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds [14 x i32], [14 x i32]* %15, i64 0, i64 %158
  %160 = load i16, i16* %20, align 2
  %161 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %162 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @CASE_LOWER_BASE, align 4
  %165 = and i32 %163, %164
  %166 = call i32 @fat_shortname2uni(%struct.nls_table* %150, i8* %153, i32 %155, i32* %159, i16 zeroext %160, i32 %165)
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %22, align 4
  %168 = icmp sle i32 %167, 1
  br i1 %168, label %169, label %179

169:                                              ; preds = %149
  %170 = load i32, i32* %23, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %42, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp ne i32 %174, 32
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %24, align 4
  store i32 %177, i32* %25, align 4
  br label %178

178:                                              ; preds = %176, %169
  br label %181

179:                                              ; preds = %149
  %180 = load i32, i32* %24, align 4
  store i32 %180, i32* %25, align 4
  br label %181

181:                                              ; preds = %179, %178
  %182 = load i32, i32* %22, align 4
  %183 = load i32, i32* %23, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %23, align 4
  br label %139

185:                                              ; preds = %148, %139
  %186 = load i32, i32* %25, align 4
  store i32 %186, i32* %24, align 4
  %187 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %188 = load i32, i32* %24, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %24, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds [14 x i32], [14 x i32]* %15, i64 0, i64 %190
  %192 = call i32 @fat_short2uni(%struct.nls_table* %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32* %191)
  store i32 8, i32* %23, align 4
  br label %193

193:                                              ; preds = %237, %185
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* @MSDOS_NAME, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %241

197:                                              ; preds = %193
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %42, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = icmp ne i8 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  br label %241

204:                                              ; preds = %197
  %205 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %42, i64 %207
  %209 = load i32, i32* @MSDOS_NAME, align 4
  %210 = load i32, i32* %23, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load i32, i32* %24, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %24, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds [14 x i32], [14 x i32]* %15, i64 0, i64 %214
  %216 = load i16, i16* %20, align 2
  %217 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %218 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @CASE_LOWER_EXT, align 4
  %221 = and i32 %219, %220
  %222 = call i32 @fat_shortname2uni(%struct.nls_table* %205, i8* %208, i32 %211, i32* %215, i16 zeroext %216, i32 %221)
  store i32 %222, i32* %22, align 4
  %223 = load i32, i32* %22, align 4
  %224 = icmp sle i32 %223, 1
  br i1 %224, label %225, label %235

225:                                              ; preds = %204
  %226 = load i32, i32* %23, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %42, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 32
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = load i32, i32* %24, align 4
  store i32 %233, i32* %25, align 4
  br label %234

234:                                              ; preds = %232, %225
  br label %237

235:                                              ; preds = %204
  %236 = load i32, i32* %24, align 4
  store i32 %236, i32* %25, align 4
  br label %237

237:                                              ; preds = %235, %234
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* %23, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %23, align 4
  br label %193

241:                                              ; preds = %203, %193
  %242 = load i32, i32* %25, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  br label %52

245:                                              ; preds = %241
  %246 = load i32, i32* %25, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [14 x i32], [14 x i32]* %15, i64 0, i64 %247
  store i32 0, i32* %248, align 4
  %249 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %250 = getelementptr inbounds [14 x i32], [14 x i32]* %15, i64 0, i64 0
  %251 = trunc i64 %44 to i32
  %252 = call i32 @fat_uni_to_x8(%struct.msdos_sb_info* %249, i32* %250, i8* %45, i32 %251)
  store i32 %252, i32* %27, align 4
  %253 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %254 = load i8*, i8** %6, align 8
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* %27, align 4
  %257 = call i64 @fat_name_match(%struct.msdos_sb_info* %253, i8* %254, i32 %255, i8* %45, i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %245
  br label %287

260:                                              ; preds = %245
  %261 = load i8, i8* %14, align 1
  %262 = icmp ne i8 %261, 0
  br i1 %262, label %263, label %286

263:                                              ; preds = %260
  %264 = load i32*, i32** %16, align 8
  %265 = load i32, i32* @FAT_MAX_UNI_CHARS, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = bitcast i32* %267 to i8*
  store i8* %268, i8** %29, align 8
  %269 = load i32, i32* @PATH_MAX, align 4
  %270 = load i32, i32* @FAT_MAX_UNI_SIZE, align 4
  %271 = sub nsw i32 %269, %270
  store i32 %271, i32* %30, align 4
  %272 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %273 = load i32*, i32** %16, align 8
  %274 = load i8*, i8** %29, align 8
  %275 = load i32, i32* %30, align 4
  %276 = call i32 @fat_uni_to_x8(%struct.msdos_sb_info* %272, i32* %273, i8* %274, i32 %275)
  store i32 %276, i32* %27, align 4
  %277 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %278 = load i8*, i8** %6, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i8*, i8** %29, align 8
  %281 = load i32, i32* %27, align 4
  %282 = call i64 @fat_name_match(%struct.msdos_sb_info* %277, i8* %278, i32 %279, i8* %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %263
  br label %287

285:                                              ; preds = %263
  br label %286

286:                                              ; preds = %285, %260
  br label %52

287:                                              ; preds = %284, %259
  %288 = load i8, i8* %14, align 1
  %289 = add i8 %288, 1
  store i8 %289, i8* %14, align 1
  %290 = load i64, i64* %21, align 8
  %291 = load i8, i8* %14, align 1
  %292 = zext i8 %291 to i64
  %293 = mul i64 %292, 16
  %294 = sub i64 %290, %293
  %295 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %296 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %295, i32 0, i32 4
  store i64 %294, i64* %296, align 8
  %297 = load i8, i8* %14, align 1
  %298 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %299 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %298, i32 0, i32 0
  store i8 %297, i8* %299, align 8
  %300 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %301 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %302 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %301, i32 0, i32 1
  store %struct.msdos_dir_entry* %300, %struct.msdos_dir_entry** %302, align 8
  %303 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %304 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %305 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %304, i32 0, i32 2
  store %struct.buffer_head* %303, %struct.buffer_head** %305, align 8
  %306 = load %struct.super_block*, %struct.super_block** %9, align 8
  %307 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %308 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %307, i32 0, i32 2
  %309 = load %struct.buffer_head*, %struct.buffer_head** %308, align 8
  %310 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %311 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %310, i32 0, i32 1
  %312 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %311, align 8
  %313 = call i32 @fat_make_i_pos(%struct.super_block* %306, %struct.buffer_head* %309, %struct.msdos_dir_entry* %312)
  %314 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %315 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %314, i32 0, i32 3
  store i32 %313, i32* %315, align 8
  store i32 0, i32* %26, align 4
  br label %316

316:                                              ; preds = %287, %122, %106, %57
  %317 = load i32*, i32** %16, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load i32*, i32** %16, align 8
  %321 = call i32 @__putname(i32* %320)
  br label %322

322:                                              ; preds = %319, %316
  %323 = load i32, i32* %26, align 4
  %324 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %324)
  ret i32 %323
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fat_get_entry(%struct.inode*, i64*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i64 @IS_FREE(i64*) #1

declare dso_local i32 @fat_parse_long(%struct.inode*, i64*, %struct.buffer_head**, %struct.msdos_dir_entry**, i32**, i8*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @fat_shortname2uni(%struct.nls_table*, i8*, i32, i32*, i16 zeroext, i32) #1

declare dso_local i32 @fat_short2uni(%struct.nls_table*, i8*, i32, i32*) #1

declare dso_local i32 @fat_uni_to_x8(%struct.msdos_sb_info*, i32*, i8*, i32) #1

declare dso_local i64 @fat_name_match(%struct.msdos_sb_info*, i8*, i32, i8*, i32) #1

declare dso_local i32 @fat_make_i_pos(%struct.super_block*, %struct.buffer_head*, %struct.msdos_dir_entry*) #1

declare dso_local i32 @__putname(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
