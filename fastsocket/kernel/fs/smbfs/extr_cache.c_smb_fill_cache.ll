; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_cache.c_smb_fill_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_cache.c_smb_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.dentry = type { i8*, %struct.inode*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.inode = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 (%struct.dentry*, %struct.qstr*)* }
%struct.smb_cache_control = type { i64, i64, i32, i64, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.dentry** }
%struct.qstr = type { i32, i32, i32 }
%struct.smb_fattr = type { i8* }

@SMB_DIRCACHE_SIZE = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_fill_cache(%struct.file* %0, i8* %1, i64 (i8*, i32, i32, i64, i8*, i32)* %2, %struct.smb_cache_control* %3, %struct.qstr* %4, %struct.smb_fattr* %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i32, i32, i64, i8*, i32)*, align 8
  %10 = alloca %struct.smb_cache_control*, align 8
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca %struct.smb_fattr*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.smb_cache_control, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 (i8*, i32, i32, i64, i8*, i32)* %2, i64 (i8*, i32, i32, i64, i8*, i32)** %9, align 8
  store %struct.smb_cache_control* %3, %struct.smb_cache_control** %10, align 8
  store %struct.qstr* %4, %struct.qstr** %11, align 8
  store %struct.smb_fattr* %5, %struct.smb_fattr** %12, align 8
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  store %struct.dentry* %24, %struct.dentry** %14, align 8
  %25 = load %struct.dentry*, %struct.dentry** %14, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %16, align 8
  %28 = load %struct.smb_cache_control*, %struct.smb_cache_control** %10, align 8
  %29 = bitcast %struct.smb_cache_control* %17 to i8*
  %30 = bitcast %struct.smb_cache_control* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 56, i1 false)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i8* null, i8** %20, align 8
  %31 = load %struct.qstr*, %struct.qstr** %11, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qstr*, %struct.qstr** %11, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @full_name_hash(i32 %33, i32 %36)
  %38 = load %struct.qstr*, %struct.qstr** %11, align 8
  %39 = getelementptr inbounds %struct.qstr, %struct.qstr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dentry*, %struct.dentry** %14, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %6
  %45 = load %struct.dentry*, %struct.dentry** %14, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64 (%struct.dentry*, %struct.qstr*)*, i64 (%struct.dentry*, %struct.qstr*)** %48, align 8
  %50 = icmp ne i64 (%struct.dentry*, %struct.qstr*)* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.dentry*, %struct.dentry** %14, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64 (%struct.dentry*, %struct.qstr*)*, i64 (%struct.dentry*, %struct.qstr*)** %55, align 8
  %57 = load %struct.dentry*, %struct.dentry** %14, align 8
  %58 = load %struct.qstr*, %struct.qstr** %11, align 8
  %59 = call i64 %56(%struct.dentry* %57, %struct.qstr* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %211

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %44, %6
  %64 = load %struct.dentry*, %struct.dentry** %14, align 8
  %65 = load %struct.qstr*, %struct.qstr** %11, align 8
  %66 = call %struct.dentry* @d_lookup(%struct.dentry* %64, %struct.qstr* %65)
  store %struct.dentry* %66, %struct.dentry** %13, align 8
  %67 = load %struct.dentry*, %struct.dentry** %13, align 8
  %68 = icmp ne %struct.dentry* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %63
  %70 = load %struct.dentry*, %struct.dentry** %14, align 8
  %71 = load %struct.qstr*, %struct.qstr** %11, align 8
  %72 = call %struct.dentry* @d_alloc(%struct.dentry* %70, %struct.qstr* %71)
  store %struct.dentry* %72, %struct.dentry** %13, align 8
  %73 = load %struct.dentry*, %struct.dentry** %13, align 8
  %74 = icmp ne %struct.dentry* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %211

76:                                               ; preds = %69
  br label %91

77:                                               ; preds = %63
  store i32 1, i32* %19, align 4
  %78 = load %struct.dentry*, %struct.dentry** %13, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.qstr*, %struct.qstr** %11, align 8
  %84 = getelementptr inbounds %struct.qstr, %struct.qstr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dentry*, %struct.dentry** %13, align 8
  %87 = getelementptr inbounds %struct.dentry, %struct.dentry* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @memcpy(i8* %82, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %77, %76
  %92 = load %struct.dentry*, %struct.dentry** %13, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 1
  %94 = load %struct.inode*, %struct.inode** %93, align 8
  %95 = icmp ne %struct.inode* %94, null
  br i1 %95, label %125, label %96

96:                                               ; preds = %91
  %97 = load %struct.dentry*, %struct.dentry** %13, align 8
  %98 = call i32 @smb_renew_times(%struct.dentry* %97)
  %99 = load %struct.inode*, %struct.inode** %16, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @iunique(i32 %101, i32 2)
  %103 = load %struct.smb_fattr*, %struct.smb_fattr** %12, align 8
  %104 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.inode*, %struct.inode** %16, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.smb_fattr*, %struct.smb_fattr** %12, align 8
  %109 = call %struct.inode* @smb_iget(i32 %107, %struct.smb_fattr* %108)
  store %struct.inode* %109, %struct.inode** %15, align 8
  %110 = load %struct.inode*, %struct.inode** %15, align 8
  %111 = icmp ne %struct.inode* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %96
  %113 = load %struct.dentry*, %struct.dentry** %13, align 8
  %114 = call i32 @smb_new_dentry(%struct.dentry* %113)
  %115 = load %struct.dentry*, %struct.dentry** %13, align 8
  %116 = load %struct.inode*, %struct.inode** %15, align 8
  %117 = call i32 @d_instantiate(%struct.dentry* %115, %struct.inode* %116)
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %112
  %121 = load %struct.dentry*, %struct.dentry** %13, align 8
  %122 = call i32 @d_rehash(%struct.dentry* %121)
  br label %123

123:                                              ; preds = %120, %112
  br label %124

124:                                              ; preds = %123, %96
  br label %131

125:                                              ; preds = %91
  %126 = load %struct.dentry*, %struct.dentry** %13, align 8
  %127 = getelementptr inbounds %struct.dentry, %struct.dentry* %126, i32 0, i32 1
  %128 = load %struct.inode*, %struct.inode** %127, align 8
  %129 = load %struct.smb_fattr*, %struct.smb_fattr** %12, align 8
  %130 = call i32 @smb_set_inode_attr(%struct.inode* %128, %struct.smb_fattr* %129)
  br label %131

131:                                              ; preds = %125, %124
  %132 = load %struct.dentry*, %struct.dentry** %13, align 8
  %133 = getelementptr inbounds %struct.dentry, %struct.dentry* %132, i32 0, i32 1
  %134 = load %struct.inode*, %struct.inode** %133, align 8
  %135 = icmp ne %struct.inode* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.dentry*, %struct.dentry** %13, align 8
  %138 = getelementptr inbounds %struct.dentry, %struct.dentry* %137, i32 0, i32 1
  %139 = load %struct.inode*, %struct.inode** %138, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %20, align 8
  %142 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.dentry*, %struct.dentry** %13, align 8
  %146 = getelementptr inbounds %struct.dentry, %struct.dentry* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load %struct.dentry*, %struct.dentry** %13, align 8
  %148 = call i32 @smb_new_dentry(%struct.dentry* %147)
  br label %149

149:                                              ; preds = %136, %131
  %150 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SMB_DIRCACHE_SIZE, align 8
  %153 = icmp uge i64 %151, %152
  br i1 %153, label %154, label %195

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @kunmap(i64 %160)
  %162 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @SetPageUptodate(i64 %163)
  %165 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @unlock_page(i64 %166)
  %168 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @page_cache_release(i64 %169)
  br label %171

171:                                              ; preds = %158, %154
  %172 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %172, align 8
  %173 = load i64, i64* @SMB_DIRCACHE_SIZE, align 8
  %174 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = sub i64 %175, %173
  store i64 %176, i64* %174, align 8
  %177 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.inode*, %struct.inode** %16, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @grab_cache_page(i32* %181, i32 %183)
  %185 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 6
  store i64 %184, i64* %185, align 8
  %186 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %171
  %190 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = call %struct.TYPE_8__* @kmap(i64 %191)
  %193 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 5
  store %struct.TYPE_8__* %192, %struct.TYPE_8__** %193, align 8
  br label %194

194:                                              ; preds = %189, %171
  br label %195

195:                                              ; preds = %194, %149
  %196 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 5
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = icmp ne %struct.TYPE_8__* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %195
  %200 = load %struct.dentry*, %struct.dentry** %13, align 8
  %201 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 5
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load %struct.dentry**, %struct.dentry*** %203, align 8
  %205 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.dentry*, %struct.dentry** %204, i64 %206
  store %struct.dentry* %200, %struct.dentry** %207, align 8
  store i32 1, i32* %18, align 4
  br label %208

208:                                              ; preds = %199, %195
  %209 = load %struct.dentry*, %struct.dentry** %13, align 8
  %210 = call i32 @dput(%struct.dentry* %209)
  br label %211

211:                                              ; preds = %208, %75, %61
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 4
  store i32 0, i32* %215, align 8
  br label %216

216:                                              ; preds = %214, %211
  %217 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %267, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.file*, %struct.file** %7, align 8
  %224 = getelementptr inbounds %struct.file, %struct.file* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %222, %225
  br i1 %226, label %227, label %267

227:                                              ; preds = %220
  %228 = load i8*, i8** %20, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %227
  %231 = load %struct.dentry*, %struct.dentry** %14, align 8
  %232 = load %struct.qstr*, %struct.qstr** %11, align 8
  %233 = call i8* @find_inode_number(%struct.dentry* %231, %struct.qstr* %232)
  store i8* %233, i8** %20, align 8
  br label %234

234:                                              ; preds = %230, %227
  %235 = load i8*, i8** %20, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %242, label %237

237:                                              ; preds = %234
  %238 = load %struct.inode*, %struct.inode** %16, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i8* @iunique(i32 %240, i32 2)
  store i8* %241, i8** %20, align 8
  br label %242

242:                                              ; preds = %237, %234
  %243 = load i64 (i8*, i32, i32, i64, i8*, i32)*, i64 (i8*, i32, i32, i64, i8*, i32)** %9, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = load %struct.qstr*, %struct.qstr** %11, align 8
  %246 = getelementptr inbounds %struct.qstr, %struct.qstr* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.qstr*, %struct.qstr** %11, align 8
  %249 = getelementptr inbounds %struct.qstr, %struct.qstr* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.file*, %struct.file** %7, align 8
  %252 = getelementptr inbounds %struct.file, %struct.file* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i8*, i8** %20, align 8
  %255 = load i32, i32* @DT_UNKNOWN, align 4
  %256 = call i64 %243(i8* %244, i32 %247, i32 %250, i64 %253, i8* %254, i32 %255)
  %257 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 3
  store i64 %256, i64* %257, align 8
  %258 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %266, label %261

261:                                              ; preds = %242
  %262 = load %struct.file*, %struct.file** %7, align 8
  %263 = getelementptr inbounds %struct.file, %struct.file* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %263, align 8
  br label %266

266:                                              ; preds = %261, %242
  br label %267

267:                                              ; preds = %266, %220, %216
  %268 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, 1
  store i64 %270, i64* %268, align 8
  %271 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %271, align 8
  %274 = load %struct.smb_cache_control*, %struct.smb_cache_control** %10, align 8
  %275 = bitcast %struct.smb_cache_control* %274 to i8*
  %276 = bitcast %struct.smb_cache_control* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %275, i8* align 8 %276, i64 56, i1 false)
  %277 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %267
  %281 = getelementptr inbounds %struct.smb_cache_control, %struct.smb_cache_control* %17, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  %284 = xor i1 %283, true
  br label %285

285:                                              ; preds = %280, %267
  %286 = phi i1 [ true, %267 ], [ %284, %280 ]
  %287 = zext i1 %286 to i32
  ret i32 %287
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @full_name_hash(i32, i32) #2

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #2

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @smb_renew_times(%struct.dentry*) #2

declare dso_local i8* @iunique(i32, i32) #2

declare dso_local %struct.inode* @smb_iget(i32, %struct.smb_fattr*) #2

declare dso_local i32 @smb_new_dentry(%struct.dentry*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @d_rehash(%struct.dentry*) #2

declare dso_local i32 @smb_set_inode_attr(%struct.inode*, %struct.smb_fattr*) #2

declare dso_local i32 @kunmap(i64) #2

declare dso_local i32 @SetPageUptodate(i64) #2

declare dso_local i32 @unlock_page(i64) #2

declare dso_local i32 @page_cache_release(i64) #2

declare dso_local i64 @grab_cache_page(i32*, i32) #2

declare dso_local %struct.TYPE_8__* @kmap(i64) #2

declare dso_local i32 @dput(%struct.dentry*) #2

declare dso_local i8* @find_inode_number(%struct.dentry*, %struct.qstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
