; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___unlink_start_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___unlink_start_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32*, i32 }
%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_4__, %struct.inode* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.btrfs_root = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.btrfs_path = type { i32, i32, i32* }
%struct.btrfs_inode_ref = type { i32*, i32 }
%struct.btrfs_dir_item = type { i32*, i32 }
%struct.TYPE_6__ = type { i32, %struct.btrfs_root* }

@ENOSPC = common dso_local global i32 0, align 4
@BTRFS_EMPTY_SUBVOL_DIR_OBJECTID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_trans_handle* (%struct.inode*, %struct.dentry*)* @__unlink_start_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_trans_handle* @__unlink_start_trans(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.btrfs_trans_handle*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_inode_ref*, align 8
  %10 = alloca %struct.btrfs_dir_item*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %20, align 8
  store %struct.btrfs_root* %21, %struct.btrfs_root** %7, align 8
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %11, align 8
  store i32 1, i32* %13, align 4
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = call i64 @btrfs_ino(%struct.inode* %27)
  store i64 %28, i64* %16, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i64 @btrfs_ino(%struct.inode* %29)
  store i64 %30, i64* %17, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %32 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %31, i32 8)
  store %struct.btrfs_trans_handle* %32, %struct.btrfs_trans_handle** %6, align 8
  %33 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %34 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %37)
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %2
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_trans_handle* %43, %struct.btrfs_trans_handle** %3, align 8
  br label %359

44:                                               ; preds = %36
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* @BTRFS_EMPTY_SUBVOL_DIR_OBJECTID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %50)
  store %struct.btrfs_trans_handle* %51, %struct.btrfs_trans_handle** %3, align 8
  br label %359

52:                                               ; preds = %44
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @S_ISDIR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %11, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = call i32 @atomic_read(i32* %60)
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOSPC, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %65)
  store %struct.btrfs_trans_handle* %66, %struct.btrfs_trans_handle** %3, align 8
  br label %359

67:                                               ; preds = %58, %52
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = call i32 @atomic_read(i32* %69)
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = sub nsw i32 0, %73
  %75 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %74)
  store %struct.btrfs_trans_handle* %75, %struct.btrfs_trans_handle** %3, align 8
  br label %359

76:                                               ; preds = %67
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %78 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = call i64 @xchg(i64* %80, i32 1)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @ENOSPC, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %85)
  store %struct.btrfs_trans_handle* %86, %struct.btrfs_trans_handle** %3, align 8
  br label %359

87:                                               ; preds = %76
  %88 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %88, %struct.btrfs_path** %8, align 8
  %89 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %90 = icmp ne %struct.btrfs_path* %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %93 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  %98 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %97)
  store %struct.btrfs_trans_handle* %98, %struct.btrfs_trans_handle** %3, align 8
  br label %359

99:                                               ; preds = %87
  %100 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %101 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %100, i32 1)
  store %struct.btrfs_trans_handle* %101, %struct.btrfs_trans_handle** %6, align 8
  %102 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %103 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %107 = call i32 @btrfs_free_path(%struct.btrfs_path* %106)
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %109 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_trans_handle* %112, %struct.btrfs_trans_handle** %3, align 8
  br label %359

113:                                              ; preds = %99
  %114 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %115 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %117 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %119 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %120 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %121)
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = call i32 @btrfs_lookup_inode(%struct.btrfs_trans_handle* %118, %struct.btrfs_root* %119, %struct.btrfs_path* %120, i32* %123, i32 0)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %14, align 4
  br label %321

129:                                              ; preds = %113
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %134 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %135 = call i64 @check_path_shared(%struct.btrfs_root* %133, %struct.btrfs_path* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %321

138:                                              ; preds = %132
  br label %140

139:                                              ; preds = %129
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %139, %138
  %141 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %142 = call i32 @btrfs_release_path(%struct.btrfs_path* %141)
  %143 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %144 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %145 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %146 = load %struct.inode*, %struct.inode** %11, align 8
  %147 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %146)
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = call i32 @btrfs_lookup_inode(%struct.btrfs_trans_handle* %143, %struct.btrfs_root* %144, %struct.btrfs_path* %145, i32* %148, i32 0)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %140
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %14, align 4
  br label %321

154:                                              ; preds = %140
  %155 = load i32, i32* %15, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %159 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %160 = call i64 @check_path_shared(%struct.btrfs_root* %158, %struct.btrfs_path* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %321

163:                                              ; preds = %157
  br label %165

164:                                              ; preds = %154
  store i32 0, i32* %13, align 4
  br label %165

165:                                              ; preds = %164, %163
  %166 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %167 = call i32 @btrfs_release_path(%struct.btrfs_path* %166)
  %168 = load i32, i32* %15, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %199

170:                                              ; preds = %165
  %171 = load %struct.inode*, %struct.inode** %11, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @S_ISREG(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %170
  %177 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %178 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %179 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %180 = load i64, i64* %16, align 8
  %181 = call i32 @btrfs_lookup_file_extent(%struct.btrfs_trans_handle* %177, %struct.btrfs_root* %178, %struct.btrfs_path* %179, i64 %180, i64 -1, i32 0)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %14, align 4
  br label %321

186:                                              ; preds = %176
  %187 = load i32, i32* %15, align 4
  %188 = icmp eq i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i32 @BUG_ON(i32 %189)
  %191 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %192 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %193 = call i64 @check_path_shared(%struct.btrfs_root* %191, %struct.btrfs_path* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  br label %321

196:                                              ; preds = %186
  %197 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %198 = call i32 @btrfs_release_path(%struct.btrfs_path* %197)
  br label %199

199:                                              ; preds = %196, %170, %165
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  store i32 0, i32* %14, align 4
  br label %321

203:                                              ; preds = %199
  %204 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %205 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %206 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %207 = load i64, i64* %17, align 8
  %208 = load %struct.dentry*, %struct.dentry** %5, align 8
  %209 = getelementptr inbounds %struct.dentry, %struct.dentry* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.dentry*, %struct.dentry** %5, align 8
  %213 = getelementptr inbounds %struct.dentry, %struct.dentry* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call %struct.btrfs_trans_handle* @btrfs_lookup_dir_item(%struct.btrfs_trans_handle* %204, %struct.btrfs_root* %205, %struct.btrfs_path* %206, i64 %207, i32 %211, i32 %215, i32 0)
  %217 = bitcast %struct.btrfs_trans_handle* %216 to %struct.btrfs_dir_item*
  store %struct.btrfs_dir_item* %217, %struct.btrfs_dir_item** %10, align 8
  %218 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %219 = bitcast %struct.btrfs_dir_item* %218 to %struct.btrfs_trans_handle*
  %220 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %203
  %223 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %224 = bitcast %struct.btrfs_dir_item* %223 to %struct.btrfs_trans_handle*
  %225 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %224)
  store i32 %225, i32* %14, align 4
  br label %321

226:                                              ; preds = %203
  %227 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %228 = icmp ne %struct.btrfs_dir_item* %227, null
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %231 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %232 = call i64 @check_path_shared(%struct.btrfs_root* %230, %struct.btrfs_path* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %321

235:                                              ; preds = %229
  br label %237

236:                                              ; preds = %226
  store i32 0, i32* %14, align 4
  br label %321

237:                                              ; preds = %235
  %238 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %239 = call i32 @btrfs_release_path(%struct.btrfs_path* %238)
  %240 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %241 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %242 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %243 = load %struct.dentry*, %struct.dentry** %5, align 8
  %244 = getelementptr inbounds %struct.dentry, %struct.dentry* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.dentry*, %struct.dentry** %5, align 8
  %248 = getelementptr inbounds %struct.dentry, %struct.dentry* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i64, i64* %16, align 8
  %252 = load i64, i64* %17, align 8
  %253 = call %struct.btrfs_trans_handle* @btrfs_lookup_inode_ref(%struct.btrfs_trans_handle* %240, %struct.btrfs_root* %241, %struct.btrfs_path* %242, i32 %246, i32 %250, i64 %251, i64 %252, i32 0)
  %254 = bitcast %struct.btrfs_trans_handle* %253 to %struct.btrfs_inode_ref*
  store %struct.btrfs_inode_ref* %254, %struct.btrfs_inode_ref** %9, align 8
  %255 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %9, align 8
  %256 = bitcast %struct.btrfs_inode_ref* %255 to %struct.btrfs_trans_handle*
  %257 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %237
  %260 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %9, align 8
  %261 = bitcast %struct.btrfs_inode_ref* %260 to %struct.btrfs_trans_handle*
  %262 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %261)
  store i32 %262, i32* %14, align 4
  br label %321

263:                                              ; preds = %237
  %264 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %9, align 8
  %265 = icmp ne %struct.btrfs_inode_ref* %264, null
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = call i32 @BUG_ON(i32 %267)
  %269 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %270 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %271 = call i64 @check_path_shared(%struct.btrfs_root* %269, %struct.btrfs_path* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %263
  br label %321

274:                                              ; preds = %263
  %275 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %276 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %275, i32 0, i32 2
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.btrfs_inode_ref*, %struct.btrfs_inode_ref** %9, align 8
  %281 = bitcast %struct.btrfs_inode_ref* %280 to %struct.btrfs_trans_handle*
  %282 = call i64 @btrfs_inode_ref_index(i32 %279, %struct.btrfs_trans_handle* %281)
  store i64 %282, i64* %12, align 8
  %283 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %284 = call i32 @btrfs_release_path(%struct.btrfs_path* %283)
  %285 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %286 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %287 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %288 = load i64, i64* %17, align 8
  %289 = load i64, i64* %12, align 8
  %290 = load %struct.dentry*, %struct.dentry** %5, align 8
  %291 = getelementptr inbounds %struct.dentry, %struct.dentry* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.dentry*, %struct.dentry** %5, align 8
  %295 = getelementptr inbounds %struct.dentry, %struct.dentry* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call %struct.btrfs_trans_handle* @btrfs_lookup_dir_index_item(%struct.btrfs_trans_handle* %285, %struct.btrfs_root* %286, %struct.btrfs_path* %287, i64 %288, i64 %289, i32 %293, i32 %297, i32 0)
  %299 = bitcast %struct.btrfs_trans_handle* %298 to %struct.btrfs_dir_item*
  store %struct.btrfs_dir_item* %299, %struct.btrfs_dir_item** %10, align 8
  %300 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %301 = bitcast %struct.btrfs_dir_item* %300 to %struct.btrfs_trans_handle*
  %302 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %274
  %305 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %306 = bitcast %struct.btrfs_dir_item* %305 to %struct.btrfs_trans_handle*
  %307 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %306)
  store i32 %307, i32* %14, align 4
  br label %321

308:                                              ; preds = %274
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* @ENOENT, align 4
  %311 = sub nsw i32 0, %310
  %312 = icmp eq i32 %309, %311
  %313 = zext i1 %312 to i32
  %314 = call i32 @BUG_ON(i32 %313)
  %315 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %316 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %317 = call i64 @check_path_shared(%struct.btrfs_root* %315, %struct.btrfs_path* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %308
  br label %321

320:                                              ; preds = %308
  store i32 0, i32* %14, align 4
  br label %321

321:                                              ; preds = %320, %319, %304, %273, %259, %236, %234, %222, %202, %195, %184, %162, %152, %137, %127
  %322 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %323 = call i32 @btrfs_free_path(%struct.btrfs_path* %322)
  %324 = load i32, i32* %14, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %338, label %326

326:                                              ; preds = %321
  %327 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %328 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %331 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %330, i32 0, i32 0
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  %334 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %335 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @btrfs_block_rsv_migrate(i32* %329, i32* %333, i32 %336)
  store i32 %337, i32* %14, align 4
  br label %338

338:                                              ; preds = %326, %321
  %339 = load i32, i32* %14, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %351

341:                                              ; preds = %338
  %342 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %343 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %344 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %342, %struct.btrfs_root* %343)
  %345 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %346 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %345, i32 0, i32 0
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 1
  store i64 0, i64* %348, align 8
  %349 = load i32, i32* %14, align 4
  %350 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %349)
  store %struct.btrfs_trans_handle* %350, %struct.btrfs_trans_handle** %3, align 8
  br label %359

351:                                              ; preds = %338
  %352 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %353 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %352, i32 0, i32 0
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 0
  %356 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %357 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %356, i32 0, i32 0
  store i32* %355, i32** %357, align 8
  %358 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_trans_handle* %358, %struct.btrfs_trans_handle** %3, align 8
  br label %359

359:                                              ; preds = %351, %341, %105, %91, %83, %72, %63, %48, %42
  %360 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %3, align 8
  ret %struct.btrfs_trans_handle* %360
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_trans_handle* @ERR_PTR(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @xchg(i64*, i32) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_lookup_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32*, i32) #1

declare dso_local i64 @check_path_shared(%struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @btrfs_lookup_file_extent(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_lookup_dir_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i32, i32, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_lookup_inode_ref(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32, i64, i64, i32) #1

declare dso_local i64 @btrfs_inode_ref_index(i32, %struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_lookup_dir_index_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @btrfs_block_rsv_migrate(i32*, i32*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
