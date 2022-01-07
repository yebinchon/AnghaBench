; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_dir.c_ubifs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.ubifs_dent_node*, %struct.TYPE_7__ }
%struct.ubifs_dent_node = type { i8*, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.inode* }
%struct.inode = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.qstr = type { i8*, i32 }
%union.ubifs_key = type { i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"dir ino %lu, f_pos %#llx\00", align 1
@UBIFS_S_KEY_HASH_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"feed '%s', ino %llu, new f_pos %#x\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"cannot find next direntry, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i32, i64, i32)*)* @ubifs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i32, i64, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i32, i32, i64, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qstr, align 8
  %11 = alloca %union.ubifs_key, align 4
  %12 = alloca %struct.ubifs_dent_node*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.ubifs_info*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*, i32, i32, i64, i32)* %2, i32 (i8*, i8*, i32, i32, i64, i32)** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %13, align 8
  %21 = load %struct.inode*, %struct.inode** %13, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %24, align 8
  store %struct.ubifs_info* %25, %struct.ubifs_info** %14, align 8
  %26 = load %struct.inode*, %struct.inode** %13, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = call i32 (i8*, i8*, i64, ...) @dbg_gen(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %29, i64 %33)
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @UBIFS_S_KEY_HASH_MASK, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %3
  %41 = load %struct.file*, %struct.file** %5, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %3
  store i32 0, i32* %4, align 4
  br label %262

46:                                               ; preds = %40
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 1
  %54 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %53, align 8
  %55 = icmp ne %struct.ubifs_dent_node* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @ubifs_assert(i32 %57)
  %59 = load i32 (i8*, i8*, i32, i32, i64, i32)*, i32 (i8*, i8*, i32, i32, i64, i32)** %7, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.inode*, %struct.inode** %13, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @DT_DIR, align 4
  %65 = call i32 %59(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 0, i64 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %262

69:                                               ; preds = %51
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %46
  %73 = load %struct.file*, %struct.file** %5, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %123

77:                                               ; preds = %72
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 1
  %80 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %79, align 8
  %81 = icmp ne %struct.ubifs_dent_node* %80, null
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @ubifs_assert(i32 %83)
  %85 = load i32 (i8*, i8*, i32, i32, i64, i32)*, i32 (i8*, i8*, i32, i32, i64, i32)** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = call i64 @parent_ino(%struct.TYPE_10__* %90)
  %92 = load i32, i32* @DT_DIR, align 4
  %93 = call i32 %85(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 1, i64 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %262

97:                                               ; preds = %77
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %99 = load %struct.inode*, %struct.inode** %13, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @lowest_dent_key(%struct.ubifs_info* %98, %union.ubifs_key* %11, i64 %101)
  %103 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  store i8* null, i8** %103, align 8
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %105 = call %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %104, %union.ubifs_key* %11, %struct.qstr* %10)
  store %struct.ubifs_dent_node* %105, %struct.ubifs_dent_node** %12, align 8
  %106 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %107 = call i64 @IS_ERR(%struct.ubifs_dent_node* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %111 = call i32 @PTR_ERR(%struct.ubifs_dent_node* %110)
  store i32 %111, i32* %8, align 4
  br label %244

112:                                              ; preds = %97
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %114 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %115 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %114, i32 0, i32 1
  %116 = call i8* @key_hash_flash(%struct.ubifs_info* %113, i32* %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.file*, %struct.file** %5, align 8
  %119 = getelementptr inbounds %struct.file, %struct.file* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %121 = load %struct.file*, %struct.file** %5, align 8
  %122 = getelementptr inbounds %struct.file, %struct.file* %121, i32 0, i32 1
  store %struct.ubifs_dent_node* %120, %struct.ubifs_dent_node** %122, align 8
  br label %123

123:                                              ; preds = %112, %72
  %124 = load %struct.file*, %struct.file** %5, align 8
  %125 = getelementptr inbounds %struct.file, %struct.file* %124, i32 0, i32 1
  %126 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %125, align 8
  store %struct.ubifs_dent_node* %126, %struct.ubifs_dent_node** %12, align 8
  %127 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %128 = icmp ne %struct.ubifs_dent_node* %127, null
  br i1 %128, label %158, label %129

129:                                              ; preds = %123
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %131 = load %struct.inode*, %struct.inode** %13, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.file*, %struct.file** %5, align 8
  %135 = getelementptr inbounds %struct.file, %struct.file* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @dent_key_init_hash(%struct.ubifs_info* %130, %union.ubifs_key* %11, i64 %133, i32 %136)
  %138 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  store i8* null, i8** %138, align 8
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %140 = call %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %139, %union.ubifs_key* %11, %struct.qstr* %10)
  store %struct.ubifs_dent_node* %140, %struct.ubifs_dent_node** %12, align 8
  %141 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %142 = call i64 @IS_ERR(%struct.ubifs_dent_node* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %129
  %145 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %146 = call i32 @PTR_ERR(%struct.ubifs_dent_node* %145)
  store i32 %146, i32* %8, align 4
  br label %244

147:                                              ; preds = %129
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %149 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %150 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %149, i32 0, i32 1
  %151 = call i8* @key_hash_flash(%struct.ubifs_info* %148, i32* %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.file*, %struct.file** %5, align 8
  %154 = getelementptr inbounds %struct.file, %struct.file* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %156 = load %struct.file*, %struct.file** %5, align 8
  %157 = getelementptr inbounds %struct.file, %struct.file* %156, i32 0, i32 1
  store %struct.ubifs_dent_node* %155, %struct.ubifs_dent_node** %157, align 8
  br label %158

158:                                              ; preds = %147, %123
  br label %159

159:                                              ; preds = %158, %228
  %160 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %161 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %164 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @le64_to_cpu(i32 %165)
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %168 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %169 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %168, i32 0, i32 1
  %170 = call i8* @key_hash_flash(%struct.ubifs_info* %167, i32* %169)
  %171 = call i32 (i8*, i8*, i64, ...) @dbg_gen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %162, i64 %166, i8* %170)
  %172 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %173 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @le64_to_cpu(i32 %175)
  %177 = load %struct.inode*, %struct.inode** %13, align 8
  %178 = call %struct.TYPE_9__* @ubifs_inode(%struct.inode* %177)
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %176, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @ubifs_assert(i32 %182)
  %184 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %185 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @le16_to_cpu(i32 %186)
  %188 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 1
  store i32 %187, i32* %188, align 8
  %189 = load i32 (i8*, i8*, i32, i32, i64, i32)*, i32 (i8*, i8*, i32, i32, i64, i32)** %7, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %192 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.file*, %struct.file** %5, align 8
  %197 = getelementptr inbounds %struct.file, %struct.file* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %200 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @le64_to_cpu(i32 %201)
  %203 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %204 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @vfs_dent_type(i32 %205)
  %207 = call i32 %189(i8* %190, i8* %193, i32 %195, i32 %198, i64 %202, i32 %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %262

211:                                              ; preds = %159
  %212 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %213 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %214 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %213, i32 0, i32 1
  %215 = call i32 @key_read(%struct.ubifs_info* %212, i32* %214, %union.ubifs_key* %11)
  %216 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %217 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  store i8* %218, i8** %219, align 8
  %220 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %221 = call %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %220, %union.ubifs_key* %11, %struct.qstr* %10)
  store %struct.ubifs_dent_node* %221, %struct.ubifs_dent_node** %12, align 8
  %222 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %223 = call i64 @IS_ERR(%struct.ubifs_dent_node* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %211
  %226 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %227 = call i32 @PTR_ERR(%struct.ubifs_dent_node* %226)
  store i32 %227, i32* %8, align 4
  br label %244

228:                                              ; preds = %211
  %229 = load %struct.file*, %struct.file** %5, align 8
  %230 = getelementptr inbounds %struct.file, %struct.file* %229, i32 0, i32 1
  %231 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %230, align 8
  %232 = call i32 @kfree(%struct.ubifs_dent_node* %231)
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %234 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %235 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %234, i32 0, i32 1
  %236 = call i8* @key_hash_flash(%struct.ubifs_info* %233, i32* %235)
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.file*, %struct.file** %5, align 8
  %239 = getelementptr inbounds %struct.file, %struct.file* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %12, align 8
  %241 = load %struct.file*, %struct.file** %5, align 8
  %242 = getelementptr inbounds %struct.file, %struct.file* %241, i32 0, i32 1
  store %struct.ubifs_dent_node* %240, %struct.ubifs_dent_node** %242, align 8
  %243 = call i32 (...) @cond_resched()
  br label %159

244:                                              ; preds = %225, %144, %109
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @ENOENT, align 4
  %247 = sub nsw i32 0, %246
  %248 = icmp ne i32 %245, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @ubifs_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %4, align 4
  br label %262

253:                                              ; preds = %244
  %254 = load %struct.file*, %struct.file** %5, align 8
  %255 = getelementptr inbounds %struct.file, %struct.file* %254, i32 0, i32 1
  %256 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %255, align 8
  %257 = call i32 @kfree(%struct.ubifs_dent_node* %256)
  %258 = load %struct.file*, %struct.file** %5, align 8
  %259 = getelementptr inbounds %struct.file, %struct.file* %258, i32 0, i32 1
  store %struct.ubifs_dent_node* null, %struct.ubifs_dent_node** %259, align 8
  %260 = load %struct.file*, %struct.file** %5, align 8
  %261 = getelementptr inbounds %struct.file, %struct.file* %260, i32 0, i32 0
  store i32 2, i32* %261, align 8
  store i32 0, i32* %4, align 4
  br label %262

262:                                              ; preds = %253, %249, %210, %96, %68, %45
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @dbg_gen(i8*, i8*, i64, ...) #1

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i64 @parent_ino(%struct.TYPE_10__*) #1

declare dso_local i32 @lowest_dent_key(%struct.ubifs_info*, %union.ubifs_key*, i64) #1

declare dso_local %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info*, %union.ubifs_key*, %struct.qstr*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_dent_node*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_dent_node*) #1

declare dso_local i8* @key_hash_flash(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @dent_key_init_hash(%struct.ubifs_info*, %union.ubifs_key*, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.TYPE_9__* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @vfs_dent_type(i32) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ubifs_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
