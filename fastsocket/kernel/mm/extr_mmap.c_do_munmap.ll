; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_do_munmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_do_munmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64, i64, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, i64, i32, %struct.vm_area_struct* }

@PAGE_MASK = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sysctl_max_map_count = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_munmap(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @PAGE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @TASK_SIZE, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @TASK_SIZE, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %20, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %177

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @PAGE_ALIGN(i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %177

40:                                               ; preds = %33
  %41 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* %41, i64 %42, %struct.vm_area_struct** %10)
  store %struct.vm_area_struct* %43, %struct.vm_area_struct** %9, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %45 = icmp ne %struct.vm_area_struct* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %177

47:                                               ; preds = %40
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %8, align 8
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %177

57:                                               ; preds = %47
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %71 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @sysctl_max_map_count, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %177

78:                                               ; preds = %69, %63
  %79 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @__split_vma(%struct.mm_struct* %79, %struct.vm_area_struct* %80, i64 %81, i32 0)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %4, align 4
  br label %177

87:                                               ; preds = %78
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %88, %struct.vm_area_struct** %10, align 8
  br label %89

89:                                               ; preds = %87, %57
  %90 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %90, i64 %91)
  store %struct.vm_area_struct* %92, %struct.vm_area_struct** %11, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %94 = icmp ne %struct.vm_area_struct* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %98 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @__split_vma(%struct.mm_struct* %102, %struct.vm_area_struct* %103, i64 %104, i32 1)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %4, align 4
  br label %177

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %95, %89
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %113 = icmp ne %struct.vm_area_struct* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %116 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %115, i32 0, i32 3
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %116, align 8
  br label %122

118:                                              ; preds = %111
  %119 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %120 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %119, i32 0, i32 2
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %120, align 8
  br label %122

122:                                              ; preds = %118, %114
  %123 = phi %struct.vm_area_struct* [ %117, %114 ], [ %121, %118 ]
  store %struct.vm_area_struct* %123, %struct.vm_area_struct** %9, align 8
  %124 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %125 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %162

128:                                              ; preds = %122
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  store %struct.vm_area_struct* %129, %struct.vm_area_struct** %14, align 8
  br label %130

130:                                              ; preds = %157, %128
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %132 = icmp ne %struct.vm_area_struct* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %135 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = icmp ult i64 %136, %137
  br label %139

139:                                              ; preds = %133, %130
  %140 = phi i1 [ false, %130 ], [ %138, %133 ]
  br i1 %140, label %141, label %161

141:                                              ; preds = %139
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @VM_LOCKED, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %141
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %150 = call i64 @vma_pages(%struct.vm_area_struct* %149)
  %151 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %152 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %153, %150
  store i64 %154, i64* %152, align 8
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %156 = call i32 @munlock_vma_pages_all(%struct.vm_area_struct* %155)
  br label %157

157:                                              ; preds = %148, %141
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 3
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %159, align 8
  store %struct.vm_area_struct* %160, %struct.vm_area_struct** %14, align 8
  br label %130

161:                                              ; preds = %139
  br label %162

162:                                              ; preds = %161, %122
  %163 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @detach_vmas_to_be_unmapped(%struct.mm_struct* %163, %struct.vm_area_struct* %164, %struct.vm_area_struct* %165, i64 %166)
  %168 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %169 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @unmap_region(%struct.mm_struct* %168, %struct.vm_area_struct* %169, %struct.vm_area_struct* %170, i64 %171, i64 %172)
  %174 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %176 = call i32 @remove_vma_list(%struct.mm_struct* %174, %struct.vm_area_struct* %175)
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %162, %108, %85, %75, %56, %46, %37, %30
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct*, i64, %struct.vm_area_struct**) #1

declare dso_local i32 @__split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @munlock_vma_pages_all(%struct.vm_area_struct*) #1

declare dso_local i32 @detach_vmas_to_be_unmapped(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @unmap_region(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @remove_vma_list(%struct.mm_struct*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
