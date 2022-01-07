; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@sysctl_unmap_area_factor = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@mmap_min_addr = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %12, align 8
  %19 = load i32, i32* @sysctl_unmap_area_factor, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @TASK_SIZE, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i64, i64* @ENOMEM, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %6, align 8
  br label %164

26:                                               ; preds = %5
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @MAP_FIXED, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %6, align 8
  br label %164

33:                                               ; preds = %26
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @PAGE_ALIGN(i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %39, i64 %40)
  store %struct.vm_area_struct* %41, %struct.vm_area_struct** %13, align 8
  %42 = load i64, i64* @TASK_SIZE, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %8, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %36
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %49 = icmp ne %struct.vm_area_struct* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ule i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50, %47
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @mmap_min_addr, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %6, align 8
  br label %164

64:                                               ; preds = %58, %50, %36
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %68 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ugt i64 %66, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71, %65
  %75 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %76 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %8, align 8
  store i64 %77, i64* %14, align 8
  br label %82

78:                                               ; preds = %71
  %79 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %79, i64* %8, align 8
  store i64 %79, i64* %14, align 8
  %80 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %81 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %109, %82
  %84 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %84, i64 %85)
  store %struct.vm_area_struct* %86, %struct.vm_area_struct** %13, align 8
  br label %87

87:                                               ; preds = %160, %83
  %88 = load i64, i64* @TASK_SIZE, align 8
  %89 = load i64, i64* %9, align 8
  %90 = sub i64 %88, %89
  %91 = load i64, i64* %8, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %14, align 8
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @likely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %108 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %106, %97
  br label %83

110:                                              ; preds = %93
  %111 = load i64, i64* @ENOMEM, align 8
  %112 = sub i64 0, %111
  store i64 %112, i64* %6, align 8
  br label %164

113:                                              ; preds = %87
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %115 = icmp ne %struct.vm_area_struct* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %117, %118
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %121 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ule i64 %119, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %116, %113
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @mmap_min_addr, align 8
  %127 = icmp uge i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %129, %130
  %132 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %133 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load i64, i64* %8, align 8
  store i64 %134, i64* %6, align 8
  br label %164

135:                                              ; preds = %124, %116
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %156, label %138

138:                                              ; preds = %135
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %141 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %139, %142
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %145 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ult i64 %143, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %138
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %8, align 8
  %153 = sub i64 %151, %152
  %154 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %155 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %148, %138, %135
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %158 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %8, align 8
  br label %160

160:                                              ; preds = %156
  %161 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %162 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %161, i32 0, i32 2
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %162, align 8
  store %struct.vm_area_struct* %163, %struct.vm_area_struct** %13, align 8
  br label %87

164:                                              ; preds = %128, %110, %62, %31, %23
  %165 = load i64, i64* %6, align 8
  ret i64 %165
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
