; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_arch_get_unmapped_exec_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_arch_get_unmapped_exec_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i64, i64 (%struct.file.0*, i64, i64, i64, i64)*, i32 }
%struct.file.0 = type opaque
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_exec_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %13, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %14, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @TASK_SIZE, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i64, i64* @ENOMEM, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %6, align 8
  br label %178

28:                                               ; preds = %5
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @MAP_FIXED, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  store i64 %34, i64* %6, align 8
  br label %178

35:                                               ; preds = %28
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %35
  %39 = call i64 (...) @should_randomize()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %43 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  br label %52

45:                                               ; preds = %38
  %46 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %47 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %13, align 8
  %51 = call i64 @randomize_range(i32 %49, i32 16777216, i64 %50)
  br label %52

52:                                               ; preds = %45, %41
  %53 = phi i64 [ %44, %41 ], [ %51, %45 ]
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %52, %35
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @PAGE_ALIGN(i64 %58)
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %12, align 8
  %61 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %61, i64 %62)
  store %struct.vm_area_struct* %63, %struct.vm_area_struct** %15, align 8
  %64 = load i64, i64* @TASK_SIZE, align 8
  %65 = load i64, i64* %13, align 8
  %66 = sub i64 %64, %65
  %67 = load i64, i64* %12, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %57
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %71 = icmp ne %struct.vm_area_struct* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %73, %74
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ule i64 %75, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72, %69
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %6, align 8
  br label %178

82:                                               ; preds = %72, %57
  br label %83

83:                                               ; preds = %82, %54
  %84 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %85 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  %87 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %87, i64 %88)
  store %struct.vm_area_struct* %89, %struct.vm_area_struct** %15, align 8
  br label %90

90:                                               ; preds = %161, %83
  %91 = load i64, i64* @TASK_SIZE, align 8
  %92 = load i64, i64* %13, align 8
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %12, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i64, i64* @ENOMEM, align 8
  %98 = sub i64 0, %97
  store i64 %98, i64* %6, align 8
  br label %178

99:                                               ; preds = %90
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %101 = icmp ne %struct.vm_area_struct* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %103, %104
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %107 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ule i64 %105, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %102, %99
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %13, align 8
  %113 = add i64 %111, %112
  %114 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %115 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %165

119:                                              ; preds = %110
  %120 = load i64, i64* %12, align 8
  %121 = icmp uge i64 %120, 16777216
  br i1 %121, label %122, label %155

122:                                              ; preds = %119
  %123 = call i64 (...) @should_randomize()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %122
  %126 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %127 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @max(i32 %128, i64 134217728)
  %130 = call i32 @PAGE_ALIGN(i64 %129)
  %131 = load i64, i64* %13, align 8
  %132 = call i64 @randomize_range(i32 16777216, i32 %130, i64 %131)
  store i64 %132, i64* %16, align 8
  %133 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %134 = load i64, i64* %16, align 8
  %135 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %133, i64 %134)
  store %struct.vm_area_struct* %135, %struct.vm_area_struct** %15, align 8
  %136 = load i64, i64* @TASK_SIZE, align 8
  %137 = load i64, i64* %13, align 8
  %138 = sub i64 %136, %137
  %139 = load i64, i64* %16, align 8
  %140 = icmp uge i64 %138, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %125
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %143 = icmp ne %struct.vm_area_struct* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %145, %146
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %149 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ule i64 %147, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %144, %141
  %153 = load i64, i64* %16, align 8
  store i64 %153, i64* %6, align 8
  br label %178

154:                                              ; preds = %144, %125
  br label %155

155:                                              ; preds = %154, %122, %119
  %156 = load i64, i64* %12, align 8
  store i64 %156, i64* %6, align 8
  br label %178

157:                                              ; preds = %102
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %12, align 8
  br label %161

161:                                              ; preds = %157
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %163 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %162, i32 0, i32 2
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %163, align 8
  store %struct.vm_area_struct* %164, %struct.vm_area_struct** %15, align 8
  br label %90

165:                                              ; preds = %118
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load %struct.mm_struct*, %struct.mm_struct** %167, align 8
  %169 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %168, i32 0, i32 2
  %170 = load i64 (%struct.file.0*, i64, i64, i64, i64)*, i64 (%struct.file.0*, i64, i64, i64, i64)** %169, align 8
  %171 = load %struct.file*, %struct.file** %7, align 8
  %172 = bitcast %struct.file* %171 to %struct.file.0*
  %173 = load i64, i64* %8, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i64 %170(%struct.file.0* %172, i64 %173, i64 %174, i64 %175, i64 %176)
  store i64 %177, i64* %6, align 8
  br label %178

178:                                              ; preds = %165, %155, %152, %96, %80, %33, %25
  %179 = load i64, i64* %6, align 8
  ret i64 %179
}

declare dso_local i64 @should_randomize(...) #1

declare dso_local i64 @randomize_range(i32, i32, i64) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
