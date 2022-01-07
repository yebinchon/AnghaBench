; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c___get_user_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c___get_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, i64 }

@FOLL_GET = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i64 0, align 8
@VM_MAYWRITE = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i64 0, align 8
@VM_MAYREAD = common dso_local global i64 0, align 8
@FOLL_FORCE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_FAULT_HWPOISON = common dso_local global i32 0, align 4
@VM_FAULT_HWPOISON_LARGE = common dso_local global i32 0, align 4
@FOLL_HWPOISON = common dso_local global i32 0, align 4
@EHWPOISON = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@VM_FAULT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__get_user_pages(%struct.task_struct* %0, %struct.mm_struct* %1, i64 %2, i32 %3, i32 %4, %struct.page** %5, %struct.vm_area_struct** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca %struct.vm_area_struct**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.vm_area_struct*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.vm_area_struct*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.page*, align 8
  %26 = alloca %struct.page*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %9, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store %struct.vm_area_struct** %6, %struct.vm_area_struct*** %15, align 8
  %29 = load i32, i32* %12, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %451

32:                                               ; preds = %7
  %33 = load %struct.page**, %struct.page*** %14, align 8
  %34 = icmp ne %struct.page** %33, null
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @FOLL_GET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = icmp ne i32 %37, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @VM_BUG_ON(i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @FOLL_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load i64, i64* @VM_WRITE, align 8
  %54 = load i64, i64* @VM_MAYWRITE, align 8
  %55 = or i64 %53, %54
  br label %60

56:                                               ; preds = %32
  %57 = load i64, i64* @VM_READ, align 8
  %58 = load i64, i64* @VM_MAYREAD, align 8
  %59 = or i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i64 [ %55, %52 ], [ %59, %56 ]
  store i64 %61, i64* %17, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @FOLL_FORCE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* @VM_MAYREAD, align 8
  %68 = load i64, i64* @VM_MAYWRITE, align 8
  %69 = or i64 %67, %68
  br label %74

70:                                               ; preds = %60
  %71 = load i64, i64* @VM_READ, align 8
  %72 = load i64, i64* @VM_WRITE, align 8
  %73 = or i64 %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i64 [ %69, %66 ], [ %73, %70 ]
  %76 = load i64, i64* %17, align 8
  %77 = and i64 %76, %75
  store i64 %77, i64* %17, align 8
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %446, %74
  %79 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call %struct.vm_area_struct* @find_extend_vma(%struct.mm_struct* %79, i64 %80)
  store %struct.vm_area_struct* %81, %struct.vm_area_struct** %18, align 8
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %83 = icmp ne %struct.vm_area_struct* %82, null
  br i1 %83, label %209, label %84

84:                                               ; preds = %78
  %85 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i64 @in_gate_area(%struct.mm_struct* %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %209

89:                                               ; preds = %84
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @PAGE_MASK, align 8
  %92 = and i64 %90, %91
  store i64 %92, i64* %19, align 8
  %93 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %94 = call %struct.vm_area_struct* @get_gate_vma(%struct.mm_struct* %93)
  store %struct.vm_area_struct* %94, %struct.vm_area_struct** %20, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @FOLL_WRITE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %89
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EFAULT, align 4
  %105 = sub nsw i32 0, %104
  br label %106

106:                                              ; preds = %103, %102
  %107 = phi i32 [ %100, %102 ], [ %105, %103 ]
  store i32 %107, i32* %8, align 4
  br label %451

108:                                              ; preds = %89
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* @TASK_SIZE, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i64, i64* %19, align 8
  %114 = call i32* @pgd_offset_k(i64 %113)
  store i32* %114, i32** %21, align 8
  br label %119

115:                                              ; preds = %108
  %116 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %117 = load i64, i64* %19, align 8
  %118 = call i32* @pgd_offset_gate(%struct.mm_struct* %116, i64 %117)
  store i32* %118, i32** %21, align 8
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32*, i32** %21, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pgd_none(i32 %121)
  %123 = call i32 @BUG_ON(i32 %122)
  %124 = load i32*, i32** %21, align 8
  %125 = load i64, i64* %19, align 8
  %126 = call i32* @pud_offset(i32* %124, i64 %125)
  store i32* %126, i32** %22, align 8
  %127 = load i32*, i32** %22, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @pud_none(i32 %128)
  %130 = call i32 @BUG_ON(i32 %129)
  %131 = load i32*, i32** %22, align 8
  %132 = load i64, i64* %19, align 8
  %133 = call i32* @pmd_offset(i32* %131, i64 %132)
  store i32* %133, i32** %23, align 8
  %134 = load i32*, i32** %23, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @pmd_none(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %119
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %145

142:                                              ; preds = %138
  %143 = load i32, i32* @EFAULT, align 4
  %144 = sub nsw i32 0, %143
  br label %145

145:                                              ; preds = %142, %141
  %146 = phi i32 [ %139, %141 ], [ %144, %142 ]
  store i32 %146, i32* %8, align 4
  br label %451

147:                                              ; preds = %119
  %148 = load i32*, i32** %23, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @pmd_trans_huge(i32 %149)
  %151 = call i32 @VM_BUG_ON(i32 %150)
  %152 = load i32*, i32** %23, align 8
  %153 = load i64, i64* %19, align 8
  %154 = call i32* @pte_offset_map(i32* %152, i64 %153)
  store i32* %154, i32** %24, align 8
  %155 = load i32*, i32** %24, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @pte_none(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %147
  %160 = load i32*, i32** %24, align 8
  %161 = call i32 @pte_unmap(i32* %160)
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %168

165:                                              ; preds = %159
  %166 = load i32, i32* @EFAULT, align 4
  %167 = sub nsw i32 0, %166
  br label %168

168:                                              ; preds = %165, %164
  %169 = phi i32 [ %162, %164 ], [ %167, %165 ]
  store i32 %169, i32* %8, align 4
  br label %451

170:                                              ; preds = %147
  %171 = load %struct.page**, %struct.page*** %14, align 8
  %172 = icmp ne %struct.page** %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %170
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %20, align 8
  %175 = load i64, i64* %11, align 8
  %176 = load i32*, i32** %24, align 8
  %177 = load i32, i32* %176, align 4
  %178 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %174, i64 %175, i32 %177)
  store %struct.page* %178, %struct.page** %25, align 8
  %179 = load %struct.page*, %struct.page** %25, align 8
  %180 = load %struct.page**, %struct.page*** %14, align 8
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.page*, %struct.page** %180, i64 %182
  store %struct.page* %179, %struct.page** %183, align 8
  %184 = load %struct.page*, %struct.page** %25, align 8
  %185 = icmp ne %struct.page* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %173
  %187 = load %struct.page*, %struct.page** %25, align 8
  %188 = call i32 @get_page(%struct.page* %187)
  br label %189

189:                                              ; preds = %186, %173
  br label %190

190:                                              ; preds = %189, %170
  %191 = load i32*, i32** %24, align 8
  %192 = call i32 @pte_unmap(i32* %191)
  %193 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %194 = icmp ne %struct.vm_area_struct** %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.vm_area_struct*, %struct.vm_area_struct** %20, align 8
  %197 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.vm_area_struct*, %struct.vm_area_struct** %197, i64 %199
  store %struct.vm_area_struct* %196, %struct.vm_area_struct** %200, align 8
  br label %201

201:                                              ; preds = %195, %190
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  %204 = load i64, i64* @PAGE_SIZE, align 8
  %205 = load i64, i64* %11, align 8
  %206 = add i64 %205, %204
  store i64 %206, i64* %11, align 8
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %12, align 4
  br label %446

209:                                              ; preds = %84, %78
  %210 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %211 = icmp ne %struct.vm_area_struct* %210, null
  br i1 %211, label %212, label %229

212:                                              ; preds = %209
  %213 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %214 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @VM_IO, align 4
  %217 = load i32, i32* @VM_PFNMAP, align 4
  %218 = or i32 %216, %217
  %219 = and i32 %215, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %212
  %222 = load i64, i64* %17, align 8
  %223 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %224 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = and i64 %222, %226
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %221, %212, %209
  %230 = load i32, i32* %16, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  br label %236

233:                                              ; preds = %229
  %234 = load i32, i32* @EFAULT, align 4
  %235 = sub nsw i32 0, %234
  br label %236

236:                                              ; preds = %233, %232
  %237 = phi i32 [ %230, %232 ], [ %235, %233 ]
  store i32 %237, i32* %8, align 4
  br label %451

238:                                              ; preds = %221
  %239 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %240 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %244 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %245 = load %struct.page**, %struct.page*** %14, align 8
  %246 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @follow_hugetlb_page(%struct.mm_struct* %243, %struct.vm_area_struct* %244, %struct.page** %245, %struct.vm_area_struct** %246, i64* %11, i32* %12, i32 %247, i32 %248)
  store i32 %249, i32* %16, align 4
  br label %446

250:                                              ; preds = %238
  br label %251

251:                                              ; preds = %443, %250
  %252 = load i32, i32* %13, align 4
  store i32 %252, i32* %27, align 4
  %253 = load i32, i32* @current, align 4
  %254 = call i32 @fatal_signal_pending(i32 %253)
  %255 = call i64 @unlikely(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %251
  %258 = load i32, i32* %16, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = load i32, i32* %16, align 4
  br label %265

262:                                              ; preds = %257
  %263 = load i32, i32* @ERESTARTSYS, align 4
  %264 = sub nsw i32 0, %263
  br label %265

265:                                              ; preds = %262, %260
  %266 = phi i32 [ %261, %260 ], [ %264, %262 ]
  store i32 %266, i32* %8, align 4
  br label %451

267:                                              ; preds = %251
  %268 = call i32 (...) @cond_resched()
  br label %269

269:                                              ; preds = %386, %267
  %270 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %271 = load i64, i64* %11, align 8
  %272 = load i32, i32* %27, align 4
  %273 = call %struct.page* @follow_page(%struct.vm_area_struct* %270, i64 %271, i32 %272)
  store %struct.page* %273, %struct.page** %26, align 8
  %274 = icmp ne %struct.page* %273, null
  %275 = xor i1 %274, true
  br i1 %275, label %276, label %388

276:                                              ; preds = %269
  %277 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %278 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %279 = load i64, i64* %11, align 8
  %280 = load i32, i32* %27, align 4
  %281 = load i32, i32* @FOLL_WRITE, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %276
  %285 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  br label %287

286:                                              ; preds = %276
  br label %287

287:                                              ; preds = %286, %284
  %288 = phi i32 [ %285, %284 ], [ 0, %286 ]
  %289 = call i32 @handle_mm_fault(%struct.mm_struct* %277, %struct.vm_area_struct* %278, i64 %279, i32 %288)
  store i32 %289, i32* %28, align 4
  %290 = load i32, i32* %28, align 4
  %291 = load i32, i32* @VM_FAULT_ERROR, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %349

294:                                              ; preds = %287
  %295 = load i32, i32* %28, align 4
  %296 = load i32, i32* @VM_FAULT_OOM, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %294
  %300 = load i32, i32* %16, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = load i32, i32* %16, align 4
  br label %307

304:                                              ; preds = %299
  %305 = load i32, i32* @ENOMEM, align 4
  %306 = sub nsw i32 0, %305
  br label %307

307:                                              ; preds = %304, %302
  %308 = phi i32 [ %303, %302 ], [ %306, %304 ]
  store i32 %308, i32* %8, align 4
  br label %451

309:                                              ; preds = %294
  %310 = load i32, i32* %28, align 4
  %311 = load i32, i32* @VM_FAULT_HWPOISON, align 4
  %312 = load i32, i32* @VM_FAULT_HWPOISON_LARGE, align 4
  %313 = or i32 %311, %312
  %314 = and i32 %310, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %332

316:                                              ; preds = %309
  %317 = load i32, i32* %16, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = load i32, i32* %16, align 4
  store i32 %320, i32* %8, align 4
  br label %451

321:                                              ; preds = %316
  %322 = load i32, i32* %13, align 4
  %323 = load i32, i32* @FOLL_HWPOISON, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = load i32, i32* @EHWPOISON, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %8, align 4
  br label %451

329:                                              ; preds = %321
  %330 = load i32, i32* @EFAULT, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %8, align 4
  br label %451

332:                                              ; preds = %309
  %333 = load i32, i32* %28, align 4
  %334 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %332
  %338 = load i32, i32* %16, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %337
  %341 = load i32, i32* %16, align 4
  br label %345

342:                                              ; preds = %337
  %343 = load i32, i32* @EFAULT, align 4
  %344 = sub nsw i32 0, %343
  br label %345

345:                                              ; preds = %342, %340
  %346 = phi i32 [ %341, %340 ], [ %344, %342 ]
  store i32 %346, i32* %8, align 4
  br label %451

347:                                              ; preds = %332
  %348 = call i32 (...) @BUG()
  br label %349

349:                                              ; preds = %347, %287
  %350 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %351 = icmp ne %struct.task_struct* %350, null
  br i1 %351, label %352, label %368

352:                                              ; preds = %349
  %353 = load i32, i32* %28, align 4
  %354 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %359 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 4
  br label %367

362:                                              ; preds = %352
  %363 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %364 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %364, align 4
  br label %367

367:                                              ; preds = %362, %357
  br label %368

368:                                              ; preds = %367, %349
  %369 = load i32, i32* %28, align 4
  %370 = load i32, i32* @VM_FAULT_WRITE, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %386

373:                                              ; preds = %368
  %374 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %375 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = load i64, i64* @VM_WRITE, align 8
  %379 = and i64 %377, %378
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %373
  %382 = load i32, i32* @FOLL_WRITE, align 4
  %383 = xor i32 %382, -1
  %384 = load i32, i32* %27, align 4
  %385 = and i32 %384, %383
  store i32 %385, i32* %27, align 4
  br label %386

386:                                              ; preds = %381, %373, %368
  %387 = call i32 (...) @cond_resched()
  br label %269

388:                                              ; preds = %269
  %389 = load %struct.page*, %struct.page** %26, align 8
  %390 = call i64 @IS_ERR(%struct.page* %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %402

392:                                              ; preds = %388
  %393 = load i32, i32* %16, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %392
  %396 = load i32, i32* %16, align 4
  br label %400

397:                                              ; preds = %392
  %398 = load %struct.page*, %struct.page** %26, align 8
  %399 = call i32 @PTR_ERR(%struct.page* %398)
  br label %400

400:                                              ; preds = %397, %395
  %401 = phi i32 [ %396, %395 ], [ %399, %397 ]
  store i32 %401, i32* %8, align 4
  br label %451

402:                                              ; preds = %388
  %403 = load %struct.page**, %struct.page*** %14, align 8
  %404 = icmp ne %struct.page** %403, null
  br i1 %404, label %405, label %417

405:                                              ; preds = %402
  %406 = load %struct.page*, %struct.page** %26, align 8
  %407 = load %struct.page**, %struct.page*** %14, align 8
  %408 = load i32, i32* %16, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.page*, %struct.page** %407, i64 %409
  store %struct.page* %406, %struct.page** %410, align 8
  %411 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %412 = load %struct.page*, %struct.page** %26, align 8
  %413 = load i64, i64* %11, align 8
  %414 = call i32 @flush_anon_page(%struct.vm_area_struct* %411, %struct.page* %412, i64 %413)
  %415 = load %struct.page*, %struct.page** %26, align 8
  %416 = call i32 @flush_dcache_page(%struct.page* %415)
  br label %417

417:                                              ; preds = %405, %402
  %418 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %419 = icmp ne %struct.vm_area_struct** %418, null
  br i1 %419, label %420, label %426

420:                                              ; preds = %417
  %421 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %422 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %423 = load i32, i32* %16, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.vm_area_struct*, %struct.vm_area_struct** %422, i64 %424
  store %struct.vm_area_struct* %421, %struct.vm_area_struct** %425, align 8
  br label %426

426:                                              ; preds = %420, %417
  %427 = load i32, i32* %16, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %16, align 4
  %429 = load i64, i64* @PAGE_SIZE, align 8
  %430 = load i64, i64* %11, align 8
  %431 = add i64 %430, %429
  store i64 %431, i64* %11, align 8
  %432 = load i32, i32* %12, align 4
  %433 = add nsw i32 %432, -1
  store i32 %433, i32* %12, align 4
  br label %434

434:                                              ; preds = %426
  %435 = load i32, i32* %12, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %434
  %438 = load i64, i64* %11, align 8
  %439 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  %440 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = icmp ult i64 %438, %441
  br label %443

443:                                              ; preds = %437, %434
  %444 = phi i1 [ false, %434 ], [ %442, %437 ]
  br i1 %444, label %251, label %445

445:                                              ; preds = %443
  br label %446

446:                                              ; preds = %445, %242, %201
  %447 = load i32, i32* %12, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %78, label %449

449:                                              ; preds = %446
  %450 = load i32, i32* %16, align 4
  store i32 %450, i32* %8, align 4
  br label %451

451:                                              ; preds = %449, %400, %345, %329, %326, %319, %307, %265, %236, %168, %145, %106, %31
  %452 = load i32, i32* %8, align 4
  ret i32 %452
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local %struct.vm_area_struct* @find_extend_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @in_gate_area(%struct.mm_struct*, i64) #1

declare dso_local %struct.vm_area_struct* @get_gate_vma(%struct.mm_struct*) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32* @pgd_offset_gate(%struct.mm_struct*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_none(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @follow_hugetlb_page(%struct.mm_struct*, %struct.vm_area_struct*, %struct.page**, %struct.vm_area_struct**, i64*, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fatal_signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.page* @follow_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @handle_mm_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @flush_anon_page(%struct.vm_area_struct*, %struct.page*, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
