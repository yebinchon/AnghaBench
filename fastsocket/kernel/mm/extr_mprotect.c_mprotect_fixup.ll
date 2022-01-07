; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mprotect.c_mprotect_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mprotect.c_mprotect_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32, i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i64 0, align 8
@VM_ACCOUNT = common dso_local global i64 0, align 8
@VM_HUGETLB = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i64 0, align 8
@VM_NORESERVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mprotect_fixup(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.vm_area_struct**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 7
  %22 = load %struct.mm_struct*, %struct.mm_struct** %21, align 8
  store %struct.mm_struct* %22, %struct.mm_struct** %12, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %26, %27
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %19, align 4
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %5
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %39 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  store %struct.vm_area_struct* %38, %struct.vm_area_struct** %39, align 8
  store i32 0, i32* %6, align 4
  br label %224

40:                                               ; preds = %5
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @VM_WRITE, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @VM_ACCOUNT, align 8
  %48 = load i64, i64* @VM_WRITE, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* @VM_HUGETLB, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* @VM_SHARED, align 8
  %53 = or i64 %51, %52
  %54 = load i64, i64* @VM_NORESERVE, align 8
  %55 = or i64 %53, %54
  %56 = and i64 %46, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %45
  %59 = load i64, i64* %14, align 8
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i64 @security_vm_enough_memory(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %224

66:                                               ; preds = %58
  %67 = load i64, i64* @VM_ACCOUNT, align 8
  %68 = load i64, i64* %11, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %66, %45
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %75, %78
  %80 = load i64, i64* @PAGE_SHIFT, align 8
  %81 = lshr i64 %79, %80
  %82 = add i64 %74, %81
  store i64 %82, i64* %17, align 8
  %83 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %84 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %84, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %97 = call i32 @vma_policy(%struct.vm_area_struct* %96)
  %98 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %83, %struct.vm_area_struct* %85, i64 %86, i64 %87, i64 %88, i32 %91, i32 %94, i64 %95, i32 %97)
  %99 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  store %struct.vm_area_struct* %98, %struct.vm_area_struct** %99, align 8
  %100 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %100, align 8
  %102 = icmp ne %struct.vm_area_struct* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %71
  %104 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %104, align 8
  store %struct.vm_area_struct* %105, %struct.vm_area_struct** %7, align 8
  br label %139

106:                                              ; preds = %71
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %108 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  store %struct.vm_area_struct* %107, %struct.vm_area_struct** %108, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %111 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %106
  %115 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %116 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @split_vma(%struct.mm_struct* %115, %struct.vm_area_struct* %116, i64 %117, i32 1)
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %220

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %106
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %126 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @split_vma(%struct.mm_struct* %130, %struct.vm_area_struct* %131, i64 %132, i32 0)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %220

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %123
  br label %139

139:                                              ; preds = %138, %103
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %11, align 8
  %147 = call i32 @vm_get_page_prot(i64 %146)
  %148 = call i32 @pgprot_modify(i32 %145, i32 %147)
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %152 = call i64 @vma_wants_writenotify(%struct.vm_area_struct* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %139
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* @VM_SHARED, align 8
  %157 = xor i64 %156, -1
  %158 = and i64 %155, %157
  %159 = call i32 @vm_get_page_prot(i64 %158)
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %161 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  store i32 1, i32* %19, align 4
  br label %162

162:                                              ; preds = %154, %139
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* @VM_EXEC, align 8
  %165 = and i64 %163, %164
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i64, i64* %16, align 8
  %172 = call i32 @arch_remove_exec_range(i32 %170, i64 %171)
  br label %173

173:                                              ; preds = %167, %162
  %174 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load i64, i64* %10, align 8
  %177 = call i32 @mmu_notifier_invalidate_range_start(%struct.mm_struct* %174, i64 %175, i64 %176)
  %178 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %179 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %173
  %182 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %186 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @hugetlb_change_protection(%struct.vm_area_struct* %182, i64 %183, i64 %184, i32 %187)
  br label %198

189:                                              ; preds = %173
  %190 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %191 = load i64, i64* %9, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %194 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %19, align 4
  %197 = call i32 @change_protection(%struct.vm_area_struct* %190, i64 %191, i64 %192, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %181
  %199 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %200 = load i64, i64* %9, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @mmu_notifier_invalidate_range_end(%struct.mm_struct* %199, i64 %200, i64 %201)
  %203 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %204 = load i64, i64* %13, align 8
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %206 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load i64, i64* %14, align 8
  %209 = sub nsw i64 0, %208
  %210 = call i32 @vm_stat_account(%struct.mm_struct* %203, i64 %204, i32 %207, i64 %209)
  %211 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %212 = load i64, i64* %11, align 8
  %213 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %214 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load i64, i64* %14, align 8
  %217 = call i32 @vm_stat_account(%struct.mm_struct* %211, i64 %212, i32 %215, i64 %216)
  %218 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %219 = call i32 @perf_event_mmap(%struct.vm_area_struct* %218)
  store i32 0, i32* %6, align 4
  br label %224

220:                                              ; preds = %136, %121
  %221 = load i64, i64* %15, align 8
  %222 = call i32 @vm_unacct_memory(i64 %221)
  %223 = load i32, i32* %18, align 4
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %220, %198, %63, %37
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local i64 @security_vm_enough_memory(i64) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i64, i32, i32, i64, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pgprot_modify(i32, i32) #1

declare dso_local i32 @vm_get_page_prot(i64) #1

declare dso_local i64 @vma_wants_writenotify(%struct.vm_area_struct*) #1

declare dso_local i32 @arch_remove_exec_range(i32, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @hugetlb_change_protection(%struct.vm_area_struct*, i64, i64, i32) #1

declare dso_local i32 @change_protection(%struct.vm_area_struct*, i64, i64, i32, i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i64, i32, i64) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
