; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_handle_pte_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_handle_pte_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_pte_fault(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %11, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call i32 @pte_present(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %78, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  %23 = call i64 @pte_none(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @do_linear_fault(%struct.mm_struct* %39, %struct.vm_area_struct* %40, i64 %41, i32* %42, i32* %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %147

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @do_anonymous_page(%struct.mm_struct* %49, %struct.vm_area_struct* %50, i64 %51, i32* %52, i32* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %147

56:                                               ; preds = %21
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @pte_file(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @do_nonlinear_fault(%struct.mm_struct* %61, %struct.vm_area_struct* %62, i64 %63, i32* %64, i32* %65, i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  br label %147

69:                                               ; preds = %56
  %70 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @do_swap_page(%struct.mm_struct* %70, %struct.vm_area_struct* %71, i64 %72, i32* %73, i32* %74, i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %147

78:                                               ; preds = %6
  %79 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i32* @pte_lockptr(%struct.mm_struct* %79, i32* %80)
  store i32* %81, i32** %15, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @pte_same(i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %143

94:                                               ; preds = %78
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @pte_write(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %99
  %104 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @do_wp_page(%struct.mm_struct* %104, %struct.vm_area_struct* %105, i64 %106, i32* %107, i32* %108, i32* %109, i32 %110)
  store i32 %111, i32* %7, align 4
  br label %147

112:                                              ; preds = %99
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @pte_mkdirty(i32 %113)
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %112, %94
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @pte_mkyoung(i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %124 = and i32 %122, %123
  %125 = call i64 @ptep_set_access_flags(%struct.vm_area_struct* %118, i64 %119, i32* %120, i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %115
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @update_mmu_cache(%struct.vm_area_struct* %128, i64 %129, i32 %130)
  br label %142

132:                                              ; preds = %115
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @flush_tlb_page(%struct.vm_area_struct* %138, i64 %139)
  br label %141

141:                                              ; preds = %137, %132
  br label %142

142:                                              ; preds = %141, %127
  br label %143

143:                                              ; preds = %142, %93
  %144 = load i32*, i32** %11, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = call i32 @pte_unmap_unlock(i32* %144, i32* %145)
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %143, %103, %69, %60, %48, %38
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @do_linear_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @do_anonymous_page(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32) #1

declare dso_local i64 @pte_file(i32) #1

declare dso_local i32 @do_nonlinear_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @do_swap_page(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32, i32) #1

declare dso_local i32* @pte_lockptr(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @do_wp_page(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32*, i32) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i64 @ptep_set_access_flags(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @flush_tlb_page(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
