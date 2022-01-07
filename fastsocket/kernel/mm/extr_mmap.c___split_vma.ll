; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c___split_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c___split_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)* }
%struct.mempolicy = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vm_area_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_EXECUTABLE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32)* @__split_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__split_vma(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mempolicy*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %17 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = call i32 @hstate_vma(%struct.vm_area_struct* %21)
  %23 = call i64 @huge_page_mask(i32 %22)
  %24 = xor i64 %23, -1
  %25 = and i64 %20, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %231

30:                                               ; preds = %19, %4
  %31 = load i32, i32* @vm_area_cachep, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.vm_area_struct* @kmem_cache_alloc(i32 %31, i32 %32)
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** %11, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %35 = icmp ne %struct.vm_area_struct* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  br label %229

37:                                               ; preds = %30
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %40 = bitcast %struct.vm_area_struct* %38 to i8*
  %41 = bitcast %struct.vm_area_struct* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 56, i1 false)
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 6
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %66

51:                                               ; preds = %37
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  %60 = load i64, i64* @PAGE_SHIFT, align 8
  %61 = lshr i64 %59, %60
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %51, %47
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %68 = call i32 @vma_policy(%struct.vm_area_struct* %67)
  %69 = call %struct.mempolicy* @mpol_dup(i32 %68)
  store %struct.mempolicy* %69, %struct.mempolicy** %10, align 8
  %70 = load %struct.mempolicy*, %struct.mempolicy** %10, align 8
  %71 = call i64 @IS_ERR(%struct.mempolicy* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.mempolicy*, %struct.mempolicy** %10, align 8
  %75 = call i32 @PTR_ERR(%struct.mempolicy* %74)
  store i32 %75, i32* %12, align 4
  br label %225

76:                                               ; preds = %66
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %78 = load %struct.mempolicy*, %struct.mempolicy** %10, align 8
  %79 = call i32 @vma_set_policy(%struct.vm_area_struct* %77, %struct.mempolicy* %78)
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %82 = call i64 @anon_vma_clone(%struct.vm_area_struct* %80, %struct.vm_area_struct* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %222

85:                                               ; preds = %76
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @get_file(i64 %93)
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @VM_EXECUTABLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %103 = call i32 @added_exe_file_vma(%struct.mm_struct* %102)
  br label %104

104:                                              ; preds = %101, %90
  br label %105

105:                                              ; preds = %104, %85
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %107 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %106, i32 0, i32 5
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = icmp ne %struct.TYPE_2__* %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 5
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %114, align 8
  %116 = icmp ne i32 (%struct.vm_area_struct*)* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 5
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %121, align 8
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %124 = call i32 %122(%struct.vm_area_struct* %123)
  br label %125

125:                                              ; preds = %117, %110, %105
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %125
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %13, align 8
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %135 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %138 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %140, %143
  %145 = load i64, i64* @PAGE_SHIFT, align 8
  %146 = lshr i64 %144, %145
  %147 = add i64 %139, %146
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %149 = call i32 @vma_adjust(%struct.vm_area_struct* %132, i64 %133, i64 %136, i64 %147, %struct.vm_area_struct* %148)
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %128
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %154 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @VM_EXEC, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %161 = load i64, i64* %13, align 8
  %162 = call i32 @arch_remove_exec_range(%struct.mm_struct* %160, i64 %161)
  br label %163

163:                                              ; preds = %159, %152, %128
  br label %175

164:                                              ; preds = %125
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %167 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %171 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %174 = call i32 @vma_adjust(%struct.vm_area_struct* %165, i64 %168, i64 %169, i64 %172, %struct.vm_area_struct* %173)
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %164, %163
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  store i32 0, i32* %5, align 4
  br label %231

179:                                              ; preds = %175
  %180 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %181 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %180, i32 0, i32 5
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = icmp ne %struct.TYPE_2__* %182, null
  br i1 %183, label %184, label %199

184:                                              ; preds = %179
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %186 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %185, i32 0, i32 5
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %188, align 8
  %190 = icmp ne i32 (%struct.vm_area_struct*)* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %184
  %192 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %193 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %192, i32 0, i32 5
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %195, align 8
  %197 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %198 = call i32 %196(%struct.vm_area_struct* %197)
  br label %199

199:                                              ; preds = %191, %184, %179
  %200 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %201 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %199
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %206 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @VM_EXECUTABLE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %213 = call i32 @removed_exe_file_vma(%struct.mm_struct* %212)
  br label %214

214:                                              ; preds = %211, %204
  %215 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %216 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @fput(i64 %217)
  br label %219

219:                                              ; preds = %214, %199
  %220 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %221 = call i32 @unlink_anon_vmas(%struct.vm_area_struct* %220)
  br label %222

222:                                              ; preds = %219, %84
  %223 = load %struct.mempolicy*, %struct.mempolicy** %10, align 8
  %224 = call i32 @mpol_put(%struct.mempolicy* %223)
  br label %225

225:                                              ; preds = %222, %73
  %226 = load i32, i32* @vm_area_cachep, align 4
  %227 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %228 = call i32 @kmem_cache_free(i32 %226, %struct.vm_area_struct* %227)
  br label %229

229:                                              ; preds = %225, %36
  %230 = load i32, i32* %12, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %229, %178, %27
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i64 @huge_page_mask(i32) #1

declare dso_local i32 @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @kmem_cache_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.mempolicy* @mpol_dup(i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i64 @IS_ERR(%struct.mempolicy*) #1

declare dso_local i32 @PTR_ERR(%struct.mempolicy*) #1

declare dso_local i32 @vma_set_policy(%struct.vm_area_struct*, %struct.mempolicy*) #1

declare dso_local i64 @anon_vma_clone(%struct.vm_area_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @get_file(i64) #1

declare dso_local i32 @added_exe_file_vma(%struct.mm_struct*) #1

declare dso_local i32 @vma_adjust(%struct.vm_area_struct*, i64, i64, i64, %struct.vm_area_struct*) #1

declare dso_local i32 @arch_remove_exec_range(%struct.mm_struct*, i64) #1

declare dso_local i32 @removed_exe_file_vma(%struct.mm_struct*) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @unlink_anon_vmas(%struct.vm_area_struct*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
