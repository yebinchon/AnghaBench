; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i64, i64, i64, i32 }
%struct.iattr = type { i32, i64, i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@KEY_FORMAT_3_5 = common dso_local global i64 0, align 8
@MAX_NON_LFS = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@STAT_DATA_V1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.reiserfs_transaction_handle, align 4
  %10 = alloca %struct.reiserfs_transaction_handle, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load i32, i32* @ATTR_KILL_SUID, align 4
  %16 = load i32, i32* @ATTR_KILL_SGID, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.iattr*, %struct.iattr** %4, align 8
  %20 = getelementptr inbounds %struct.iattr, %struct.iattr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @reiserfs_write_lock(i32 %25)
  %27 = load %struct.iattr*, %struct.iattr** %4, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATTR_SIZE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %99

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i64 @get_inode_item_key_version(%struct.inode* %34)
  %36 = load i64, i64* @KEY_FORMAT_3_5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.iattr*, %struct.iattr** %4, align 8
  %40 = getelementptr inbounds %struct.iattr, %struct.iattr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_NON_LFS, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EFBIG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %278

47:                                               ; preds = %38, %33
  %48 = load %struct.iattr*, %struct.iattr** %4, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %47
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.iattr*, %struct.iattr** %4, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @generic_cont_expand_simple(%struct.inode* %56, i64 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %55
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %9, i32 %69, i32 4)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call i32 @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle* %9, %struct.inode* %74)
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %9, i32 %78, i32 4)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %73, %66
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %80
  br label %86

86:                                               ; preds = %85, %55
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %278

90:                                               ; preds = %86
  %91 = load i32, i32* @ATTR_MTIME, align 4
  %92 = load i32, i32* @ATTR_CTIME, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.iattr*, %struct.iattr** %4, align 8
  %95 = getelementptr inbounds %struct.iattr, %struct.iattr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %90, %47
  br label %99

99:                                               ; preds = %98, %2
  %100 = load %struct.iattr*, %struct.iattr** %4, align 8
  %101 = getelementptr inbounds %struct.iattr, %struct.iattr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ATTR_UID, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.iattr*, %struct.iattr** %4, align 8
  %108 = getelementptr inbounds %struct.iattr, %struct.iattr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, -65536
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %125, label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.iattr*, %struct.iattr** %4, align 8
  %114 = getelementptr inbounds %struct.iattr, %struct.iattr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ATTR_GID, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %112
  %120 = load %struct.iattr*, %struct.iattr** %4, align 8
  %121 = getelementptr inbounds %struct.iattr, %struct.iattr* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, -65536
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %119, %106
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = call i64 @get_inode_sd_version(%struct.inode* %126)
  %128 = load i64, i64* @STAT_DATA_V1, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %6, align 4
  br label %278

133:                                              ; preds = %125, %119, %112
  %134 = load %struct.inode*, %struct.inode** %5, align 8
  %135 = load %struct.iattr*, %struct.iattr** %4, align 8
  %136 = call i32 @inode_change_ok(%struct.inode* %134, %struct.iattr* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %257, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @ATTR_UID, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load %struct.iattr*, %struct.iattr** %4, align 8
  %146 = getelementptr inbounds %struct.iattr, %struct.iattr* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load %struct.inode*, %struct.inode** %5, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %148, %151
  br i1 %152, label %167, label %153

153:                                              ; preds = %144, %139
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @ATTR_GID, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %249

158:                                              ; preds = %153
  %159 = load %struct.iattr*, %struct.iattr** %4, align 8
  %160 = getelementptr inbounds %struct.iattr, %struct.iattr* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = load %struct.inode*, %struct.inode** %5, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %162, %165
  br i1 %166, label %167, label %249

167:                                              ; preds = %158, %144
  %168 = load %struct.inode*, %struct.inode** %5, align 8
  %169 = load %struct.iattr*, %struct.iattr** %4, align 8
  %170 = call i32 @reiserfs_chown_xattrs(%struct.inode* %168, %struct.iattr* %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %248, label %173

173:                                              ; preds = %167
  %174 = load %struct.inode*, %struct.inode** %5, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @REISERFS_QUOTA_INIT_BLOCKS(i32 %176)
  %178 = load %struct.inode*, %struct.inode** %5, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @REISERFS_QUOTA_DEL_BLOCKS(i32 %180)
  %182 = add nsw i32 %177, %181
  %183 = mul nsw i32 2, %182
  %184 = add nsw i32 %183, 2
  store i32 %184, i32* %11, align 4
  %185 = load %struct.inode*, %struct.inode** %5, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %10, i32 %187, i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %173
  br label %278

193:                                              ; preds = %173
  %194 = load %struct.inode*, %struct.inode** %5, align 8
  %195 = load %struct.iattr*, %struct.iattr** %4, align 8
  %196 = call i64 @vfs_dq_transfer(%struct.inode* %194, %struct.iattr* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i32, i32* @EDQUOT, align 4
  %200 = sub nsw i32 0, %199
  br label %202

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201, %198
  %203 = phi i32 [ %200, %198 ], [ 0, %201 ]
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load %struct.inode*, %struct.inode** %5, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10, i32 %209, i32 %210)
  br label %278

212:                                              ; preds = %202
  %213 = load %struct.iattr*, %struct.iattr** %4, align 8
  %214 = getelementptr inbounds %struct.iattr, %struct.iattr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ATTR_UID, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %212
  %220 = load %struct.iattr*, %struct.iattr** %4, align 8
  %221 = getelementptr inbounds %struct.iattr, %struct.iattr* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = load %struct.inode*, %struct.inode** %5, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %219, %212
  %227 = load %struct.iattr*, %struct.iattr** %4, align 8
  %228 = getelementptr inbounds %struct.iattr, %struct.iattr* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @ATTR_GID, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %226
  %234 = load %struct.iattr*, %struct.iattr** %4, align 8
  %235 = getelementptr inbounds %struct.iattr, %struct.iattr* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = load %struct.inode*, %struct.inode** %5, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 2
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %233, %226
  %241 = load %struct.inode*, %struct.inode** %5, align 8
  %242 = call i32 @mark_inode_dirty(%struct.inode* %241)
  %243 = load %struct.inode*, %struct.inode** %5, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10, i32 %245, i32 %246)
  store i32 %247, i32* %6, align 4
  br label %248

248:                                              ; preds = %240, %167
  br label %249

249:                                              ; preds = %248, %158, %153
  %250 = load i32, i32* %6, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = load %struct.inode*, %struct.inode** %5, align 8
  %254 = load %struct.iattr*, %struct.iattr** %4, align 8
  %255 = call i32 @inode_setattr(%struct.inode* %253, %struct.iattr* %254)
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %252, %249
  br label %257

257:                                              ; preds = %256, %133
  %258 = load i32, i32* %6, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %277, label %260

260:                                              ; preds = %257
  %261 = load %struct.inode*, %struct.inode** %5, align 8
  %262 = getelementptr inbounds %struct.inode, %struct.inode* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @reiserfs_posixacl(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %260
  %267 = load %struct.iattr*, %struct.iattr** %4, align 8
  %268 = getelementptr inbounds %struct.iattr, %struct.iattr* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @ATTR_MODE, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = load %struct.inode*, %struct.inode** %5, align 8
  %275 = call i32 @reiserfs_acl_chmod(%struct.inode* %274)
  store i32 %275, i32* %6, align 4
  br label %276

276:                                              ; preds = %273, %266
  br label %277

277:                                              ; preds = %276, %260, %257
  br label %278

278:                                              ; preds = %277, %206, %192, %130, %89, %44
  %279 = load %struct.inode*, %struct.inode** %5, align 8
  %280 = getelementptr inbounds %struct.inode, %struct.inode* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @reiserfs_write_unlock(i32 %281)
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i64 @get_inode_item_key_version(%struct.inode*) #1

declare dso_local i32 @generic_cont_expand_simple(%struct.inode*, i64) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i64 @get_inode_sd_version(%struct.inode*) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @reiserfs_chown_xattrs(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @REISERFS_QUOTA_DEL_BLOCKS(i32) #1

declare dso_local i64 @vfs_dq_transfer(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i64 @reiserfs_posixacl(i32) #1

declare dso_local i32 @reiserfs_acl_chmod(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
