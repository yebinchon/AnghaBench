; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_mlock_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_mlock_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i32, i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@VM_LOCKED = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i32)* @mlock_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlock_fixup(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 6
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @VM_LOCKED, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %5
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VM_IO, align 4
  %32 = load i32, i32* @VM_PFNMAP, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %5
  br label %171

37:                                               ; preds = %27
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VM_DONTEXPAND, align 4
  %42 = load i32, i32* @VM_RESERVED, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %37
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %48 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.vm_area_struct* @get_gate_vma(i32 %54)
  %56 = icmp eq %struct.vm_area_struct* %51, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50, %46, %37
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @make_pages_present(i64 %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %57
  br label %171

65:                                               ; preds = %50
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  %74 = load i64, i64* @PAGE_SHIFT, align 8
  %75 = lshr i64 %73, %74
  %76 = add i64 %68, %75
  store i64 %76, i64* %12, align 8
  %77 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %78 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %91 = call i32 @vma_policy(%struct.vm_area_struct* %90)
  %92 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %77, %struct.vm_area_struct* %79, i64 %80, i64 %81, i32 %82, i32 %85, i32 %88, i64 %89, i32 %91)
  %93 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %92, %struct.vm_area_struct** %93, align 8
  %94 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %94, align 8
  %96 = icmp ne %struct.vm_area_struct* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %65
  %98 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %98, align 8
  store %struct.vm_area_struct* %99, %struct.vm_area_struct** %6, align 8
  br label %131

100:                                              ; preds = %65
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @split_vma(%struct.mm_struct* %107, %struct.vm_area_struct* %108, i64 %109, i32 1)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %171

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %100
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %118 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @split_vma(%struct.mm_struct* %122, %struct.vm_area_struct* %123, i64 %124, i32 0)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %171

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %115
  br label %131

131:                                              ; preds = %130, %97
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %8, align 8
  %134 = sub i64 %132, %133
  %135 = load i64, i64* @PAGE_SHIFT, align 8
  %136 = lshr i64 %134, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %131
  %141 = load i32, i32* %13, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %140, %131
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %146 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %143
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %154 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @__mlock_vma_pages_range(%struct.vm_area_struct* %155, i64 %156, i64 %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %151
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @__mlock_posix_error_return(i32 %162)
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %161, %151
  br label %170

165:                                              ; preds = %143
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %167 = load i64, i64* %8, align 8
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @munlock_vma_pages_range(%struct.vm_area_struct* %166, i64 %167, i64 %168)
  br label %170

170:                                              ; preds = %165, %164
  br label %171

171:                                              ; preds = %170, %128, %113, %64, %36
  %172 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %173 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %172, %struct.vm_area_struct** %173, align 8
  %174 = load i32, i32* %14, align 4
  ret i32 %174
}

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @get_gate_vma(i32) #1

declare dso_local i32 @make_pages_present(i64, i64) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32, i32, i32, i64, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @__mlock_vma_pages_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @__mlock_posix_error_return(i32) #1

declare dso_local i32 @munlock_vma_pages_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
