; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_move_page_tables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mremap.c_move_page_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PMD_SIZE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@LATENCY_LIMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @move_page_tables(%struct.vm_area_struct* %0, i64 %1, %struct.vm_area_struct* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %16, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %13, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @flush_cache_range(%struct.vm_area_struct* %21, i64 %22, i64 %23)
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @mmu_notifier_invalidate_range_start(i32 %27, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %153, %5
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %160

35:                                               ; preds = %31
  %36 = call i32 (...) @cond_resched()
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @PMD_SIZE, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* @PMD_MASK, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %42, 1
  %44 = load i64, i64* %13, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i64, i64* %13, align 8
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %11, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32* @get_old_pmd(i32 %54, i64 %55)
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  br label %153

60:                                               ; preds = %48
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32* @alloc_new_pmd(i32 %63, %struct.vm_area_struct* %64, i64 %65)
  store i32* %66, i32** %15, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %160

70:                                               ; preds = %60
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @pmd_trans_huge(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %70
  store i32 0, i32* %17, align 4
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @move_huge_pmd(%struct.vm_area_struct* %80, i64 %81, i64 %82, i64 %83, i32* %84, i32* %85)
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %79, %75
  %88 = load i32, i32* %17, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %16, align 4
  br label %153

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @split_huge_page_pmd(i32 %97, i32* %98)
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %100
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @pmd_trans_huge(i32 %103)
  %105 = call i32 @VM_BUG_ON(i64 %104)
  br label %106

106:                                              ; preds = %101, %70
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @pmd_none(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %113 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i64 @__pte_alloc(i32 %114, %struct.vm_area_struct* %115, i32* %116, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %160

121:                                              ; preds = %111, %106
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* @PMD_SIZE, align 8
  %124 = add i64 %122, %123
  %125 = load i64, i64* @PMD_MASK, align 8
  %126 = and i64 %124, %125
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %9, align 8
  %130 = sub i64 %128, %129
  %131 = icmp ugt i64 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %9, align 8
  %135 = sub i64 %133, %134
  store i64 %135, i64* %11, align 8
  br label %136

136:                                              ; preds = %132, %121
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* @LATENCY_LIMIT, align 8
  %139 = icmp ugt i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i64, i64* @LATENCY_LIMIT, align 8
  store i64 %141, i64* %11, align 8
  br label %142

142:                                              ; preds = %140, %136
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %11, align 8
  %148 = add i64 %146, %147
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %150 = load i32*, i32** %15, align 8
  %151 = load i64, i64* %9, align 8
  %152 = call i32 @move_ptes(%struct.vm_area_struct* %143, i32* %144, i64 %145, i64 %148, %struct.vm_area_struct* %149, i32* %150, i64 %151)
  store i32 1, i32* %16, align 4
  br label %153

153:                                              ; preds = %142, %90, %59
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %7, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %7, align 8
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* %9, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %9, align 8
  br label %31

160:                                              ; preds = %120, %69, %31
  %161 = load i32, i32* %16, align 4
  %162 = call i64 @likely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* %10, align 8
  %168 = sub i64 %166, %167
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @flush_tlb_range(%struct.vm_area_struct* %165, i64 %168, i64 %169)
  br label %171

171:                                              ; preds = %164, %160
  %172 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %173 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* %13, align 8
  %176 = load i64, i64* %10, align 8
  %177 = sub i64 %175, %176
  %178 = load i64, i64* %13, align 8
  %179 = call i32 @mmu_notifier_invalidate_range_end(i32 %174, i64 %177, i64 %178)
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %7, align 8
  %182 = add i64 %180, %181
  %183 = load i64, i64* %13, align 8
  %184 = sub i64 %182, %183
  ret i64 %184
}

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(i32, i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32* @get_old_pmd(i32, i64) #1

declare dso_local i32* @alloc_new_pmd(i32, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i32 @move_huge_pmd(%struct.vm_area_struct*, i64, i64, i64, i32*, i32*) #1

declare dso_local i32 @split_huge_page_pmd(i32, i32*) #1

declare dso_local i32 @VM_BUG_ON(i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @__pte_alloc(i32, %struct.vm_area_struct*, i32*, i64) #1

declare dso_local i32 @move_ptes(%struct.vm_area_struct*, i32*, i64, i64, %struct.vm_area_struct*, i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
