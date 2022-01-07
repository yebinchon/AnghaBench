; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_vma_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_vma_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32, %struct.vm_area_struct* }
%struct.anon_vma = type { i32 }
%struct.file = type { i32 }
%struct.mempolicy = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_SPECIAL = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3, i64 %4, %struct.anon_vma* %5, %struct.file* %6, i64 %7, %struct.mempolicy* %8) #0 {
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.anon_vma*, align 8
  %17 = alloca %struct.file*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.mempolicy*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.vm_area_struct*, align 8
  %22 = alloca %struct.vm_area_struct*, align 8
  %23 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %11, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.anon_vma* %5, %struct.anon_vma** %16, align 8
  store %struct.file* %6, %struct.file** %17, align 8
  store i64 %7, i64* %18, align 8
  store %struct.mempolicy* %8, %struct.mempolicy** %19, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = sub i64 %24, %25
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %20, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @VM_SPECIAL, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %9
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %10, align 8
  br label %224

34:                                               ; preds = %9
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %36 = icmp ne %struct.vm_area_struct* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 5
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %39, align 8
  store %struct.vm_area_struct* %40, %struct.vm_area_struct** %22, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %43 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %42, i32 0, i32 0
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %43, align 8
  store %struct.vm_area_struct* %44, %struct.vm_area_struct** %22, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  store %struct.vm_area_struct* %46, %struct.vm_area_struct** %21, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %48 = icmp ne %struct.vm_area_struct* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 5
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %57, align 8
  store %struct.vm_area_struct* %58, %struct.vm_area_struct** %22, align 8
  br label %59

59:                                               ; preds = %55, %49, %45
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %61 = icmp ne %struct.vm_area_struct* %60, null
  br i1 %61, label %62, label %159

62:                                               ; preds = %59
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %159

68:                                               ; preds = %62
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %70 = call %struct.mempolicy* @vma_policy(%struct.vm_area_struct* %69)
  %71 = load %struct.mempolicy*, %struct.mempolicy** %19, align 8
  %72 = call i64 @mpol_equal(%struct.mempolicy* %70, %struct.mempolicy* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %159

74:                                               ; preds = %68
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load %struct.anon_vma*, %struct.anon_vma** %16, align 8
  %78 = load %struct.file*, %struct.file** %17, align 8
  %79 = load i64, i64* %18, align 8
  %80 = call i64 @can_vma_merge_after(%struct.vm_area_struct* %75, i64 %76, %struct.anon_vma* %77, %struct.file* %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %159

82:                                               ; preds = %74
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %84 = icmp ne %struct.vm_area_struct* %83, null
  br i1 %84, label %85, label %128

85:                                               ; preds = %82
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %85
  %92 = load %struct.mempolicy*, %struct.mempolicy** %19, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %94 = call %struct.mempolicy* @vma_policy(%struct.vm_area_struct* %93)
  %95 = call i64 @mpol_equal(%struct.mempolicy* %92, %struct.mempolicy* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %91
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.anon_vma*, %struct.anon_vma** %16, align 8
  %101 = load %struct.file*, %struct.file** %17, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %20, align 8
  %104 = add i64 %102, %103
  %105 = call i64 @can_vma_merge_before(%struct.vm_area_struct* %98, i64 %99, %struct.anon_vma* %100, %struct.file* %101, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %97
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %109 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %112 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @is_mergeable_anon_vma(i32 %110, i32 %113, i32* null)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %107
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @vma_adjust(%struct.vm_area_struct* %117, i64 %120, i64 %123, i64 %126, i32* null)
  store i32 %127, i32* %23, align 4
  br label %138

128:                                              ; preds = %107, %97, %91, %85, %82
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %135 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @vma_adjust(%struct.vm_area_struct* %129, i64 %132, i64 %133, i64 %136, i32* null)
  store i32 %137, i32* %23, align 4
  br label %138

138:                                              ; preds = %128, %116
  %139 = load i32, i32* %23, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %10, align 8
  br label %224

142:                                              ; preds = %138
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @VM_EXEC, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %152 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @arch_add_exec_range(%struct.mm_struct* %150, i64 %153)
  br label %155

155:                                              ; preds = %149, %142
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %157 = call i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct* %156)
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  store %struct.vm_area_struct* %158, %struct.vm_area_struct** %10, align 8
  br label %224

159:                                              ; preds = %74, %68, %62, %59
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %161 = icmp ne %struct.vm_area_struct* %160, null
  br i1 %161, label %162, label %223

162:                                              ; preds = %159
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %165 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %163, %166
  br i1 %167, label %168, label %223

168:                                              ; preds = %162
  %169 = load %struct.mempolicy*, %struct.mempolicy** %19, align 8
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %171 = call %struct.mempolicy* @vma_policy(%struct.vm_area_struct* %170)
  %172 = call i64 @mpol_equal(%struct.mempolicy* %169, %struct.mempolicy* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %223

174:                                              ; preds = %168
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %176 = load i64, i64* %15, align 8
  %177 = load %struct.anon_vma*, %struct.anon_vma** %16, align 8
  %178 = load %struct.file*, %struct.file** %17, align 8
  %179 = load i64, i64* %18, align 8
  %180 = load i64, i64* %20, align 8
  %181 = add i64 %179, %180
  %182 = call i64 @can_vma_merge_before(%struct.vm_area_struct* %175, i64 %176, %struct.anon_vma* %177, %struct.file* %178, i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %223

184:                                              ; preds = %174
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %186 = icmp ne %struct.vm_area_struct* %185, null
  br i1 %186, label %187, label %203

187:                                              ; preds = %184
  %188 = load i64, i64* %13, align 8
  %189 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %190 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %187
  %194 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %195 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %196 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %13, align 8
  %199 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %200 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @vma_adjust(%struct.vm_area_struct* %194, i64 %197, i64 %198, i64 %201, i32* null)
  store i32 %202, i32* %23, align 4
  br label %215

203:                                              ; preds = %187, %184
  %204 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %207 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %210 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %20, align 8
  %213 = sub i64 %211, %212
  %214 = call i32 @vma_adjust(%struct.vm_area_struct* %204, i64 %205, i64 %208, i64 %213, i32* null)
  store i32 %214, i32* %23, align 4
  br label %215

215:                                              ; preds = %203, %193
  %216 = load i32, i32* %23, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %10, align 8
  br label %224

219:                                              ; preds = %215
  %220 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  %221 = call i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct* %220)
  %222 = load %struct.vm_area_struct*, %struct.vm_area_struct** %21, align 8
  store %struct.vm_area_struct* %222, %struct.vm_area_struct** %10, align 8
  br label %224

223:                                              ; preds = %174, %168, %162, %159
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %10, align 8
  br label %224

224:                                              ; preds = %223, %219, %218, %155, %141, %33
  %225 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  ret %struct.vm_area_struct* %225
}

declare dso_local i64 @mpol_equal(%struct.mempolicy*, %struct.mempolicy*) #1

declare dso_local %struct.mempolicy* @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i64 @can_vma_merge_after(%struct.vm_area_struct*, i64, %struct.anon_vma*, %struct.file*, i64) #1

declare dso_local i64 @can_vma_merge_before(%struct.vm_area_struct*, i64, %struct.anon_vma*, %struct.file*, i64) #1

declare dso_local i64 @is_mergeable_anon_vma(i32, i32, i32*) #1

declare dso_local i32 @vma_adjust(%struct.vm_area_struct*, i64, i64, i64, i32*) #1

declare dso_local i32 @arch_add_exec_range(%struct.mm_struct*, i64) #1

declare dso_local i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
