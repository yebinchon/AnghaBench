; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_mmap_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_mmap_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i64 }
%struct.file = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (%struct.file*, %struct.vm_area_struct*)* }
%struct.vm_area_struct = type { i64, i64, i32, i64, %struct.file*, i8*, i32, %struct.mm_struct* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.rb_node = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MAP_NORESERVE = common dso_local global i64 0, align 8
@sysctl_overcommit_memory = common dso_local global i64 0, align 8
@OVERCOMMIT_NEVER = common dso_local global i64 0, align 8
@VM_NORESERVE = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i32 0, align 4
@vm_area_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_GROWSUP = common dso_local global i32 0, align 4
@VM_DENYWRITE = common dso_local global i32 0, align 4
@VM_EXECUTABLE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i64 0, align 8
@MAP_NONBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmap_region(%struct.file* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca %struct.vm_area_struct*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.rb_node**, align 8
  %20 = alloca %struct.rb_node*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.inode*, align 8
  %23 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.mm_struct*, %struct.mm_struct** %25, align 8
  store %struct.mm_struct* %26, %struct.mm_struct** %14, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %21, align 8
  %27 = load %struct.file*, %struct.file** %8, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %6
  %30 = load %struct.file*, %struct.file** %8, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  br label %37

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi %struct.inode* [ %35, %29 ], [ null, %36 ]
  store %struct.inode* %38, %struct.inode** %22, align 8
  %39 = load i64, i64* @ENOMEM, align 8
  %40 = sub i64 0, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %18, align 4
  br label %42

42:                                               ; preds = %65, %37
  %43 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call %struct.vm_area_struct* @find_vma_prepare(%struct.mm_struct* %43, i64 %44, %struct.vm_area_struct** %16, %struct.rb_node*** %19, %struct.rb_node** %20)
  store %struct.vm_area_struct* %45, %struct.vm_area_struct** %15, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %47 = icmp ne %struct.vm_area_struct* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %52, %53
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @do_munmap(%struct.mm_struct* %57, i64 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %7, align 8
  br label %366

65:                                               ; preds = %56
  br label %42

66:                                               ; preds = %48, %42
  %67 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @PAGE_SHIFT, align 8
  %70 = lshr i64 %68, %69
  %71 = call i32 @may_expand_vm(%struct.mm_struct* %67, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i64, i64* @ENOMEM, align 8
  %75 = sub i64 0, %74
  store i64 %75, i64* %7, align 8
  br label %366

76:                                               ; preds = %66
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @MAP_NORESERVE, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load i64, i64* @sysctl_overcommit_memory, align 8
  %83 = load i64, i64* @OVERCOMMIT_NEVER, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @VM_NORESERVE, align 4
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.file*, %struct.file** %8, align 8
  %91 = icmp ne %struct.file* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.file*, %struct.file** %8, align 8
  %94 = call i64 @is_file_hugepages(%struct.file* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* @VM_NORESERVE, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %92, %89
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.file*, %struct.file** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @accountable_mapping(%struct.file* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @PAGE_SHIFT, align 8
  %109 = lshr i64 %107, %108
  store i64 %109, i64* %21, align 8
  %110 = load i64, i64* %21, align 8
  %111 = call i64 @security_vm_enough_memory(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i64, i64* @ENOMEM, align 8
  %115 = sub i64 0, %114
  store i64 %115, i64* %7, align 8
  br label %366

116:                                              ; preds = %106
  %117 = load i32, i32* @VM_ACCOUNT, align 4
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %116, %101
  %121 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %10, align 8
  %126 = add i64 %124, %125
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.file*, %struct.file** %8, align 8
  %129 = load i64, i64* %13, align 8
  %130 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %121, %struct.vm_area_struct* %122, i64 %123, i64 %126, i32 %127, i32* null, %struct.file* %128, i64 %129, i32* null)
  store %struct.vm_area_struct* %130, %struct.vm_area_struct** %15, align 8
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %132 = icmp ne %struct.vm_area_struct* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  br label %270

134:                                              ; preds = %120
  %135 = load i32, i32* @vm_area_cachep, align 4
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call %struct.vm_area_struct* @kmem_cache_zalloc(i32 %135, i32 %136)
  store %struct.vm_area_struct* %137, %struct.vm_area_struct** %15, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %139 = icmp ne %struct.vm_area_struct* %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %134
  %141 = load i64, i64* @ENOMEM, align 8
  %142 = sub i64 0, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %18, align 4
  br label %357

144:                                              ; preds = %134
  %145 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %146 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %147 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %146, i32 0, i32 7
  store %struct.mm_struct* %145, %struct.mm_struct** %147, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %10, align 8
  %153 = add i64 %151, %152
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %158 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %12, align 4
  %160 = call i8* @vm_get_page_prot(i32 %159)
  %161 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %162 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %161, i32 0, i32 5
  store i8* %160, i8** %162, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %165 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %167 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %166, i32 0, i32 6
  %168 = call i32 @INIT_LIST_HEAD(i32* %167)
  %169 = load %struct.file*, %struct.file** %8, align 8
  %170 = icmp ne %struct.file* %169, null
  br i1 %170, label %171, label %228

171:                                              ; preds = %144
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @VM_GROWSDOWN, align 4
  %176 = load i32, i32* @VM_GROWSUP, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %353

181:                                              ; preds = %171
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @VM_DENYWRITE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load %struct.file*, %struct.file** %8, align 8
  %188 = call i32 @deny_write_access(%struct.file* %187)
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %353

192:                                              ; preds = %186
  store i32 1, i32* %17, align 4
  br label %193

193:                                              ; preds = %192, %181
  %194 = load %struct.file*, %struct.file** %8, align 8
  %195 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %196 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %195, i32 0, i32 4
  store %struct.file* %194, %struct.file** %196, align 8
  %197 = load %struct.file*, %struct.file** %8, align 8
  %198 = call i32 @get_file(%struct.file* %197)
  %199 = load %struct.file*, %struct.file** %8, align 8
  %200 = getelementptr inbounds %struct.file, %struct.file* %199, i32 0, i32 0
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %202, align 8
  %204 = load %struct.file*, %struct.file** %8, align 8
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %206 = call i32 %203(%struct.file* %204, %struct.vm_area_struct* %205)
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %193
  br label %331

210:                                              ; preds = %193
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* @VM_EXECUTABLE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %217 = call i32 @added_exe_file_vma(%struct.mm_struct* %216)
  br label %218

218:                                              ; preds = %215, %210
  %219 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %220 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %9, align 8
  %222 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %223 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %13, align 8
  %225 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %226 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %12, align 4
  br label %241

228:                                              ; preds = %144
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @VM_SHARED, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %235 = call i32 @shmem_zero_setup(%struct.vm_area_struct* %234)
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %18, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %353

239:                                              ; preds = %233
  br label %240

240:                                              ; preds = %239, %228
  br label %241

241:                                              ; preds = %240, %218
  %242 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %243 = call i64 @vma_wants_writenotify(%struct.vm_area_struct* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %241
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* @VM_SHARED, align 4
  %248 = xor i32 %247, -1
  %249 = and i32 %246, %248
  %250 = call i8* @vm_get_page_prot(i32 %249)
  %251 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %252 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %251, i32 0, i32 5
  store i8* %250, i8** %252, align 8
  br label %253

253:                                              ; preds = %245, %241
  %254 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %255 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %256 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %257 = load %struct.rb_node**, %struct.rb_node*** %19, align 8
  %258 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  %259 = call i32 @vma_link(%struct.mm_struct* %254, %struct.vm_area_struct* %255, %struct.vm_area_struct* %256, %struct.rb_node** %257, %struct.rb_node* %258)
  %260 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %261 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %260, i32 0, i32 4
  %262 = load %struct.file*, %struct.file** %261, align 8
  store %struct.file* %262, %struct.file** %8, align 8
  %263 = load i32, i32* %17, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %253
  %266 = load %struct.inode*, %struct.inode** %22, align 8
  %267 = getelementptr inbounds %struct.inode, %struct.inode* %266, i32 0, i32 0
  %268 = call i32 @atomic_inc(i32* %267)
  br label %269

269:                                              ; preds = %265, %253
  br label %270

270:                                              ; preds = %269, %133
  %271 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %272 = call i32 @perf_event_mmap(%struct.vm_area_struct* %271)
  %273 = load i64, i64* %10, align 8
  %274 = load i64, i64* @PAGE_SHIFT, align 8
  %275 = lshr i64 %273, %274
  %276 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %277 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = add i64 %278, %275
  store i64 %279, i64* %277, align 8
  %280 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.file*, %struct.file** %8, align 8
  %283 = load i64, i64* %10, align 8
  %284 = load i64, i64* @PAGE_SHIFT, align 8
  %285 = lshr i64 %283, %284
  %286 = call i32 @vm_stat_account(%struct.mm_struct* %280, i32 %281, %struct.file* %282, i64 %285)
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* @VM_LOCKED, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %312

291:                                              ; preds = %270
  %292 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %293 = load i64, i64* %9, align 8
  %294 = load i64, i64* %9, align 8
  %295 = load i64, i64* %10, align 8
  %296 = add i64 %294, %295
  %297 = call i64 @mlock_vma_pages_range(%struct.vm_area_struct* %292, i64 %293, i64 %296)
  store i64 %297, i64* %23, align 8
  %298 = load i64, i64* %23, align 8
  %299 = icmp slt i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %291
  %301 = load i64, i64* %23, align 8
  store i64 %301, i64* %7, align 8
  br label %366

302:                                              ; preds = %291
  %303 = load i64, i64* %10, align 8
  %304 = load i64, i64* @PAGE_SHIFT, align 8
  %305 = lshr i64 %303, %304
  %306 = load i64, i64* %23, align 8
  %307 = sub i64 %305, %306
  %308 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %309 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = add i64 %310, %307
  store i64 %311, i64* %309, align 8
  br label %329

312:                                              ; preds = %270
  %313 = load i64, i64* %11, align 8
  %314 = load i64, i64* @MAP_POPULATE, align 8
  %315 = and i64 %313, %314
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %328

317:                                              ; preds = %312
  %318 = load i64, i64* %11, align 8
  %319 = load i64, i64* @MAP_NONBLOCK, align 8
  %320 = and i64 %318, %319
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %328, label %322

322:                                              ; preds = %317
  %323 = load i64, i64* %9, align 8
  %324 = load i64, i64* %9, align 8
  %325 = load i64, i64* %10, align 8
  %326 = add i64 %324, %325
  %327 = call i32 @make_pages_present(i64 %323, i64 %326)
  br label %328

328:                                              ; preds = %322, %317, %312
  br label %329

329:                                              ; preds = %328, %302
  %330 = load i64, i64* %9, align 8
  store i64 %330, i64* %7, align 8
  br label %366

331:                                              ; preds = %209
  %332 = load i32, i32* %17, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %331
  %335 = load %struct.inode*, %struct.inode** %22, align 8
  %336 = getelementptr inbounds %struct.inode, %struct.inode* %335, i32 0, i32 0
  %337 = call i32 @atomic_inc(i32* %336)
  br label %338

338:                                              ; preds = %334, %331
  %339 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %340 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %339, i32 0, i32 4
  store %struct.file* null, %struct.file** %340, align 8
  %341 = load %struct.file*, %struct.file** %8, align 8
  %342 = call i32 @fput(%struct.file* %341)
  %343 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %344 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %345 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %346 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %347 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %350 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = call i32 @unmap_region(%struct.mm_struct* %343, %struct.vm_area_struct* %344, %struct.vm_area_struct* %345, i64 %348, i64 %351)
  store i64 0, i64* %21, align 8
  br label %353

353:                                              ; preds = %338, %238, %191, %180
  %354 = load i32, i32* @vm_area_cachep, align 4
  %355 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %356 = call i32 @kmem_cache_free(i32 %354, %struct.vm_area_struct* %355)
  br label %357

357:                                              ; preds = %353, %140
  %358 = load i64, i64* %21, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load i64, i64* %21, align 8
  %362 = call i32 @vm_unacct_memory(i64 %361)
  br label %363

363:                                              ; preds = %360, %357
  %364 = load i32, i32* %18, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %7, align 8
  br label %366

366:                                              ; preds = %363, %329, %300, %113, %73, %62
  %367 = load i64, i64* %7, align 8
  ret i64 %367
}

declare dso_local %struct.vm_area_struct* @find_vma_prepare(%struct.mm_struct*, i64, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @may_expand_vm(%struct.mm_struct*, i64) #1

declare dso_local i64 @is_file_hugepages(%struct.file*) #1

declare dso_local i64 @accountable_mapping(%struct.file*, i32) #1

declare dso_local i64 @security_vm_enough_memory(i64) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32, i32*, %struct.file*, i64, i32*) #1

declare dso_local %struct.vm_area_struct* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i8* @vm_get_page_prot(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @deny_write_access(%struct.file*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @added_exe_file_vma(%struct.mm_struct*) #1

declare dso_local i32 @shmem_zero_setup(%struct.vm_area_struct*) #1

declare dso_local i64 @vma_wants_writenotify(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i32, %struct.file*, i64) #1

declare dso_local i64 @mlock_vma_pages_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @make_pages_present(i64, i64) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @unmap_region(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
