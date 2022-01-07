; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32* }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"lookup succeeded but map dirent failed\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"hpfs_rename: could not find dirent\00", align 1
@EFSERROR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"hpfs_rename: dirent already exists!\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"lookup succeeded but map dirent failed at #2\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"hpfs_rename: could not remove dirent\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @hpfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.quad_buffer_head, align 4
  %17 = alloca %struct.quad_buffer_head, align 4
  %18 = alloca %struct.hpfs_dirent*, align 8
  %19 = alloca %struct.hpfs_dirent*, align 8
  %20 = alloca %struct.hpfs_dirent, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca %struct.fnode*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %10, align 8
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.dentry*, %struct.dentry** %9, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %12, align 8
  %41 = load %struct.dentry*, %struct.dentry** %9, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  store %struct.inode* %47, %struct.inode** %14, align 8
  %48 = load %struct.dentry*, %struct.dentry** %9, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load %struct.inode*, %struct.inode** %49, align 8
  store %struct.inode* %50, %struct.inode** %15, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @hpfs_chk_name(i8* %51, i32* %13)
  store i32 %52, i32* %25, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %4
  %55 = load i32, i32* %25, align 4
  store i32 %55, i32* %5, align 4
  br label %385

56:                                               ; preds = %4
  store i32 0, i32* %25, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @hpfs_adjust_length(i8* %57, i32* %11)
  %59 = call i32 (...) @lock_kernel()
  %60 = load %struct.inode*, %struct.inode** %14, align 8
  %61 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.inode*, %struct.inode** %15, align 8
  %65 = icmp ne %struct.inode* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.inode*, %struct.inode** %15, align 8
  %68 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  br label %71

71:                                               ; preds = %66, %56
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = icmp ne %struct.inode* %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = call i32 @mutex_lock(i32* %82)
  br label %84

84:                                               ; preds = %79, %71
  %85 = load %struct.inode*, %struct.inode** %15, align 8
  %86 = icmp ne %struct.inode* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.inode*, %struct.inode** %15, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @S_ISDIR(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %25, align 4
  br label %357

96:                                               ; preds = %87, %84
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %97, i32 %101, i8* %102, i32 %103, i32* %21, %struct.quad_buffer_head* %16)
  store %struct.hpfs_dirent* %104, %struct.hpfs_dirent** %18, align 8
  %105 = icmp ne %struct.hpfs_dirent* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %96
  %107 = load %struct.inode*, %struct.inode** %14, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @hpfs_error(i32 %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %25, align 4
  br label %357

113:                                              ; preds = %96
  %114 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %18, align 8
  %115 = call i32 @copy_de(%struct.hpfs_dirent* %20, %struct.hpfs_dirent* %114)
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 46
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %20, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  %123 = load %struct.inode*, %struct.inode** %15, align 8
  %124 = icmp ne %struct.inode* %123, null
  br i1 %124, label %125, label %178

125:                                              ; preds = %113
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = load i32, i32* %21, align 4
  %128 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %18, align 8
  %129 = call i32 @hpfs_remove_dirent(%struct.inode* %126, i32 %127, %struct.hpfs_dirent* %128, %struct.quad_buffer_head* %16, i32 1)
  store i32 %129, i32* %26, align 4
  %130 = icmp ne i32 %129, 2
  br i1 %130, label %131, label %161

131:                                              ; preds = %125
  %132 = load %struct.inode*, %struct.inode** %8, align 8
  %133 = load %struct.inode*, %struct.inode** %8, align 8
  %134 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %133)
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %132, i32 %136, i8* %137, i32 %138, i32* null, %struct.quad_buffer_head* %17)
  store %struct.hpfs_dirent* %139, %struct.hpfs_dirent** %19, align 8
  %140 = icmp ne %struct.hpfs_dirent* %139, null
  br i1 %140, label %141, label %154

141:                                              ; preds = %131
  %142 = load %struct.inode*, %struct.inode** %15, align 8
  %143 = call i32 @clear_nlink(%struct.inode* %142)
  %144 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %145 = call i32 @copy_de(%struct.hpfs_dirent* %144, %struct.hpfs_dirent* %20)
  %146 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %19, align 8
  %147 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @memcpy(i32* %148, i8* %149, i32 %150)
  %152 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %17)
  %153 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %17)
  br label %279

154:                                              ; preds = %131
  %155 = load %struct.inode*, %struct.inode** %8, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @hpfs_error(i32 %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* @EFSERROR, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %25, align 4
  br label %357

161:                                              ; preds = %125
  %162 = load i32, i32* %26, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* @ENOSPC, align 4
  %166 = sub nsw i32 0, %165
  br label %176

167:                                              ; preds = %161
  %168 = load i32, i32* %26, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* @EFSERROR, align 4
  %172 = sub nsw i32 0, %171
  br label %174

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %170
  %175 = phi i32 [ %172, %170 ], [ 0, %173 ]
  br label %176

176:                                              ; preds = %174, %164
  %177 = phi i32 [ %166, %164 ], [ %175, %174 ]
  store i32 %177, i32* %25, align 4
  br label %357

178:                                              ; preds = %113
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  %180 = load %struct.inode*, %struct.inode** %6, align 8
  %181 = icmp eq %struct.inode* %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %16)
  br label %184

184:                                              ; preds = %182, %178
  %185 = load %struct.inode*, %struct.inode** %14, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @hpfs_lock_creation(i32 %187)
  %189 = load %struct.inode*, %struct.inode** %8, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @hpfs_add_dirent(%struct.inode* %189, i8* %190, i32 %191, %struct.hpfs_dirent* %20, i32 1)
  store i32 %192, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %223

194:                                              ; preds = %184
  %195 = load %struct.inode*, %struct.inode** %14, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @hpfs_unlock_creation(i32 %197)
  %199 = load i32, i32* %22, align 4
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load %struct.inode*, %struct.inode** %8, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @hpfs_error(i32 %204, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %206

206:                                              ; preds = %201, %194
  %207 = load i32, i32* %22, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* @ENOSPC, align 4
  %211 = sub nsw i32 0, %210
  br label %215

212:                                              ; preds = %206
  %213 = load i32, i32* @EFSERROR, align 4
  %214 = sub nsw i32 0, %213
  br label %215

215:                                              ; preds = %212, %209
  %216 = phi i32 [ %211, %209 ], [ %214, %212 ]
  store i32 %216, i32* %25, align 4
  %217 = load %struct.inode*, %struct.inode** %8, align 8
  %218 = load %struct.inode*, %struct.inode** %6, align 8
  %219 = icmp ne %struct.inode* %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %16)
  br label %222

222:                                              ; preds = %220, %215
  br label %357

223:                                              ; preds = %184
  %224 = load %struct.inode*, %struct.inode** %8, align 8
  %225 = load %struct.inode*, %struct.inode** %6, align 8
  %226 = icmp eq %struct.inode* %224, %225
  br i1 %226, label %227, label %249

227:                                              ; preds = %223
  %228 = load %struct.inode*, %struct.inode** %6, align 8
  %229 = load %struct.inode*, %struct.inode** %6, align 8
  %230 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %229)
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = load i8*, i8** %10, align 8
  %234 = load i32, i32* %11, align 4
  %235 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %228, i32 %232, i8* %233, i32 %234, i32* %21, %struct.quad_buffer_head* %16)
  store %struct.hpfs_dirent* %235, %struct.hpfs_dirent** %18, align 8
  %236 = icmp ne %struct.hpfs_dirent* %235, null
  br i1 %236, label %248, label %237

237:                                              ; preds = %227
  %238 = load %struct.inode*, %struct.inode** %14, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @hpfs_unlock_creation(i32 %240)
  %242 = load %struct.inode*, %struct.inode** %14, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @hpfs_error(i32 %244, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %246 = load i32, i32* @ENOENT, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %25, align 4
  br label %357

248:                                              ; preds = %227
  br label %249

249:                                              ; preds = %248, %223
  %250 = load %struct.inode*, %struct.inode** %6, align 8
  %251 = load i32, i32* %21, align 4
  %252 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %18, align 8
  %253 = call i32 @hpfs_remove_dirent(%struct.inode* %250, i32 %251, %struct.hpfs_dirent* %252, %struct.quad_buffer_head* %16, i32 0)
  store i32 %253, i32* %22, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %274

255:                                              ; preds = %249
  %256 = load %struct.inode*, %struct.inode** %14, align 8
  %257 = getelementptr inbounds %struct.inode, %struct.inode* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @hpfs_unlock_creation(i32 %258)
  %260 = load %struct.inode*, %struct.inode** %14, align 8
  %261 = getelementptr inbounds %struct.inode, %struct.inode* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @hpfs_error(i32 %262, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %264 = load i32, i32* %22, align 4
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %269

266:                                              ; preds = %255
  %267 = load i32, i32* @ENOSPC, align 4
  %268 = sub nsw i32 0, %267
  br label %272

269:                                              ; preds = %255
  %270 = load i32, i32* @EFSERROR, align 4
  %271 = sub nsw i32 0, %270
  br label %272

272:                                              ; preds = %269, %266
  %273 = phi i32 [ %268, %266 ], [ %271, %269 ]
  store i32 %273, i32* %25, align 4
  br label %357

274:                                              ; preds = %249
  %275 = load %struct.inode*, %struct.inode** %14, align 8
  %276 = getelementptr inbounds %struct.inode, %struct.inode* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @hpfs_unlock_creation(i32 %277)
  br label %279

279:                                              ; preds = %274, %141
  %280 = load %struct.inode*, %struct.inode** %8, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.inode*, %struct.inode** %14, align 8
  %284 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %283)
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 3
  store i32 %282, i32* %285, align 4
  %286 = load %struct.inode*, %struct.inode** %14, align 8
  %287 = getelementptr inbounds %struct.inode, %struct.inode* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = call i64 @S_ISDIR(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %279
  %292 = load %struct.inode*, %struct.inode** %8, align 8
  %293 = call i32 @inc_nlink(%struct.inode* %292)
  %294 = load %struct.inode*, %struct.inode** %6, align 8
  %295 = call i32 @drop_nlink(%struct.inode* %294)
  br label %296

296:                                              ; preds = %291, %279
  %297 = load %struct.inode*, %struct.inode** %14, align 8
  %298 = getelementptr inbounds %struct.inode, %struct.inode* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.inode*, %struct.inode** %14, align 8
  %301 = getelementptr inbounds %struct.inode, %struct.inode* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call %struct.fnode* @hpfs_map_fnode(i32 %299, i32 %302, %struct.buffer_head** %23)
  store %struct.fnode* %303, %struct.fnode** %24, align 8
  %304 = icmp ne %struct.fnode* %303, null
  br i1 %304, label %305, label %343

305:                                              ; preds = %296
  %306 = load %struct.inode*, %struct.inode** %8, align 8
  %307 = getelementptr inbounds %struct.inode, %struct.inode* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.fnode*, %struct.fnode** %24, align 8
  %310 = getelementptr inbounds %struct.fnode, %struct.fnode* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* %13, align 4
  %312 = load %struct.fnode*, %struct.fnode** %24, align 8
  %313 = getelementptr inbounds %struct.fnode, %struct.fnode* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load %struct.fnode*, %struct.fnode** %24, align 8
  %315 = getelementptr inbounds %struct.fnode, %struct.fnode* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = load i8*, i8** %12, align 8
  %318 = load i32, i32* %13, align 4
  %319 = icmp sgt i32 %318, 15
  br i1 %319, label %320, label %321

320:                                              ; preds = %305
  br label %323

321:                                              ; preds = %305
  %322 = load i32, i32* %13, align 4
  br label %323

323:                                              ; preds = %321, %320
  %324 = phi i32 [ 15, %320 ], [ %322, %321 ]
  %325 = call i32 @memcpy(i32* %316, i8* %317, i32 %324)
  %326 = load i32, i32* %13, align 4
  %327 = icmp slt i32 %326, 15
  br i1 %327, label %328, label %338

328:                                              ; preds = %323
  %329 = load %struct.fnode*, %struct.fnode** %24, align 8
  %330 = getelementptr inbounds %struct.fnode, %struct.fnode* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %13, align 4
  %336 = sub nsw i32 15, %335
  %337 = call i32 @memset(i32* %334, i32 0, i32 %336)
  br label %338

338:                                              ; preds = %328, %323
  %339 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %340 = call i32 @mark_buffer_dirty(%struct.buffer_head* %339)
  %341 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %342 = call i32 @brelse(%struct.buffer_head* %341)
  br label %343

343:                                              ; preds = %338, %296
  %344 = load %struct.inode*, %struct.inode** %14, align 8
  %345 = getelementptr inbounds %struct.inode, %struct.inode* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call %struct.TYPE_5__* @hpfs_sb(i32 %346)
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.inode*, %struct.inode** %14, align 8
  %351 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %350)
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 2
  store i32 %349, i32* %352, align 4
  %353 = load %struct.inode*, %struct.inode** %14, align 8
  %354 = load i8*, i8** %12, align 8
  %355 = load i32, i32* %13, align 4
  %356 = call i32 @hpfs_decide_conv(%struct.inode* %353, i8* %354, i32 %355)
  br label %357

357:                                              ; preds = %343, %272, %237, %222, %176, %154, %106, %93
  %358 = load %struct.inode*, %struct.inode** %6, align 8
  %359 = load %struct.inode*, %struct.inode** %8, align 8
  %360 = icmp ne %struct.inode* %358, %359
  br i1 %360, label %361, label %366

361:                                              ; preds = %357
  %362 = load %struct.inode*, %struct.inode** %8, align 8
  %363 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %362)
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 1
  %365 = call i32 @mutex_unlock(i32* %364)
  br label %366

366:                                              ; preds = %361, %357
  %367 = load %struct.inode*, %struct.inode** %6, align 8
  %368 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %367)
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 1
  %370 = call i32 @mutex_unlock(i32* %369)
  %371 = load %struct.inode*, %struct.inode** %14, align 8
  %372 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %371)
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = call i32 @mutex_unlock(i32* %373)
  %375 = load %struct.inode*, %struct.inode** %15, align 8
  %376 = icmp ne %struct.inode* %375, null
  br i1 %376, label %377, label %382

377:                                              ; preds = %366
  %378 = load %struct.inode*, %struct.inode** %15, align 8
  %379 = call %struct.TYPE_6__* @hpfs_i(%struct.inode* %378)
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 0
  %381 = call i32 @mutex_unlock(i32* %380)
  br label %382

382:                                              ; preds = %377, %366
  %383 = call i32 (...) @unlock_kernel()
  %384 = load i32, i32* %25, align 4
  store i32 %384, i32* %5, align 4
  br label %385

385:                                              ; preds = %382, %54
  %386 = load i32, i32* %5, align 4
  ret i32 %386
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i32 @hpfs_adjust_length(i8*, i32*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @hpfs_i(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_error(i32, i8*) #1

declare dso_local i32 @copy_de(%struct.hpfs_dirent*, %struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_remove_dirent(%struct.inode*, i32, %struct.hpfs_dirent*, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_lock_creation(i32) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @hpfs_unlock_creation(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_5__* @hpfs_sb(i32) #1

declare dso_local i32 @hpfs_decide_conv(%struct.inode*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
