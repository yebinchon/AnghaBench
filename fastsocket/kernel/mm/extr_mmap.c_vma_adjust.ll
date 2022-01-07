; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_vma_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_vma_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, i64, i64, %struct.vm_area_struct*, %struct.anon_vma*, %struct.file*, %struct.mm_struct* }
%struct.anon_vma = type { i32 }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32, %struct.prio_tree_root }
%struct.prio_tree_root = type { i32 }
%struct.mm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_NONLINEAR = common dso_local global i32 0, align 4
@VM_EXECUTABLE = common dso_local global i32 0, align 4
@vm_area_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vma_adjust(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, %struct.vm_area_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca %struct.address_space*, align 8
  %16 = alloca %struct.prio_tree_root*, align 8
  %17 = alloca %struct.anon_vma*, align 8
  %18 = alloca %struct.file*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.vm_area_struct* %4, %struct.vm_area_struct** %11, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %23, align 8
  store %struct.mm_struct* %24, %struct.mm_struct** %12, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 5
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %26, align 8
  store %struct.vm_area_struct* %27, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %14, align 8
  store %struct.address_space* null, %struct.address_space** %15, align 8
  store %struct.prio_tree_root* null, %struct.prio_tree_root** %16, align 8
  store %struct.anon_vma* null, %struct.anon_vma** %17, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 7
  %30 = load %struct.file*, %struct.file** %29, align 8
  store %struct.file* %30, %struct.file** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %32 = icmp ne %struct.vm_area_struct* %31, null
  br i1 %32, label %33, label %119

33:                                               ; preds = %5
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %35 = icmp ne %struct.vm_area_struct* %34, null
  br i1 %35, label %119, label %36

36:                                               ; preds = %33
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %21, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %361, %42
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 1, %49
  store i32 %50, i32* %20, align 4
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %54, %struct.vm_area_struct** %21, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %55, %struct.vm_area_struct** %14, align 8
  br label %91

56:                                               ; preds = %36
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  %68 = load i64, i64* @PAGE_SHIFT, align 8
  %69 = lshr i64 %67, %68
  store i64 %69, i64* %19, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %70, %struct.vm_area_struct** %21, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %71, %struct.vm_area_struct** %14, align 8
  br label %90

72:                                               ; preds = %56
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %81, %82
  %84 = load i64, i64* @PAGE_SHIFT, align 8
  %85 = lshr i64 %83, %84
  %86 = sub i64 0, %85
  store i64 %86, i64* %19, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %87, %struct.vm_area_struct** %21, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %88, %struct.vm_area_struct** %14, align 8
  br label %89

89:                                               ; preds = %78, %72
  br label %90

90:                                               ; preds = %89, %62
  br label %91

91:                                               ; preds = %90, %43
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %93 = icmp ne %struct.vm_area_struct* %92, null
  br i1 %93, label %94, label %118

94:                                               ; preds = %91
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 6
  %97 = load %struct.anon_vma*, %struct.anon_vma** %96, align 8
  %98 = icmp ne %struct.anon_vma* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 6
  %102 = load %struct.anon_vma*, %struct.anon_vma** %101, align 8
  %103 = icmp ne %struct.anon_vma* %102, null
  br i1 %103, label %118, label %104

104:                                              ; preds = %99
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %107 = call i64 @anon_vma_clone(%struct.vm_area_struct* %105, %struct.vm_area_struct* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %369

112:                                              ; preds = %104
  %113 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %114 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %113, i32 0, i32 6
  %115 = load %struct.anon_vma*, %struct.anon_vma** %114, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %117 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %116, i32 0, i32 6
  store %struct.anon_vma* %115, %struct.anon_vma** %117, align 8
  br label %118

118:                                              ; preds = %112, %99, %94, %91
  br label %119

119:                                              ; preds = %118, %33, %5
  %120 = load %struct.file*, %struct.file** %18, align 8
  %121 = icmp ne %struct.file* %120, null
  br i1 %121, label %122, label %164

122:                                              ; preds = %119
  %123 = load %struct.file*, %struct.file** %18, align 8
  %124 = getelementptr inbounds %struct.file, %struct.file* %123, i32 0, i32 0
  %125 = load %struct.address_space*, %struct.address_space** %124, align 8
  store %struct.address_space* %125, %struct.address_space** %15, align 8
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @VM_NONLINEAR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %122
  %133 = load %struct.address_space*, %struct.address_space** %15, align 8
  %134 = getelementptr inbounds %struct.address_space, %struct.address_space* %133, i32 0, i32 1
  store %struct.prio_tree_root* %134, %struct.prio_tree_root** %16, align 8
  br label %135

135:                                              ; preds = %132, %122
  %136 = load %struct.address_space*, %struct.address_space** %15, align 8
  %137 = getelementptr inbounds %struct.address_space, %struct.address_space* %136, i32 0, i32 0
  %138 = call i32 @spin_lock(i32* %137)
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %140 = icmp ne %struct.vm_area_struct* %139, null
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %146 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %144, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %151 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %141, %135
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %154 = icmp ne %struct.vm_area_struct* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %157 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %160 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  %161 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %162 = call i32 @__vma_link_file(%struct.vm_area_struct* %161)
  br label %163

163:                                              ; preds = %155, %152
  br label %164

164:                                              ; preds = %163, %119
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %19, align 8
  %169 = call i32 @vma_adjust_trans_huge(%struct.vm_area_struct* %165, i64 %166, i64 %167, i64 %168)
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %171 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %170, i32 0, i32 6
  %172 = load %struct.anon_vma*, %struct.anon_vma** %171, align 8
  %173 = icmp ne %struct.anon_vma* %172, null
  br i1 %173, label %174, label %207

174:                                              ; preds = %164
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %176 = icmp ne %struct.vm_area_struct* %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %174
  %178 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %179 = icmp ne %struct.vm_area_struct* %178, null
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* %8, align 8
  %182 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %183 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %180, %177, %174
  %187 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %188 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %187, i32 0, i32 6
  %189 = load %struct.anon_vma*, %struct.anon_vma** %188, align 8
  store %struct.anon_vma* %189, %struct.anon_vma** %17, align 8
  %190 = load i64, i64* %19, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %194 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %193, i32 0, i32 6
  %195 = load %struct.anon_vma*, %struct.anon_vma** %194, align 8
  %196 = icmp ne %struct.anon_vma* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %199 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %200 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %199, i32 0, i32 6
  %201 = load %struct.anon_vma*, %struct.anon_vma** %200, align 8
  %202 = icmp ne %struct.anon_vma* %198, %201
  br label %203

203:                                              ; preds = %197, %192, %186
  %204 = phi i1 [ false, %192 ], [ false, %186 ], [ %202, %197 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @VM_BUG_ON(i32 %205)
  br label %220

207:                                              ; preds = %180, %164
  %208 = load i64, i64* %19, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %212 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %211, i32 0, i32 6
  %213 = load %struct.anon_vma*, %struct.anon_vma** %212, align 8
  %214 = icmp ne %struct.anon_vma* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %217 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %216, i32 0, i32 6
  %218 = load %struct.anon_vma*, %struct.anon_vma** %217, align 8
  store %struct.anon_vma* %218, %struct.anon_vma** %17, align 8
  br label %219

219:                                              ; preds = %215, %210, %207
  br label %220

220:                                              ; preds = %219, %203
  %221 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %222 = icmp ne %struct.anon_vma* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %225 = call i32 @anon_vma_lock(%struct.anon_vma* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load %struct.prio_tree_root*, %struct.prio_tree_root** %16, align 8
  %228 = icmp ne %struct.prio_tree_root* %227, null
  br i1 %228, label %229, label %242

229:                                              ; preds = %226
  %230 = load %struct.address_space*, %struct.address_space** %15, align 8
  %231 = call i32 @flush_dcache_mmap_lock(%struct.address_space* %230)
  %232 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %233 = load %struct.prio_tree_root*, %struct.prio_tree_root** %16, align 8
  %234 = call i32 @vma_prio_tree_remove(%struct.vm_area_struct* %232, %struct.prio_tree_root* %233)
  %235 = load i64, i64* %19, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %229
  %238 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %239 = load %struct.prio_tree_root*, %struct.prio_tree_root** %16, align 8
  %240 = call i32 @vma_prio_tree_remove(%struct.vm_area_struct* %238, %struct.prio_tree_root* %239)
  br label %241

241:                                              ; preds = %237, %229
  br label %242

242:                                              ; preds = %241, %226
  %243 = load i64, i64* %8, align 8
  %244 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %245 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %244, i32 0, i32 1
  store i64 %243, i64* %245, align 8
  %246 = load i64, i64* %9, align 8
  %247 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %248 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %247, i32 0, i32 0
  store i64 %246, i64* %248, align 8
  %249 = load i64, i64* %10, align 8
  %250 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %251 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %250, i32 0, i32 4
  store i64 %249, i64* %251, align 8
  %252 = load i64, i64* %19, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %242
  %255 = load i64, i64* %19, align 8
  %256 = load i64, i64* @PAGE_SHIFT, align 8
  %257 = shl i64 %255, %256
  %258 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %259 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %260, %257
  store i64 %261, i64* %259, align 8
  %262 = load i64, i64* %19, align 8
  %263 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %264 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %265, %262
  store i64 %266, i64* %264, align 8
  br label %267

267:                                              ; preds = %254, %242
  %268 = load %struct.prio_tree_root*, %struct.prio_tree_root** %16, align 8
  %269 = icmp ne %struct.prio_tree_root* %268, null
  br i1 %269, label %270, label %283

270:                                              ; preds = %267
  %271 = load i64, i64* %19, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %275 = load %struct.prio_tree_root*, %struct.prio_tree_root** %16, align 8
  %276 = call i32 @vma_prio_tree_insert(%struct.vm_area_struct* %274, %struct.prio_tree_root* %275)
  br label %277

277:                                              ; preds = %273, %270
  %278 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %279 = load %struct.prio_tree_root*, %struct.prio_tree_root** %16, align 8
  %280 = call i32 @vma_prio_tree_insert(%struct.vm_area_struct* %278, %struct.prio_tree_root* %279)
  %281 = load %struct.address_space*, %struct.address_space** %15, align 8
  %282 = call i32 @flush_dcache_mmap_unlock(%struct.address_space* %281)
  br label %283

283:                                              ; preds = %277, %267
  %284 = load i32, i32* %20, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %283
  %287 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %288 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %289 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %290 = call i32 @__vma_unlink(%struct.mm_struct* %287, %struct.vm_area_struct* %288, %struct.vm_area_struct* %289)
  %291 = load %struct.file*, %struct.file** %18, align 8
  %292 = icmp ne %struct.file* %291, null
  br i1 %292, label %293, label %298

293:                                              ; preds = %286
  %294 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %295 = load %struct.file*, %struct.file** %18, align 8
  %296 = load %struct.address_space*, %struct.address_space** %15, align 8
  %297 = call i32 @__remove_shared_vm_struct(%struct.vm_area_struct* %294, %struct.file* %295, %struct.address_space* %296)
  br label %298

298:                                              ; preds = %293, %286
  br label %307

299:                                              ; preds = %283
  %300 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %301 = icmp ne %struct.vm_area_struct* %300, null
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %304 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %305 = call i32 @__insert_vm_struct(%struct.mm_struct* %303, %struct.vm_area_struct* %304)
  br label %306

306:                                              ; preds = %302, %299
  br label %307

307:                                              ; preds = %306, %298
  %308 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %309 = icmp ne %struct.anon_vma* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load %struct.anon_vma*, %struct.anon_vma** %17, align 8
  %312 = call i32 @anon_vma_unlock(%struct.anon_vma* %311)
  br label %313

313:                                              ; preds = %310, %307
  %314 = load %struct.address_space*, %struct.address_space** %15, align 8
  %315 = icmp ne %struct.address_space* %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load %struct.address_space*, %struct.address_space** %15, align 8
  %318 = getelementptr inbounds %struct.address_space, %struct.address_space* %317, i32 0, i32 0
  %319 = call i32 @spin_unlock(i32* %318)
  br label %320

320:                                              ; preds = %316, %313
  %321 = load i32, i32* %20, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %366

323:                                              ; preds = %320
  %324 = load %struct.file*, %struct.file** %18, align 8
  %325 = icmp ne %struct.file* %324, null
  br i1 %325, label %326, label %339

326:                                              ; preds = %323
  %327 = load %struct.file*, %struct.file** %18, align 8
  %328 = call i32 @fput(%struct.file* %327)
  %329 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %330 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @VM_EXECUTABLE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %326
  %336 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %337 = call i32 @removed_exe_file_vma(%struct.mm_struct* %336)
  br label %338

338:                                              ; preds = %335, %326
  br label %339

339:                                              ; preds = %338, %323
  %340 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %341 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %340, i32 0, i32 6
  %342 = load %struct.anon_vma*, %struct.anon_vma** %341, align 8
  %343 = icmp ne %struct.anon_vma* %342, null
  br i1 %343, label %344, label %348

344:                                              ; preds = %339
  %345 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %346 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %347 = call i32 @anon_vma_merge(%struct.vm_area_struct* %345, %struct.vm_area_struct* %346)
  br label %348

348:                                              ; preds = %344, %339
  %349 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %350 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %350, align 4
  %353 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %354 = call i32 @vma_policy(%struct.vm_area_struct* %353)
  %355 = call i32 @mpol_put(i32 %354)
  %356 = load i32, i32* @vm_area_cachep, align 4
  %357 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %358 = call i32 @kmem_cache_free(i32 %356, %struct.vm_area_struct* %357)
  %359 = load i32, i32* %20, align 4
  %360 = icmp eq i32 %359, 2
  br i1 %360, label %361, label %365

361:                                              ; preds = %348
  %362 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %363 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %362, i32 0, i32 5
  %364 = load %struct.vm_area_struct*, %struct.vm_area_struct** %363, align 8
  store %struct.vm_area_struct* %364, %struct.vm_area_struct** %13, align 8
  br label %43

365:                                              ; preds = %348
  br label %366

366:                                              ; preds = %365, %320
  %367 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %368 = call i32 @validate_mm(%struct.mm_struct* %367)
  store i32 0, i32* %6, align 4
  br label %369

369:                                              ; preds = %366, %109
  %370 = load i32, i32* %6, align 4
  ret i32 %370
}

declare dso_local i64 @anon_vma_clone(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__vma_link_file(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_adjust_trans_huge(%struct.vm_area_struct*, i64, i64, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @anon_vma_lock(%struct.anon_vma*) #1

declare dso_local i32 @flush_dcache_mmap_lock(%struct.address_space*) #1

declare dso_local i32 @vma_prio_tree_remove(%struct.vm_area_struct*, %struct.prio_tree_root*) #1

declare dso_local i32 @vma_prio_tree_insert(%struct.vm_area_struct*, %struct.prio_tree_root*) #1

declare dso_local i32 @flush_dcache_mmap_unlock(%struct.address_space*) #1

declare dso_local i32 @__vma_unlink(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @__remove_shared_vm_struct(%struct.vm_area_struct*, %struct.file*, %struct.address_space*) #1

declare dso_local i32 @__insert_vm_struct(%struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @anon_vma_unlock(%struct.anon_vma*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @removed_exe_file_vma(%struct.mm_struct*) #1

declare dso_local i32 @anon_vma_merge(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @mpol_put(i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @validate_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
