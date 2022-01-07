; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_dir.c_reiserfs_readdir_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_dir.c_reiserfs_readdir_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.cpu_key = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.reiserfs_key = type { i32 }
%struct.item_head = type { %struct.reiserfs_key }
%struct.reiserfs_dir_entry = type { i32, i32, %struct.item_head*, %struct.buffer_head* }
%struct.reiserfs_de_head = type { i32 }

@path_to_entry = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@DOT_OFFSET = common dso_local global i32 0, align 4
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@PATH_READA = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"vs-9000: found item %h does not match to dir we readdir %K\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"vs-9005 item_num == %d, item amount == %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"vs-9010: entry number is too big %d (%d)\00", align 1
@POSITION_FOUND = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@MIN_KEY = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_readdir_dentry(%struct.dentry* %0, i8* %1, i64 (i8*, i8*, i32, i8*, i32, i32)* %2, i8** %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64 (i8*, i8*, i32, i8*, i32, i32)*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.cpu_key, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.reiserfs_key*, align 8
  %15 = alloca %struct.item_head*, align 8
  %16 = alloca %struct.item_head, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [32 x i8], align 16
  %21 = alloca %struct.reiserfs_dir_entry, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.reiserfs_de_head*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 (i8*, i8*, i32, i8*, i32, i32)* %2, i64 (i8*, i8*, i32, i8*, i32, i32)** %7, align 8
  store i8** %3, i8*** %8, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %9, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path_to_entry, i32 0, i32 0), align 4
  %32 = call i32 @INITIALIZE_PATH(i32 %31)
  store i32 0, i32* %22, align 4
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = call i32 @reiserfs_write_lock(%struct.TYPE_13__* %35)
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = call i32 @reiserfs_check_lock_depth(%struct.TYPE_13__* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %50

46:                                               ; preds = %4
  %47 = load i32, i32* @DOT_OFFSET, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i8* [ %43, %45 ], [ %49, %46 ]
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32, i32* @TYPE_DIRENTRY, align 4
  %54 = call i32 @make_cpu_key(%struct.cpu_key* %10, %struct.inode* %41, i32 %52, i32 %53, i32 3)
  %55 = call i8* @cpu_key_k_offset(%struct.cpu_key* %10)
  store i8* %55, i8** %19, align 8
  %56 = load i32, i32* @PATH_READA, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @path_to_entry, i32 0, i32 0), align 4
  br label %57

57:                                               ; preds = %50, %272, %280
  br label %58

58:                                               ; preds = %249, %210, %57
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = call i32 @search_by_entry_key(%struct.TYPE_13__* %61, %struct.cpu_key* %10, %struct.TYPE_14__* @path_to_entry, %struct.reiserfs_dir_entry* %21)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @IO_ERROR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %22, align 4
  br label %290

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %21, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %13, align 4
  %72 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %21, i32 0, i32 3
  %73 = load %struct.buffer_head*, %struct.buffer_head** %72, align 8
  store %struct.buffer_head* %73, %struct.buffer_head** %11, align 8
  %74 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %21, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  %76 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %21, i32 0, i32 2
  %77 = load %struct.item_head*, %struct.item_head** %76, align 8
  store %struct.item_head* %77, %struct.item_head** %15, align 8
  %78 = load %struct.item_head*, %struct.item_head** %15, align 8
  %79 = call i32 @store_ih(%struct.item_head* %16, %struct.item_head* %78)
  %80 = load %struct.item_head*, %struct.item_head** %15, align 8
  %81 = getelementptr inbounds %struct.item_head, %struct.item_head* %80, i32 0, i32 0
  %82 = call i64 @COMP_SHORT_KEYS(%struct.reiserfs_key* %81, %struct.cpu_key* %10)
  %83 = trunc i64 %82 to i32
  %84 = load %struct.item_head*, %struct.item_head** %15, align 8
  %85 = call i32 (i32, i8*, ...) @RFALSE(i32 %83, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), %struct.item_head* %84, %struct.cpu_key* %10)
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %88 = call i32 @B_NR_ITEMS(%struct.buffer_head* %87)
  %89 = sub nsw i32 %88, 1
  %90 = icmp sgt i32 %86, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = call i32 @B_NR_ITEMS(%struct.buffer_head* %93)
  %95 = call i32 (i32, i8*, ...) @RFALSE(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load %struct.item_head*, %struct.item_head** %15, align 8
  %97 = call i32 @I_ENTRY_COUNT(%struct.item_head* %96)
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.item_head*, %struct.item_head** %15, align 8
  %103 = call i32 @I_ENTRY_COUNT(%struct.item_head* %102)
  %104 = call i32 (i32, i8*, ...) @RFALSE(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %103)
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @POSITION_FOUND, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %69
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.item_head*, %struct.item_head** %15, align 8
  %111 = call i32 @I_ENTRY_COUNT(%struct.item_head* %110)
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %257

113:                                              ; preds = %108, %69
  %114 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %115 = load %struct.item_head*, %struct.item_head** %15, align 8
  %116 = call %struct.reiserfs_de_head* @B_I_DEH(%struct.buffer_head* %114, %struct.item_head* %115)
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %116, i64 %118
  store %struct.reiserfs_de_head* %119, %struct.reiserfs_de_head** %23, align 8
  br label %120

120:                                              ; preds = %251, %113
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.item_head*, %struct.item_head** %15, align 8
  %123 = call i32 @I_ENTRY_COUNT(%struct.item_head* %122)
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %256

125:                                              ; preds = %120
  %126 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %23, align 8
  %127 = call i32 @de_visible(%struct.reiserfs_de_head* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  br label %251

130:                                              ; preds = %125
  %131 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %132 = load %struct.item_head*, %struct.item_head** %15, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @entry_length(%struct.buffer_head* %131, %struct.item_head* %132, i32 %133)
  store i32 %134, i32* %24, align 4
  %135 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %136 = load %struct.item_head*, %struct.item_head** %15, align 8
  %137 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %23, align 8
  %138 = call i8* @B_I_DEH_ENTRY_FILE_NAME(%struct.buffer_head* %135, %struct.item_head* %136, %struct.reiserfs_de_head* %137)
  store i8* %138, i8** %25, align 8
  %139 = load i32, i32* %24, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %130
  %142 = load i8*, i8** %25, align 8
  %143 = load i32, i32* %24, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %147 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %150 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  %154 = icmp ugt i8* %145, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %141, %130
  %156 = call i32 @pathrelse(%struct.TYPE_14__* @path_to_entry)
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %22, align 4
  br label %290

159:                                              ; preds = %141
  %160 = load i8*, i8** %25, align 8
  %161 = load i32, i32* %24, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %159
  %168 = load i8*, i8** %25, align 8
  %169 = call i32 @strlen(i8* %168)
  store i32 %169, i32* %24, align 4
  br label %170

170:                                              ; preds = %167, %159
  %171 = load i32, i32* %24, align 4
  %172 = load %struct.inode*, %struct.inode** %9, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 0
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @REISERFS_MAX_NAME(i32 %176)
  %178 = icmp sgt i32 %171, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  br label %251

180:                                              ; preds = %170
  %181 = load %struct.dentry*, %struct.dentry** %5, align 8
  %182 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %23, align 8
  %183 = call i64 @is_privroot_deh(%struct.dentry* %181, %struct.reiserfs_de_head* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %251

186:                                              ; preds = %180
  %187 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %23, align 8
  %188 = call i8* @deh_offset(%struct.reiserfs_de_head* %187)
  store i8* %188, i8** %26, align 8
  %189 = load i8*, i8** %26, align 8
  %190 = load i8**, i8*** %8, align 8
  store i8* %189, i8** %190, align 8
  %191 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %23, align 8
  %192 = call i32 @deh_objectid(%struct.reiserfs_de_head* %191)
  store i32 %192, i32* %27, align 4
  %193 = load i32, i32* %24, align 4
  %194 = icmp sle i32 %193, 32
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  store i8* %196, i8** %18, align 8
  br label %214

197:                                              ; preds = %186
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* @GFP_NOFS, align 4
  %200 = call i8* @kmalloc(i32 %198, i32 %199)
  store i8* %200, i8** %18, align 8
  %201 = load i8*, i8** %18, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %207, label %203

203:                                              ; preds = %197
  %204 = call i32 @pathrelse(%struct.TYPE_14__* @path_to_entry)
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %22, align 4
  br label %290

207:                                              ; preds = %197
  %208 = call i64 @item_moved(%struct.item_head* %16, %struct.TYPE_14__* @path_to_entry)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i8*, i8** %18, align 8
  %212 = call i32 @kfree(i8* %211)
  br label %58

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %195
  %215 = load i8*, i8** %18, align 8
  %216 = load i8*, i8** %25, align 8
  %217 = load i32, i32* %24, align 4
  %218 = call i32 @memcpy(i8* %215, i8* %216, i32 %217)
  %219 = load i64 (i8*, i8*, i32, i8*, i32, i32)*, i64 (i8*, i8*, i32, i8*, i32, i32)** %7, align 8
  %220 = load i8*, i8** %6, align 8
  %221 = load i8*, i8** %18, align 8
  %222 = load i32, i32* %24, align 4
  %223 = load i8*, i8** %26, align 8
  %224 = load i32, i32* %27, align 4
  %225 = load i32, i32* @DT_UNKNOWN, align 4
  %226 = call i64 %219(i8* %220, i8* %221, i32 %222, i8* %223, i32 %224, i32 %225)
  %227 = icmp slt i64 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %214
  %229 = load i8*, i8** %18, align 8
  %230 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %231 = icmp ne i8* %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i8*, i8** %18, align 8
  %234 = call i32 @kfree(i8* %233)
  br label %235

235:                                              ; preds = %232, %228
  br label %285

236:                                              ; preds = %214
  %237 = load i8*, i8** %18, align 8
  %238 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %239 = icmp ne i8* %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i8*, i8** %18, align 8
  %242 = call i32 @kfree(i8* %241)
  br label %243

243:                                              ; preds = %240, %236
  %244 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %23, align 8
  %245 = call i8* @deh_offset(%struct.reiserfs_de_head* %244)
  %246 = getelementptr i8, i8* %245, i64 1
  store i8* %246, i8** %19, align 8
  %247 = call i64 @item_moved(%struct.item_head* %16, %struct.TYPE_14__* @path_to_entry)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %58

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %250, %185, %179, %129
  %252 = load i32, i32* %13, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %13, align 4
  %254 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %23, align 8
  %255 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %254, i32 1
  store %struct.reiserfs_de_head* %255, %struct.reiserfs_de_head** %23, align 8
  br label %120

256:                                              ; preds = %120
  br label %257

257:                                              ; preds = %256, %108
  %258 = load i32, i32* %12, align 4
  %259 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %260 = call i32 @B_NR_ITEMS(%struct.buffer_head* %259)
  %261 = sub nsw i32 %260, 1
  %262 = icmp ne i32 %258, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %285

264:                                              ; preds = %257
  %265 = load %struct.inode*, %struct.inode** %9, align 8
  %266 = getelementptr inbounds %struct.inode, %struct.inode* %265, i32 0, i32 0
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = call %struct.reiserfs_key* @get_rkey(%struct.TYPE_14__* @path_to_entry, %struct.TYPE_13__* %267)
  store %struct.reiserfs_key* %268, %struct.reiserfs_key** %14, align 8
  %269 = load %struct.reiserfs_key*, %struct.reiserfs_key** %14, align 8
  %270 = call i32 @comp_le_keys(%struct.reiserfs_key* %269, i32* @MIN_KEY)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %264
  %273 = load i8*, i8** %19, align 8
  %274 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %10, i8* %273)
  br label %57

275:                                              ; preds = %264
  %276 = load %struct.reiserfs_key*, %struct.reiserfs_key** %14, align 8
  %277 = call i64 @COMP_SHORT_KEYS(%struct.reiserfs_key* %276, %struct.cpu_key* %10)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %285

280:                                              ; preds = %275
  %281 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %282 = load %struct.reiserfs_key*, %struct.reiserfs_key** %14, align 8
  %283 = call i8* @le_key_k_offset(i32 %281, %struct.reiserfs_key* %282)
  %284 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %10, i8* %283)
  br label %57

285:                                              ; preds = %279, %263, %235
  %286 = load i8*, i8** %19, align 8
  %287 = load i8**, i8*** %8, align 8
  store i8* %286, i8** %287, align 8
  %288 = call i32 @pathrelse(%struct.TYPE_14__* @path_to_entry)
  %289 = call i32 @reiserfs_check_path(%struct.TYPE_14__* @path_to_entry)
  br label %290

290:                                              ; preds = %285, %203, %155, %66
  %291 = load %struct.inode*, %struct.inode** %9, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 0
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %292, align 8
  %294 = call i32 @reiserfs_write_unlock(%struct.TYPE_13__* %293)
  %295 = load i32, i32* %22, align 4
  ret i32 %295
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_13__*) #1

declare dso_local i32 @reiserfs_check_lock_depth(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i8* @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i32 @search_by_entry_key(%struct.TYPE_13__*, %struct.cpu_key*, %struct.TYPE_14__*, %struct.reiserfs_dir_entry*) #1

declare dso_local i32 @store_ih(%struct.item_head*, %struct.item_head*) #1

declare dso_local i32 @RFALSE(i32, i8*, ...) #1

declare dso_local i64 @COMP_SHORT_KEYS(%struct.reiserfs_key*, %struct.cpu_key*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @I_ENTRY_COUNT(%struct.item_head*) #1

declare dso_local %struct.reiserfs_de_head* @B_I_DEH(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @de_visible(%struct.reiserfs_de_head*) #1

declare dso_local i32 @entry_length(%struct.buffer_head*, %struct.item_head*, i32) #1

declare dso_local i8* @B_I_DEH_ENTRY_FILE_NAME(%struct.buffer_head*, %struct.item_head*, %struct.reiserfs_de_head*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_14__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @REISERFS_MAX_NAME(i32) #1

declare dso_local i64 @is_privroot_deh(%struct.dentry*, %struct.reiserfs_de_head*) #1

declare dso_local i8* @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_objectid(%struct.reiserfs_de_head*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @item_moved(%struct.item_head*, %struct.TYPE_14__*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.reiserfs_key* @get_rkey(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @comp_le_keys(%struct.reiserfs_key*, i32*) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i8*) #1

declare dso_local i8* @le_key_k_offset(i32, %struct.reiserfs_key*) #1

declare dso_local i32 @reiserfs_check_path(%struct.TYPE_14__*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
