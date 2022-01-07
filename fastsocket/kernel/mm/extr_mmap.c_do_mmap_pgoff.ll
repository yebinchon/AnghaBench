; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_do_mmap_pgoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_do_mmap_pgoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_9__*, %struct.mm_struct* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.mm_struct = type { i64, i32, i64 }
%struct.file = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.inode* }
%struct.inode = type { i32 }

@current = common dso_local global %struct.TYPE_14__* null, align 8
@PROT_READ = common dso_local global i64 0, align 8
@READ_IMPLIES_EXEC = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i64 0, align 8
@sysctl_max_map_count = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@MAP_LOCKED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i64 0, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@MAP_TYPE = common dso_local global i64 0, align 8
@PROT_WRITE = common dso_local global i64 0, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_mmap_pgoff(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  store %struct.mm_struct* %23, %struct.mm_struct** %14, align 8
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %18, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @PROT_READ, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %6
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @READ_IMPLIES_EXEC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = icmp ne %struct.file* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.file*, %struct.file** %8, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MNT_NOEXEC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %39, %36
  %50 = load i64, i64* @PROT_EXEC, align 8
  %51 = load i64, i64* %11, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %49, %39
  br label %54

54:                                               ; preds = %53, %29, %6
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* @EINVAL, align 8
  %59 = sub i64 0, %58
  store i64 %59, i64* %7, align 8
  br label %343

60:                                               ; preds = %54
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @MAP_FIXED, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @round_hint_to_min(i64 %66)
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @PAGE_ALIGN(i64 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* @ENOMEM, align 8
  %75 = sub i64 0, %74
  store i64 %75, i64* %7, align 8
  br label %343

76:                                               ; preds = %68
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = lshr i64 %78, %79
  %81 = add i64 %77, %80
  %82 = load i64, i64* %13, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i64, i64* @EOVERFLOW, align 8
  %86 = sub i64 0, %85
  store i64 %86, i64* %7, align 8
  br label %343

87:                                               ; preds = %76
  %88 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @sysctl_max_map_count, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i64, i64* @ENOMEM, align 8
  %95 = sub i64 0, %94
  store i64 %95, i64* %7, align 8
  br label %343

96:                                               ; preds = %87
  %97 = load %struct.file*, %struct.file** %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @PROT_EXEC, align 8
  %104 = and i64 %102, %103
  %105 = call i64 @get_unmapped_area_prot(%struct.file* %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %104)
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @PAGE_MASK, align 8
  %108 = xor i64 %107, -1
  %109 = and i64 %106, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %96
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %7, align 8
  br label %343

113:                                              ; preds = %96
  %114 = load i64, i64* %11, align 8
  %115 = call i32 @calc_vm_prot_bits(i64 %114)
  %116 = load i64, i64* %12, align 8
  %117 = call i32 @calc_vm_flag_bits(i64 %116)
  %118 = or i32 %115, %117
  %119 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %120 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %118, %121
  %123 = load i32, i32* @VM_MAYREAD, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @VM_MAYWRITE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @VM_MAYEXEC, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %16, align 4
  %129 = load i64, i64* %12, align 8
  %130 = load i64, i64* @MAP_LOCKED, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %113
  %134 = call i32 (...) @can_do_mlock()
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i64, i64* @EPERM, align 8
  %138 = sub i64 0, %137
  store i64 %138, i64* %7, align 8
  br label %343

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %113
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @VM_LOCKED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %177

145:                                              ; preds = %140
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @PAGE_SHIFT, align 8
  %148 = lshr i64 %146, %147
  store i64 %148, i64* %19, align 8
  %149 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %150 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %19, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %19, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** @current, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i64, i64* @RLIMIT_MEMLOCK, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %20, align 8
  %163 = load i64, i64* @PAGE_SHIFT, align 8
  %164 = load i64, i64* %20, align 8
  %165 = lshr i64 %164, %163
  store i64 %165, i64* %20, align 8
  %166 = load i64, i64* %19, align 8
  %167 = load i64, i64* %20, align 8
  %168 = icmp ugt i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %145
  %170 = load i32, i32* @CAP_IPC_LOCK, align 4
  %171 = call i32 @capable(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i64, i64* @EAGAIN, align 8
  %175 = sub i64 0, %174
  store i64 %175, i64* %7, align 8
  br label %343

176:                                              ; preds = %169, %145
  br label %177

177:                                              ; preds = %176, %140
  %178 = load %struct.file*, %struct.file** %8, align 8
  %179 = icmp ne %struct.file* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load %struct.file*, %struct.file** %8, align 8
  %182 = getelementptr inbounds %struct.file, %struct.file* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load %struct.inode*, %struct.inode** %185, align 8
  br label %188

187:                                              ; preds = %177
  br label %188

188:                                              ; preds = %187, %180
  %189 = phi %struct.inode* [ %186, %180 ], [ null, %187 ]
  store %struct.inode* %189, %struct.inode** %15, align 8
  %190 = load %struct.file*, %struct.file** %8, align 8
  %191 = icmp ne %struct.file* %190, null
  br i1 %191, label %192, label %305

192:                                              ; preds = %188
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* @MAP_TYPE, align 8
  %195 = and i64 %193, %194
  switch i64 %195, label %301 [
    i64 128, label %196
    i64 129, label %252
  ]

196:                                              ; preds = %192
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* @PROT_WRITE, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %196
  %202 = load %struct.file*, %struct.file** %8, align 8
  %203 = getelementptr inbounds %struct.file, %struct.file* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @FMODE_WRITE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %201
  %209 = load i64, i64* @EACCES, align 8
  %210 = sub i64 0, %209
  store i64 %210, i64* %7, align 8
  br label %343

211:                                              ; preds = %201, %196
  %212 = load %struct.inode*, %struct.inode** %15, align 8
  %213 = call i32 @IS_APPEND(%struct.inode* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load %struct.file*, %struct.file** %8, align 8
  %217 = getelementptr inbounds %struct.file, %struct.file* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @FMODE_WRITE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load i64, i64* @EACCES, align 8
  %224 = sub i64 0, %223
  store i64 %224, i64* %7, align 8
  br label %343

225:                                              ; preds = %215, %211
  %226 = load %struct.inode*, %struct.inode** %15, align 8
  %227 = call i32 @locks_verify_locked(%struct.inode* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i64, i64* @EAGAIN, align 8
  %231 = sub i64 0, %230
  store i64 %231, i64* %7, align 8
  br label %343

232:                                              ; preds = %225
  %233 = load i32, i32* @VM_SHARED, align 4
  %234 = load i32, i32* @VM_MAYSHARE, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* %16, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %16, align 4
  %238 = load %struct.file*, %struct.file** %8, align 8
  %239 = getelementptr inbounds %struct.file, %struct.file* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @FMODE_WRITE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %232
  %245 = load i32, i32* @VM_MAYWRITE, align 4
  %246 = load i32, i32* @VM_SHARED, align 4
  %247 = or i32 %245, %246
  %248 = xor i32 %247, -1
  %249 = load i32, i32* %16, align 4
  %250 = and i32 %249, %248
  store i32 %250, i32* %16, align 4
  br label %251

251:                                              ; preds = %244, %232
  br label %252

252:                                              ; preds = %192, %251
  %253 = load %struct.file*, %struct.file** %8, align 8
  %254 = getelementptr inbounds %struct.file, %struct.file* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @FMODE_READ, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %252
  %260 = load i64, i64* @EACCES, align 8
  %261 = sub i64 0, %260
  store i64 %261, i64* %7, align 8
  br label %343

262:                                              ; preds = %252
  %263 = load %struct.file*, %struct.file** %8, align 8
  %264 = getelementptr inbounds %struct.file, %struct.file* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @MNT_NOEXEC, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %262
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* @VM_EXEC, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load i64, i64* @EPERM, align 8
  %279 = sub i64 0, %278
  store i64 %279, i64* %7, align 8
  br label %343

280:                                              ; preds = %272
  %281 = load i32, i32* @VM_MAYEXEC, align 4
  %282 = xor i32 %281, -1
  %283 = load i32, i32* %16, align 4
  %284 = and i32 %283, %282
  store i32 %284, i32* %16, align 4
  br label %285

285:                                              ; preds = %280, %262
  %286 = load %struct.file*, %struct.file** %8, align 8
  %287 = getelementptr inbounds %struct.file, %struct.file* %286, i32 0, i32 1
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = icmp ne %struct.TYPE_13__* %288, null
  br i1 %289, label %290, label %297

290:                                              ; preds = %285
  %291 = load %struct.file*, %struct.file** %8, align 8
  %292 = getelementptr inbounds %struct.file, %struct.file* %291, i32 0, i32 1
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %290, %285
  %298 = load i64, i64* @ENODEV, align 8
  %299 = sub i64 0, %298
  store i64 %299, i64* %7, align 8
  br label %343

300:                                              ; preds = %290
  br label %304

301:                                              ; preds = %192
  %302 = load i64, i64* @EINVAL, align 8
  %303 = sub i64 0, %302
  store i64 %303, i64* %7, align 8
  br label %343

304:                                              ; preds = %300
  br label %323

305:                                              ; preds = %188
  %306 = load i64, i64* %12, align 8
  %307 = load i64, i64* @MAP_TYPE, align 8
  %308 = and i64 %306, %307
  switch i64 %308, label %319 [
    i64 128, label %309
    i64 129, label %315
  ]

309:                                              ; preds = %305
  store i64 0, i64* %13, align 8
  %310 = load i32, i32* @VM_SHARED, align 4
  %311 = load i32, i32* @VM_MAYSHARE, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* %16, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %16, align 4
  br label %322

315:                                              ; preds = %305
  %316 = load i64, i64* %9, align 8
  %317 = load i64, i64* @PAGE_SHIFT, align 8
  %318 = lshr i64 %316, %317
  store i64 %318, i64* %13, align 8
  br label %322

319:                                              ; preds = %305
  %320 = load i64, i64* @EINVAL, align 8
  %321 = sub i64 0, %320
  store i64 %321, i64* %7, align 8
  br label %343

322:                                              ; preds = %315, %309
  br label %323

323:                                              ; preds = %322, %304
  %324 = load %struct.file*, %struct.file** %8, align 8
  %325 = load i64, i64* %18, align 8
  %326 = load i64, i64* %11, align 8
  %327 = load i64, i64* %12, align 8
  %328 = load i64, i64* %9, align 8
  %329 = call i32 @security_file_mmap(%struct.file* %324, i64 %325, i64 %326, i64 %327, i64 %328, i32 0)
  store i32 %329, i32* %17, align 4
  %330 = load i32, i32* %17, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %323
  %333 = load i32, i32* %17, align 4
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %7, align 8
  br label %343

335:                                              ; preds = %323
  %336 = load %struct.file*, %struct.file** %8, align 8
  %337 = load i64, i64* %9, align 8
  %338 = load i64, i64* %10, align 8
  %339 = load i64, i64* %12, align 8
  %340 = load i32, i32* %16, align 4
  %341 = load i64, i64* %13, align 8
  %342 = call i64 @mmap_region(%struct.file* %336, i64 %337, i64 %338, i64 %339, i32 %340, i64 %341)
  store i64 %342, i64* %7, align 8
  br label %343

343:                                              ; preds = %335, %332, %319, %301, %297, %277, %259, %229, %222, %208, %173, %136, %111, %93, %84, %73, %57
  %344 = load i64, i64* %7, align 8
  ret i64 %344
}

declare dso_local i64 @round_hint_to_min(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @get_unmapped_area_prot(%struct.file*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @calc_vm_prot_bits(i64) #1

declare dso_local i32 @calc_vm_flag_bits(i64) #1

declare dso_local i32 @can_do_mlock(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @locks_verify_locked(%struct.inode*) #1

declare dso_local i32 @security_file_mmap(%struct.file*, i64, i64, i64, i64, i32) #1

declare dso_local i64 @mmap_region(%struct.file*, i64, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
