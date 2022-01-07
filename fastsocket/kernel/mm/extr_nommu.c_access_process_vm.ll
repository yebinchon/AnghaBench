; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_access_process_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_access_process_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32 }
%struct.mm_struct = type { i32 }

@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @access_process_vm(%struct.task_struct* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %14, %16
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %103

21:                                               ; preds = %5
  %22 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %23 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %22)
  store %struct.mm_struct* %23, %struct.mm_struct** %13, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %25 = icmp ne %struct.mm_struct* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %103

27:                                               ; preds = %21
  %28 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %29 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %28, i32 0, i32 0
  %30 = call i32 @down_read(i32* %29)
  %31 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %31, i64 %32)
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** %12, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %35 = icmp ne %struct.vm_area_struct* %34, null
  br i1 %35, label %36, label %95

36:                                               ; preds = %27
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %45, %36
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VM_MAYWRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load i64, i64* %8, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @copy_to_user(i8* %64, i8* %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  br label %94

72:                                               ; preds = %55, %52
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %72
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @VM_MAYREAD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %8, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @copy_from_user(i8* %83, i8* %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %10, align 4
  br label %93

92:                                               ; preds = %75, %72
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %82
  br label %94

94:                                               ; preds = %93, %62
  br label %96

95:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %95, %94
  %97 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %98 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %97, i32 0, i32 0
  %99 = call i32 @up_read(i32* %98)
  %100 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %101 = call i32 @mmput(%struct.mm_struct* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %96, %26, %20
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

declare dso_local i64 @copy_from_user(i8*, i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
