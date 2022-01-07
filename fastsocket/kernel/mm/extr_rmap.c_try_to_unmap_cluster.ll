; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_try_to_unmap_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_try_to_unmap_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i64 }

@SWAP_AGAIN = common dso_local global i32 0, align 4
@CLUSTER_MASK = common dso_local global i64 0, align 8
@CLUSTER_SIZE = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i32 0, align 4
@SWAP_MLOCK = common dso_local global i32 0, align 4
@file_rss = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, %struct.vm_area_struct*, %struct.page*)* @try_to_unmap_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_unmap_cluster(i64 %0, i32* %1, %struct.vm_area_struct* %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 3
  %24 = load %struct.mm_struct*, %struct.mm_struct** %23, align 8
  store %struct.mm_struct* %24, %struct.mm_struct** %10, align 8
  %25 = load i32, i32* @SWAP_AGAIN, align 4
  store i32 %25, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* @CLUSTER_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %18, align 8
  %33 = load i64, i64* %18, align 8
  %34 = load i64, i64* @CLUSTER_SIZE, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* %18, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %4
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %18, align 8
  br label %45

45:                                               ; preds = %41, %4
  %46 = load i64, i64* %19, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %19, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %57 = load i64, i64* %18, align 8
  %58 = call i32* @pgd_offset(%struct.mm_struct* %56, i64 %57)
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pgd_present(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %5, align 4
  br label %224

65:                                               ; preds = %55
  %66 = load i32*, i32** %11, align 8
  %67 = load i64, i64* %18, align 8
  %68 = call i32* @pud_offset(i32* %66, i64 %67)
  store i32* %68, i32** %12, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pud_present(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %20, align 4
  store i32 %74, i32* %5, align 4
  br label %224

75:                                               ; preds = %65
  %76 = load i32*, i32** %12, align 8
  %77 = load i64, i64* %18, align 8
  %78 = call i32* @pmd_offset(i32* %76, i64 %77)
  store i32* %78, i32** %13, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pmd_present(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %20, align 4
  store i32 %84, i32* %5, align 4
  br label %224

85:                                               ; preds = %75
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 3
  %88 = load %struct.mm_struct*, %struct.mm_struct** %87, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 0
  %90 = call i64 @down_read_trylock(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @VM_LOCKED, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %92
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %102 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %101, i32 0, i32 3
  %103 = load %struct.mm_struct*, %struct.mm_struct** %102, align 8
  %104 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %103, i32 0, i32 0
  %105 = call i32 @up_read(i32* %104)
  br label %106

106:                                              ; preds = %100, %92
  br label %107

107:                                              ; preds = %106, %85
  %108 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = load i64, i64* %18, align 8
  %111 = call i32* @pte_offset_map_lock(%struct.mm_struct* %108, i32* %109, i64 %110, i32** %16)
  store i32* %111, i32** %14, align 8
  %112 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %113 = call i32 @update_hiwater_rss(%struct.mm_struct* %112)
  br label %114

114:                                              ; preds = %203, %107
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %19, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %209

118:                                              ; preds = %114
  %119 = load i32*, i32** %14, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pte_present(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  br label %203

124:                                              ; preds = %118
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %126 = load i64, i64* %18, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call %struct.page* @vm_normal_page(%struct.vm_area_struct* %125, i64 %126, i32 %128)
  store %struct.page* %129, %struct.page** %17, align 8
  %130 = load %struct.page*, %struct.page** %17, align 8
  %131 = icmp ne %struct.page* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load %struct.page*, %struct.page** %17, align 8
  %134 = call i64 @PageAnon(%struct.page* %133)
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %132, %124
  %137 = phi i1 [ true, %124 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @BUG_ON(i32 %138)
  %140 = load i32, i32* %21, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %136
  %143 = load %struct.page*, %struct.page** %17, align 8
  %144 = call i32 @mlock_vma_page(%struct.page* %143)
  %145 = load %struct.page*, %struct.page** %17, align 8
  %146 = load %struct.page*, %struct.page** %9, align 8
  %147 = icmp eq %struct.page* %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @SWAP_MLOCK, align 4
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %148, %142
  br label %203

151:                                              ; preds = %136
  %152 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = call i64 @ptep_clear_flush_young_notify(%struct.vm_area_struct* %152, i64 %153, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %203

158:                                              ; preds = %151
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %160 = load i64, i64* %18, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @pte_pfn(i32 %162)
  %164 = call i32 @flush_cache_page(%struct.vm_area_struct* %159, i64 %160, i32 %163)
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %166 = load i64, i64* %18, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 @ptep_clear_flush_notify(%struct.vm_area_struct* %165, i64 %166, i32* %167)
  store i32 %168, i32* %15, align 4
  %169 = load %struct.page*, %struct.page** %17, align 8
  %170 = getelementptr inbounds %struct.page, %struct.page* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %173 = load i64, i64* %18, align 8
  %174 = call i64 @linear_page_index(%struct.vm_area_struct* %172, i64 %173)
  %175 = icmp ne i64 %171, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %158
  %177 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %178 = load i64, i64* %18, align 8
  %179 = load i32*, i32** %14, align 8
  %180 = load %struct.page*, %struct.page** %17, align 8
  %181 = getelementptr inbounds %struct.page, %struct.page* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @pgoff_to_pte(i64 %182)
  %184 = call i32 @set_pte_at(%struct.mm_struct* %177, i64 %178, i32* %179, i32 %183)
  br label %185

185:                                              ; preds = %176, %158
  %186 = load i32, i32* %15, align 4
  %187 = call i64 @pte_dirty(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load %struct.page*, %struct.page** %17, align 8
  %191 = call i32 @set_page_dirty(%struct.page* %190)
  br label %192

192:                                              ; preds = %189, %185
  %193 = load %struct.page*, %struct.page** %17, align 8
  %194 = call i32 @page_remove_rmap(%struct.page* %193)
  %195 = load %struct.page*, %struct.page** %17, align 8
  %196 = call i32 @page_cache_release(%struct.page* %195)
  %197 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %198 = load i32, i32* @file_rss, align 4
  %199 = call i32 @dec_mm_counter(%struct.mm_struct* %197, i32 %198)
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %200, align 4
  %202 = add i32 %201, -1
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %192, %157, %150, %123
  %204 = load i32*, i32** %14, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %14, align 8
  %206 = load i64, i64* @PAGE_SIZE, align 8
  %207 = load i64, i64* %18, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %18, align 8
  br label %114

209:                                              ; preds = %114
  %210 = load i32*, i32** %14, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 -1
  %212 = load i32*, i32** %16, align 8
  %213 = call i32 @pte_unmap_unlock(i32* %211, i32* %212)
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %209
  %217 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %218 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %217, i32 0, i32 3
  %219 = load %struct.mm_struct*, %struct.mm_struct** %218, align 8
  %220 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %219, i32 0, i32 0
  %221 = call i32 @up_read(i32* %220)
  br label %222

222:                                              ; preds = %216, %209
  %223 = load i32, i32* %20, align 4
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %222, %83, %73, %63
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @update_hiwater_rss(%struct.mm_struct*) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local %struct.page* @vm_normal_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @mlock_vma_page(%struct.page*) #1

declare dso_local i64 @ptep_clear_flush_young_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @ptep_clear_flush_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i64 @linear_page_index(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @set_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @pgoff_to_pte(i64) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @page_remove_rmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @dec_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
