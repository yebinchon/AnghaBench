; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, %struct.dquot** }
%struct.dquot = type { i32 }
%struct.iattr = type { i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@MAXQUOTAS = common dso_local global i32 0, align 4
@QUOTA_OK = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@QUOTA_NL_NOWARN = common dso_local global i8 0, align 1
@USRQUOTA = common dso_local global i64 0, align 8
@GRPQUOTA = common dso_local global i64 0, align 8
@dq_data_lock = common dso_local global i32 0, align 4
@NO_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_transfer(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  store i64 0, i64* %8, align 8
  %20 = load i32, i32* @MAXQUOTAS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca %struct.dquot*, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i32, i32* @MAXQUOTAS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca %struct.dquot*, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* @QUOTA_OK, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.iattr*, %struct.iattr** %5, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ATTR_UID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iattr*, %struct.iattr** %5, align 8
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br label %42

42:                                               ; preds = %34, %2
  %43 = phi i1 [ false, %2 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load %struct.iattr*, %struct.iattr** %5, align 8
  %46 = getelementptr inbounds %struct.iattr, %struct.iattr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ATTR_GID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.iattr*, %struct.iattr** %5, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br label %59

59:                                               ; preds = %51, %42
  %60 = phi i1 [ false, %42 ], [ %58, %51 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* @MAXQUOTAS, align 4
  %63 = zext i32 %62 to i64
  %64 = alloca i8, i64 %63, align 16
  store i64 %63, i64* %16, align 8
  %65 = load i32, i32* @MAXQUOTAS, align 4
  %66 = zext i32 %65 to i64
  %67 = alloca i8, i64 %66, align 16
  store i64 %66, i64* %17, align 8
  %68 = load i32, i32* @MAXQUOTAS, align 4
  %69 = zext i32 %68 to i64
  %70 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %18, align 8
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = call i64 @IS_NOQUOTA(%struct.inode* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load i32, i32* @QUOTA_OK, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %372

76:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %92, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @MAXQUOTAS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %83
  store %struct.dquot* null, %struct.dquot** %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %86
  store %struct.dquot* null, %struct.dquot** %87, align 8
  %88 = load i8, i8* @QUOTA_NL_NOWARN, align 1
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %64, i64 %90
  store i8 %88, i8* %91, align 1
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %77

95:                                               ; preds = %77
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load %struct.inode*, %struct.inode** %4, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.iattr*, %struct.iattr** %5, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @USRQUOTA, align 8
  %106 = call %struct.dquot* @dqget(i32 %101, i64 %104, i64 %105)
  %107 = load i64, i64* @USRQUOTA, align 8
  %108 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %107
  store %struct.dquot* %106, %struct.dquot** %108, align 8
  br label %109

109:                                              ; preds = %98, %95
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.iattr*, %struct.iattr** %5, align 8
  %117 = getelementptr inbounds %struct.iattr, %struct.iattr* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @GRPQUOTA, align 8
  %120 = call %struct.dquot* @dqget(i32 %115, i64 %118, i64 %119)
  %121 = load i64, i64* @GRPQUOTA, align 8
  %122 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %121
  store %struct.dquot* %120, %struct.dquot** %122, align 8
  br label %123

123:                                              ; preds = %112, %109
  %124 = load %struct.inode*, %struct.inode** %4, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call %struct.TYPE_2__* @sb_dqopt(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = call i32 @down_write(i32* %128)
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = call i64 @IS_NOQUOTA(%struct.inode* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %123
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.TYPE_2__* @sb_dqopt(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = call i32 @up_write(i32* %138)
  br label %330

140:                                              ; preds = %123
  %141 = call i32 @spin_lock(i32* @dq_data_lock)
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = call i64 @inode_get_bytes(%struct.inode* %142)
  store i64 %143, i64* %7, align 8
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = call i64 @inode_get_rsv_space(%struct.inode* %144)
  store i64 %145, i64* %8, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %8, align 8
  %148 = add nsw i64 %146, %147
  store i64 %148, i64* %6, align 8
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %195, %140
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @MAXQUOTAS, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %198

153:                                              ; preds = %149
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %155
  %157 = load %struct.dquot*, %struct.dquot** %156, align 8
  %158 = icmp ne %struct.dquot* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  br label %195

160:                                              ; preds = %153
  %161 = load %struct.inode*, %struct.inode** %4, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 3
  %163 = load %struct.dquot**, %struct.dquot*** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.dquot*, %struct.dquot** %163, i64 %165
  %167 = load %struct.dquot*, %struct.dquot** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %169
  store %struct.dquot* %167, %struct.dquot** %170, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %172
  %174 = load %struct.dquot*, %struct.dquot** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %64, i64 %176
  %178 = call i32 @check_idq(%struct.dquot* %174, i32 1, i8* %177)
  %179 = load i32, i32* @NO_QUOTA, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %160
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %183
  %185 = load %struct.dquot*, %struct.dquot** %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %64, i64 %188
  %190 = call i32 @check_bdq(%struct.dquot* %185, i64 %186, i32 0, i8* %189)
  %191 = load i32, i32* @NO_QUOTA, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %181, %160
  br label %351

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %194, %159
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %149

198:                                              ; preds = %149
  store i32 0, i32* %12, align 4
  br label %199

199:                                              ; preds = %279, %198
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @MAXQUOTAS, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %282

203:                                              ; preds = %199
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %205
  %207 = load %struct.dquot*, %struct.dquot** %206, align 8
  %208 = icmp ne %struct.dquot* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  br label %279

210:                                              ; preds = %203
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %212
  %214 = load %struct.dquot*, %struct.dquot** %213, align 8
  %215 = icmp ne %struct.dquot* %214, null
  br i1 %215, label %216, label %251

216:                                              ; preds = %210
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %218
  %220 = load %struct.dquot*, %struct.dquot** %219, align 8
  %221 = call signext i8 @info_idq_free(%struct.dquot* %220, i32 1)
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %67, i64 %223
  store i8 %221, i8* %224, align 1
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %226
  %228 = load %struct.dquot*, %struct.dquot** %227, align 8
  %229 = load i64, i64* %6, align 8
  %230 = call signext i8 @info_bdq_free(%struct.dquot* %228, i64 %229)
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %70, i64 %232
  store i8 %230, i8* %233, align 1
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %235
  %237 = load %struct.dquot*, %struct.dquot** %236, align 8
  %238 = call i32 @dquot_decr_inodes(%struct.dquot* %237, i32 1)
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %240
  %242 = load %struct.dquot*, %struct.dquot** %241, align 8
  %243 = load i64, i64* %7, align 8
  %244 = call i32 @dquot_decr_space(%struct.dquot* %242, i64 %243)
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %246
  %248 = load %struct.dquot*, %struct.dquot** %247, align 8
  %249 = load i64, i64* %8, align 8
  %250 = call i32 @dquot_free_reserved_space(%struct.dquot* %248, i64 %249)
  br label %251

251:                                              ; preds = %216, %210
  %252 = load i32, i32* %12, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %253
  %255 = load %struct.dquot*, %struct.dquot** %254, align 8
  %256 = call i32 @dquot_incr_inodes(%struct.dquot* %255, i32 1)
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %258
  %260 = load %struct.dquot*, %struct.dquot** %259, align 8
  %261 = load i64, i64* %7, align 8
  %262 = call i32 @dquot_incr_space(%struct.dquot* %260, i64 %261)
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %264
  %266 = load %struct.dquot*, %struct.dquot** %265, align 8
  %267 = load i64, i64* %8, align 8
  %268 = call i32 @dquot_resv_space(%struct.dquot* %266, i64 %267)
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %270
  %272 = load %struct.dquot*, %struct.dquot** %271, align 8
  %273 = load %struct.inode*, %struct.inode** %4, align 8
  %274 = getelementptr inbounds %struct.inode, %struct.inode* %273, i32 0, i32 3
  %275 = load %struct.dquot**, %struct.dquot*** %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.dquot*, %struct.dquot** %275, i64 %277
  store %struct.dquot* %272, %struct.dquot** %278, align 8
  br label %279

279:                                              ; preds = %251, %209
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %12, align 4
  br label %199

282:                                              ; preds = %199
  %283 = call i32 @spin_unlock(i32* @dq_data_lock)
  %284 = load %struct.inode*, %struct.inode** %4, align 8
  %285 = getelementptr inbounds %struct.inode, %struct.inode* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call %struct.TYPE_2__* @sb_dqopt(i32 %286)
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = call i32 @up_write(i32* %288)
  store i32 0, i32* %12, align 4
  br label %290

290:                                              ; preds = %322, %282
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* @MAXQUOTAS, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %325

294:                                              ; preds = %290
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %296
  %298 = load %struct.dquot*, %struct.dquot** %297, align 8
  %299 = icmp ne %struct.dquot* %298, null
  br i1 %299, label %300, label %306

300:                                              ; preds = %294
  %301 = load i32, i32* %12, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %302
  %304 = load %struct.dquot*, %struct.dquot** %303, align 8
  %305 = call i32 @mark_dquot_dirty(%struct.dquot* %304)
  br label %306

306:                                              ; preds = %300, %294
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %308
  %310 = load %struct.dquot*, %struct.dquot** %309, align 8
  %311 = icmp ne %struct.dquot* %310, null
  br i1 %311, label %312, label %321

312:                                              ; preds = %306
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %314
  %316 = load %struct.dquot*, %struct.dquot** %315, align 8
  %317 = call i32 @mark_dquot_dirty(%struct.dquot* %316)
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %319
  store %struct.dquot* null, %struct.dquot** %320, align 8
  br label %321

321:                                              ; preds = %312, %306
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  br label %290

325:                                              ; preds = %290
  br label %326

326:                                              ; preds = %370, %325
  %327 = call i32 @flush_warnings(%struct.dquot** %26, i8* %64)
  %328 = call i32 @flush_warnings(%struct.dquot** %23, i8* %67)
  %329 = call i32 @flush_warnings(%struct.dquot** %23, i8* %70)
  br label %330

330:                                              ; preds = %326, %133
  store i32 0, i32* %12, align 4
  br label %331

331:                                              ; preds = %346, %330
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* @MAXQUOTAS, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %349

335:                                              ; preds = %331
  %336 = load i32, i32* %12, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %337
  %339 = load %struct.dquot*, %struct.dquot** %338, align 8
  %340 = call i32 @dqput(%struct.dquot* %339)
  %341 = load i32, i32* %12, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.dquot*, %struct.dquot** %26, i64 %342
  %344 = load %struct.dquot*, %struct.dquot** %343, align 8
  %345 = call i32 @dqput(%struct.dquot* %344)
  br label %346

346:                                              ; preds = %335
  %347 = load i32, i32* %12, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %12, align 4
  br label %331

349:                                              ; preds = %331
  %350 = load i32, i32* %13, align 4
  store i32 %350, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %372

351:                                              ; preds = %193
  %352 = call i32 @spin_unlock(i32* @dq_data_lock)
  %353 = load %struct.inode*, %struct.inode** %4, align 8
  %354 = getelementptr inbounds %struct.inode, %struct.inode* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call %struct.TYPE_2__* @sb_dqopt(i32 %355)
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 0
  %358 = call i32 @up_write(i32* %357)
  store i32 0, i32* %12, align 4
  br label %359

359:                                              ; preds = %367, %351
  %360 = load i32, i32* %12, align 4
  %361 = load i32, i32* @MAXQUOTAS, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %370

363:                                              ; preds = %359
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.dquot*, %struct.dquot** %23, i64 %365
  store %struct.dquot* null, %struct.dquot** %366, align 8
  br label %367

367:                                              ; preds = %363
  %368 = load i32, i32* %12, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %12, align 4
  br label %359

370:                                              ; preds = %359
  %371 = load i32, i32* @NO_QUOTA, align 4
  store i32 %371, i32* %13, align 4
  br label %326

372:                                              ; preds = %349, %74
  %373 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %373)
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #2

declare dso_local %struct.dquot* @dqget(i32, i64, i64) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local %struct.TYPE_2__* @sb_dqopt(i32) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i64 @inode_get_bytes(%struct.inode*) #2

declare dso_local i64 @inode_get_rsv_space(%struct.inode*) #2

declare dso_local i32 @check_idq(%struct.dquot*, i32, i8*) #2

declare dso_local i32 @check_bdq(%struct.dquot*, i64, i32, i8*) #2

declare dso_local signext i8 @info_idq_free(%struct.dquot*, i32) #2

declare dso_local signext i8 @info_bdq_free(%struct.dquot*, i64) #2

declare dso_local i32 @dquot_decr_inodes(%struct.dquot*, i32) #2

declare dso_local i32 @dquot_decr_space(%struct.dquot*, i64) #2

declare dso_local i32 @dquot_free_reserved_space(%struct.dquot*, i64) #2

declare dso_local i32 @dquot_incr_inodes(%struct.dquot*, i32) #2

declare dso_local i32 @dquot_incr_space(%struct.dquot*, i64) #2

declare dso_local i32 @dquot_resv_space(%struct.dquot*, i64) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @mark_dquot_dirty(%struct.dquot*) #2

declare dso_local i32 @flush_warnings(%struct.dquot**, i8*) #2

declare dso_local i32 @dqput(%struct.dquot*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
