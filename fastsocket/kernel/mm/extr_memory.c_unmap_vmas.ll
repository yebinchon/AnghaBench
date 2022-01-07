; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_unmap_vmas.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_unmap_vmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, %struct.mm_struct*, i64, %struct.vm_area_struct* }
%struct.mm_struct = type { i32 }
%struct.zap_details = type { i32* }

@ZAP_BLOCK_SIZE = common dso_local global i64 0, align 8
@VM_ACCOUNT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @unmap_vmas(%struct.mmu_gather** %0, %struct.vm_area_struct* %1, i64 %2, i64 %3, i64* %4, %struct.zap_details* %5, i32 %6) #0 {
  %8 = alloca %struct.mmu_gather**, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.zap_details*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.mm_struct*, align 8
  %21 = alloca i64, align 8
  store %struct.mmu_gather** %0, %struct.mmu_gather*** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.zap_details* %5, %struct.zap_details** %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load i64, i64* @ZAP_BLOCK_SIZE, align 8
  store i64 %22, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %18, align 8
  %24 = load %struct.zap_details*, %struct.zap_details** %13, align 8
  %25 = icmp ne %struct.zap_details* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load %struct.zap_details*, %struct.zap_details** %13, align 8
  %28 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  br label %31

30:                                               ; preds = %7
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32* [ %29, %26 ], [ null, %30 ]
  store i32* %32, i32** %19, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 3
  %35 = load %struct.mm_struct*, %struct.mm_struct** %34, align 8
  store %struct.mm_struct* %35, %struct.mm_struct** %20, align 8
  %36 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @mmu_notifier_invalidate_range_start(%struct.mm_struct* %36, i64 %37, i64 %38)
  %40 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call %struct.mmu_gather* @tlb_gather_mmu(%struct.mm_struct* %40, i32 %41)
  %43 = load %struct.mmu_gather**, %struct.mmu_gather*** %8, align 8
  store %struct.mmu_gather* %42, %struct.mmu_gather** %43, align 8
  br label %44

44:                                               ; preds = %187, %31
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %46 = icmp ne %struct.vm_area_struct* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ult i64 %50, %51
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  br i1 %54, label %55, label %191

55:                                               ; preds = %53
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @max(i64 %58, i64 %59)
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %18, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp uge i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %187

67:                                               ; preds = %55
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @min(i64 %70, i64 %71)
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %21, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ule i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %187

79:                                               ; preds = %67
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VM_ACCOUNT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load i64, i64* %21, align 8
  %88 = load i64, i64* %18, align 8
  %89 = sub i64 %87, %88
  %90 = load i64, i64* @PAGE_SHIFT, align 8
  %91 = lshr i64 %89, %90
  %92 = load i64*, i64** %12, align 8
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %91
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %86, %79
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %97 = call i32 @is_pfn_mapping(%struct.vm_area_struct* %96)
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %102 = call i32 @untrack_pfn_vma(%struct.vm_area_struct* %101, i32 0, i32 0)
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %178, %103
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %21, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %186

108:                                              ; preds = %104
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* %18, align 8
  store i64 %112, i64* %16, align 8
  store i32 1, i32* %17, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %115 = call i32 @is_vm_hugetlb_page(%struct.vm_area_struct* %114)
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %125 = load i64, i64* %18, align 8
  %126 = load i64, i64* %21, align 8
  %127 = call i32 @unmap_hugepage_range(%struct.vm_area_struct* %124, i64 %125, i64 %126, i32* null)
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %18, align 8
  %130 = sub i64 %128, %129
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %132 = call i32 @hstate_vma(%struct.vm_area_struct* %131)
  %133 = call i64 @pages_per_huge_page(i32 %132)
  %134 = udiv i64 %130, %133
  %135 = load i64, i64* %15, align 8
  %136 = sub i64 %135, %134
  store i64 %136, i64* %15, align 8
  br label %137

137:                                              ; preds = %123, %118
  %138 = load i64, i64* %21, align 8
  store i64 %138, i64* %18, align 8
  br label %147

139:                                              ; preds = %113
  %140 = load %struct.mmu_gather**, %struct.mmu_gather*** %8, align 8
  %141 = load %struct.mmu_gather*, %struct.mmu_gather** %140, align 8
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %143 = load i64, i64* %18, align 8
  %144 = load i64, i64* %21, align 8
  %145 = load %struct.zap_details*, %struct.zap_details** %13, align 8
  %146 = call i64 @unmap_page_range(%struct.mmu_gather* %141, %struct.vm_area_struct* %142, i64 %143, i64 %144, i64* %15, %struct.zap_details* %145)
  store i64 %146, i64* %18, align 8
  br label %147

147:                                              ; preds = %139, %137
  %148 = load i64, i64* %15, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* %21, align 8
  %153 = icmp ne i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @BUG_ON(i32 %154)
  br label %186

156:                                              ; preds = %147
  %157 = load %struct.mmu_gather**, %struct.mmu_gather*** %8, align 8
  %158 = load %struct.mmu_gather*, %struct.mmu_gather** %157, align 8
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %18, align 8
  %161 = call i32 @tlb_finish_mmu(%struct.mmu_gather* %158, i64 %159, i64 %160)
  %162 = call i64 (...) @need_resched()
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %156
  %165 = load i32*, i32** %19, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i32*, i32** %19, align 8
  %169 = call i64 @spin_needbreak(i32* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %167, %156
  %172 = load i32*, i32** %19, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load %struct.mmu_gather**, %struct.mmu_gather*** %8, align 8
  store %struct.mmu_gather* null, %struct.mmu_gather** %175, align 8
  br label %192

176:                                              ; preds = %171
  %177 = call i32 (...) @cond_resched()
  br label %178

178:                                              ; preds = %176, %167, %164
  %179 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %180 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %179, i32 0, i32 3
  %181 = load %struct.mm_struct*, %struct.mm_struct** %180, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call %struct.mmu_gather* @tlb_gather_mmu(%struct.mm_struct* %181, i32 %182)
  %184 = load %struct.mmu_gather**, %struct.mmu_gather*** %8, align 8
  store %struct.mmu_gather* %183, %struct.mmu_gather** %184, align 8
  store i32 0, i32* %17, align 4
  %185 = load i64, i64* @ZAP_BLOCK_SIZE, align 8
  store i64 %185, i64* %15, align 8
  br label %104

186:                                              ; preds = %150, %104
  br label %187

187:                                              ; preds = %186, %78, %66
  %188 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %189 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %188, i32 0, i32 5
  %190 = load %struct.vm_area_struct*, %struct.vm_area_struct** %189, align 8
  store %struct.vm_area_struct* %190, %struct.vm_area_struct** %9, align 8
  br label %44

191:                                              ; preds = %53
  br label %192

192:                                              ; preds = %191, %174
  %193 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* %11, align 8
  %196 = call i32 @mmu_notifier_invalidate_range_end(%struct.mm_struct* %193, i64 %194, i64 %195)
  %197 = load i64, i64* %18, align 8
  ret i64 %197
}

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mm_struct*, i64, i64) #1

declare dso_local %struct.mmu_gather* @tlb_gather_mmu(%struct.mm_struct*, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_pfn_mapping(%struct.vm_area_struct*) #1

declare dso_local i32 @untrack_pfn_vma(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @unmap_hugepage_range(%struct.vm_area_struct*, i64, i64, i32*) #1

declare dso_local i64 @pages_per_huge_page(i32) #1

declare dso_local i32 @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @unmap_page_range(%struct.mmu_gather*, %struct.vm_area_struct*, i64, i64, i64*, %struct.zap_details*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tlb_finish_mmu(%struct.mmu_gather*, i64, i64) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @spin_needbreak(i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mm_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
