; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_do_swap_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_do_swap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.mem_cgroup = type { i32 }

@VM_FAULT_HWPOISON = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@DELAYACCT_PF_SWAPIN = common dso_local global i32 0, align 4
@GFP_HIGHUSER_MOVABLE = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@PGMAJFAULT = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@anon_rss = common dso_local global i32 0, align 4
@swap_usage = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32, i32)* @do_swap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_swap_page(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.TYPE_9__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.mem_cgroup*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_9__, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %9, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.page* null, %struct.page** %17, align 8
  store %struct.page* null, %struct.page** %18, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %26 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @pte_unmap_same(%struct.mm_struct* %26, i32* %27, i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  br label %308

33:                                               ; preds = %7
  %34 = load i32, i32* %15, align 4
  %35 = call i64 @pte_to_swp_entry(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = bitcast %struct.TYPE_9__* %19 to i8*
  %38 = bitcast %struct.TYPE_9__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @non_swap_entry(i64 %40)
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @is_migration_entry(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @migration_entry_wait(%struct.mm_struct* %50, i32* %51, i64 %52)
  br label %68

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @is_hwpoison_entry(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @VM_FAULT_HWPOISON, align 4
  store i32 %60, i32* %24, align 4
  br label %67

61:                                               ; preds = %54
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @print_bad_pte(%struct.vm_area_struct* %62, i64 %63, i32 %64, i32* null)
  %66 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %66, i32* %24, align 4
  br label %67

67:                                               ; preds = %61, %59
  br label %68

68:                                               ; preds = %67, %49
  br label %308

69:                                               ; preds = %33
  %70 = load i32, i32* @DELAYACCT_PF_SWAPIN, align 4
  %71 = call i32 @delayacct_set_flag(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call %struct.page* @lookup_swap_cache(i64 %73)
  store %struct.page* %74, %struct.page** %17, align 8
  %75 = load %struct.page*, %struct.page** %17, align 8
  %76 = icmp ne %struct.page* %75, null
  br i1 %76, label %108, label %77

77:                                               ; preds = %69
  %78 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %79 = call i32 @grab_swap_token(%struct.mm_struct* %78)
  %80 = load i32, i32* @GFP_HIGHUSER_MOVABLE, align 4
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call %struct.page* @swapin_readahead(i64 %84, i32 %80, %struct.vm_area_struct* %81, i64 %82)
  store %struct.page* %85, %struct.page** %17, align 8
  %86 = load %struct.page*, %struct.page** %17, align 8
  %87 = icmp ne %struct.page* %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %77
  %89 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32* @pte_offset_map_lock(%struct.mm_struct* %89, i32* %90, i64 %91, i32** %16)
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @pte_same(i32 %94, i32 %95)
  %97 = call i64 @likely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %100, i32* %24, align 4
  br label %101

101:                                              ; preds = %99, %88
  %102 = load i32, i32* @DELAYACCT_PF_SWAPIN, align 4
  %103 = call i32 @delayacct_clear_flag(i32 %102)
  br label %304

104:                                              ; preds = %77
  %105 = load i32, i32* @VM_FAULT_MAJOR, align 4
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* @PGMAJFAULT, align 4
  %107 = call i32 @count_vm_event(i32 %106)
  br label %117

108:                                              ; preds = %69
  %109 = load %struct.page*, %struct.page** %17, align 8
  %110 = call i64 @PageHWPoison(%struct.page* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* @VM_FAULT_HWPOISON, align 4
  store i32 %113, i32* %24, align 4
  %114 = load i32, i32* @DELAYACCT_PF_SWAPIN, align 4
  %115 = call i32 @delayacct_clear_flag(i32 %114)
  br label %322

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %104
  %118 = load %struct.page*, %struct.page** %17, align 8
  %119 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @lock_page_or_retry(%struct.page* %118, %struct.mm_struct* %119, i32 %120)
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* @DELAYACCT_PF_SWAPIN, align 4
  %123 = call i32 @delayacct_clear_flag(i32 %122)
  %124 = load i32, i32* %21, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* @VM_FAULT_RETRY, align 4
  %128 = load i32, i32* %24, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %24, align 4
  br label %322

130:                                              ; preds = %117
  %131 = load %struct.page*, %struct.page** %17, align 8
  %132 = call i32 @PageSwapCache(%struct.page* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.page*, %struct.page** %17, align 8
  %136 = call i64 @page_private(%struct.page* %135)
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %136, %138
  br label %140

140:                                              ; preds = %134, %130
  %141 = phi i1 [ true, %130 ], [ %139, %134 ]
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %319

146:                                              ; preds = %140
  %147 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %147, %struct.page** %18, align 8
  %148 = load %struct.page*, %struct.page** %17, align 8
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %150 = load i64, i64* %11, align 8
  %151 = call %struct.page* @ksm_might_need_to_copy(%struct.page* %148, %struct.vm_area_struct* %149, i64 %150)
  store %struct.page* %151, %struct.page** %17, align 8
  %152 = load %struct.page*, %struct.page** %17, align 8
  %153 = icmp ne %struct.page* %152, null
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %159, i32* %24, align 4
  %160 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %160, %struct.page** %17, align 8
  store %struct.page* null, %struct.page** %18, align 8
  br label %319

161:                                              ; preds = %146
  %162 = load %struct.page*, %struct.page** %17, align 8
  %163 = load %struct.page*, %struct.page** %18, align 8
  %164 = icmp eq %struct.page* %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store %struct.page* null, %struct.page** %18, align 8
  br label %166

166:                                              ; preds = %165, %161
  %167 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %168 = load %struct.page*, %struct.page** %17, align 8
  %169 = load i32, i32* @GFP_KERNEL, align 4
  %170 = call i64 @mem_cgroup_try_charge_swapin(%struct.mm_struct* %167, %struct.page* %168, i32 %169, %struct.mem_cgroup** %22)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %173, i32* %24, align 4
  br label %319

174:                                              ; preds = %166
  %175 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i32* @pte_offset_map_lock(%struct.mm_struct* %175, i32* %176, i64 %177, i32** %16)
  store i32* %178, i32** %12, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @pte_same(i32 %180, i32 %181)
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = call i64 @unlikely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %174
  br label %313

189:                                              ; preds = %174
  %190 = load %struct.page*, %struct.page** %17, align 8
  %191 = call i32 @PageUptodate(%struct.page* %190)
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %198, i32* %24, align 4
  br label %313

199:                                              ; preds = %189
  %200 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %201 = load i32, i32* @anon_rss, align 4
  %202 = call i32 @inc_mm_counter(%struct.mm_struct* %200, i32 %201)
  %203 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %204 = load i32, i32* @swap_usage, align 4
  %205 = call i32 @dec_mm_counter(%struct.mm_struct* %203, i32 %204)
  %206 = load %struct.page*, %struct.page** %17, align 8
  %207 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %208 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @mk_pte(%struct.page* %206, i32 %209)
  store i32 %210, i32* %20, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %199
  %216 = load %struct.page*, %struct.page** %17, align 8
  %217 = call i64 @reuse_swap_page(%struct.page* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %215
  %220 = load i32, i32* %20, align 4
  %221 = call i32 @pte_mkdirty(i32 %220)
  %222 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %223 = call i32 @maybe_mkwrite(i32 %221, %struct.vm_area_struct* %222)
  store i32 %223, i32* %20, align 4
  %224 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %14, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %14, align 4
  store i32 1, i32* %23, align 4
  br label %228

228:                                              ; preds = %219, %215, %199
  %229 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %230 = load %struct.page*, %struct.page** %17, align 8
  %231 = call i32 @flush_icache_page(%struct.vm_area_struct* %229, %struct.page* %230)
  %232 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %233 = load i64, i64* %11, align 8
  %234 = load i32*, i32** %12, align 8
  %235 = load i32, i32* %20, align 4
  %236 = call i32 @set_pte_at(%struct.mm_struct* %232, i64 %233, i32* %234, i32 %235)
  %237 = load %struct.page*, %struct.page** %17, align 8
  %238 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %239 = load i64, i64* %11, align 8
  %240 = load i32, i32* %23, align 4
  %241 = call i32 @do_page_add_anon_rmap(%struct.page* %237, %struct.vm_area_struct* %238, i64 %239, i32 %240)
  %242 = load %struct.page*, %struct.page** %17, align 8
  %243 = load %struct.mem_cgroup*, %struct.mem_cgroup** %22, align 8
  %244 = call i32 @mem_cgroup_commit_charge_swapin(%struct.page* %242, %struct.mem_cgroup* %243)
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @swap_free(i64 %246)
  %248 = call i64 (...) @vm_swap_full()
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %228
  %251 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %252 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @VM_LOCKED, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %250
  %258 = load %struct.page*, %struct.page** %17, align 8
  %259 = call i64 @PageMlocked(%struct.page* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257, %250, %228
  %262 = load %struct.page*, %struct.page** %17, align 8
  %263 = call i32 @try_to_free_swap(%struct.page* %262)
  br label %264

264:                                              ; preds = %261, %257
  %265 = load %struct.page*, %struct.page** %17, align 8
  %266 = call i32 @unlock_page(%struct.page* %265)
  %267 = load %struct.page*, %struct.page** %18, align 8
  %268 = icmp ne %struct.page* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = load %struct.page*, %struct.page** %18, align 8
  %271 = call i32 @unlock_page(%struct.page* %270)
  %272 = load %struct.page*, %struct.page** %18, align 8
  %273 = call i32 @page_cache_release(%struct.page* %272)
  br label %274

274:                                              ; preds = %269, %264
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %299

279:                                              ; preds = %274
  %280 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %281 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %282 = load i64, i64* %11, align 8
  %283 = load i32*, i32** %12, align 8
  %284 = load i32*, i32** %13, align 8
  %285 = load i32*, i32** %16, align 8
  %286 = load i32, i32* %20, align 4
  %287 = call i32 @do_wp_page(%struct.mm_struct* %280, %struct.vm_area_struct* %281, i64 %282, i32* %283, i32* %284, i32* %285, i32 %286)
  %288 = load i32, i32* %24, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %24, align 4
  %290 = load i32, i32* %24, align 4
  %291 = load i32, i32* @VM_FAULT_ERROR, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %279
  %295 = load i32, i32* @VM_FAULT_ERROR, align 4
  %296 = load i32, i32* %24, align 4
  %297 = and i32 %296, %295
  store i32 %297, i32* %24, align 4
  br label %298

298:                                              ; preds = %294, %279
  br label %308

299:                                              ; preds = %274
  %300 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %301 = load i64, i64* %11, align 8
  %302 = load i32, i32* %20, align 4
  %303 = call i32 @update_mmu_cache(%struct.vm_area_struct* %300, i64 %301, i32 %302)
  br label %304

304:                                              ; preds = %299, %101
  %305 = load i32*, i32** %12, align 8
  %306 = load i32*, i32** %16, align 8
  %307 = call i32 @pte_unmap_unlock(i32* %305, i32* %306)
  br label %308

308:                                              ; preds = %304, %298, %68, %32
  %309 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %310 = load i64, i64* %11, align 8
  %311 = call i32 @trace_mm_anon_pgin(%struct.mm_struct* %309, i64 %310)
  %312 = load i32, i32* %24, align 4
  store i32 %312, i32* %8, align 4
  br label %334

313:                                              ; preds = %197, %188
  %314 = load %struct.mem_cgroup*, %struct.mem_cgroup** %22, align 8
  %315 = call i32 @mem_cgroup_cancel_charge_swapin(%struct.mem_cgroup* %314)
  %316 = load i32*, i32** %12, align 8
  %317 = load i32*, i32** %16, align 8
  %318 = call i32 @pte_unmap_unlock(i32* %316, i32* %317)
  br label %319

319:                                              ; preds = %313, %172, %158, %145
  %320 = load %struct.page*, %struct.page** %17, align 8
  %321 = call i32 @unlock_page(%struct.page* %320)
  br label %322

322:                                              ; preds = %319, %126, %112
  %323 = load %struct.page*, %struct.page** %17, align 8
  %324 = call i32 @page_cache_release(%struct.page* %323)
  %325 = load %struct.page*, %struct.page** %18, align 8
  %326 = icmp ne %struct.page* %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = load %struct.page*, %struct.page** %18, align 8
  %329 = call i32 @unlock_page(%struct.page* %328)
  %330 = load %struct.page*, %struct.page** %18, align 8
  %331 = call i32 @page_cache_release(%struct.page* %330)
  br label %332

332:                                              ; preds = %327, %322
  %333 = load i32, i32* %24, align 4
  store i32 %333, i32* %8, align 4
  br label %334

334:                                              ; preds = %332, %308
  %335 = load i32, i32* %8, align 4
  ret i32 %335
}

declare dso_local i32 @pte_unmap_same(%struct.mm_struct*, i32*, i32*, i32) #1

declare dso_local i64 @pte_to_swp_entry(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @non_swap_entry(i64) #1

declare dso_local i64 @is_migration_entry(i64) #1

declare dso_local i32 @migration_entry_wait(%struct.mm_struct*, i32*, i64) #1

declare dso_local i64 @is_hwpoison_entry(i64) #1

declare dso_local i32 @print_bad_pte(%struct.vm_area_struct*, i64, i32, i32*) #1

declare dso_local i32 @delayacct_set_flag(i32) #1

declare dso_local %struct.page* @lookup_swap_cache(i64) #1

declare dso_local i32 @grab_swap_token(%struct.mm_struct*) #1

declare dso_local %struct.page* @swapin_readahead(i64, i32, %struct.vm_area_struct*, i64) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @delayacct_clear_flag(i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @lock_page_or_retry(%struct.page*, %struct.mm_struct*, i32) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local %struct.page* @ksm_might_need_to_copy(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @mem_cgroup_try_charge_swapin(%struct.mm_struct*, %struct.page*, i32, %struct.mem_cgroup**) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @inc_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @dec_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i64 @reuse_swap_page(%struct.page*) #1

declare dso_local i32 @maybe_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @flush_icache_page(%struct.vm_area_struct*, %struct.page*) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @do_page_add_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge_swapin(%struct.page*, %struct.mem_cgroup*) #1

declare dso_local i32 @swap_free(i64) #1

declare dso_local i64 @vm_swap_full(...) #1

declare dso_local i64 @PageMlocked(%struct.page*) #1

declare dso_local i32 @try_to_free_swap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @do_wp_page(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32*, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @trace_mm_anon_pgin(%struct.mm_struct*, i64) #1

declare dso_local i32 @mem_cgroup_cancel_charge_swapin(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
