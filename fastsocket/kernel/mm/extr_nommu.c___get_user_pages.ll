; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c___get_user_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c___get_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i64 0, align 8
@VM_MAYWRITE = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i64 0, align 8
@VM_MAYREAD = common dso_local global i64 0, align 8
@FOLL_FORCE = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__get_user_pages(%struct.task_struct* %0, %struct.mm_struct* %1, i64 %2, i32 %3, i32 %4, %struct.page** %5, %struct.vm_area_struct** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca %struct.vm_area_struct**, align 8
  %16 = alloca %struct.vm_area_struct*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %9, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store %struct.vm_area_struct** %6, %struct.vm_area_struct*** %15, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @FOLL_WRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i64, i64* @VM_WRITE, align 8
  %25 = load i64, i64* @VM_MAYWRITE, align 8
  %26 = or i64 %24, %25
  br label %31

27:                                               ; preds = %7
  %28 = load i64, i64* @VM_READ, align 8
  %29 = load i64, i64* @VM_MAYREAD, align 8
  %30 = or i64 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i64 [ %26, %23 ], [ %30, %27 ]
  store i64 %32, i64* %17, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @FOLL_FORCE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @VM_MAYREAD, align 8
  %39 = load i64, i64* @VM_MAYWRITE, align 8
  %40 = or i64 %38, %39
  br label %45

41:                                               ; preds = %31
  %42 = load i64, i64* @VM_READ, align 8
  %43 = load i64, i64* @VM_WRITE, align 8
  %44 = or i64 %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i64 [ %40, %37 ], [ %44, %41 ]
  %47 = load i64, i64* %17, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %115, %45
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %118

53:                                               ; preds = %49
  %54 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %54, i64 %55)
  store %struct.vm_area_struct* %56, %struct.vm_area_struct** %16, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %58 = icmp ne %struct.vm_area_struct* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %120

60:                                               ; preds = %53
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VM_IO, align 4
  %65 = load i32, i32* @VM_PFNMAP, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %60
  %70 = load i64, i64* %17, align 8
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %72 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = and i64 %70, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69, %60
  br label %120

78:                                               ; preds = %69
  %79 = load %struct.page**, %struct.page*** %14, align 8
  %80 = icmp ne %struct.page** %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  %82 = load i64, i64* %11, align 8
  %83 = call %struct.page* @virt_to_page(i64 %82)
  %84 = load %struct.page**, %struct.page*** %14, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.page*, %struct.page** %84, i64 %86
  store %struct.page* %83, %struct.page** %87, align 8
  %88 = load %struct.page**, %struct.page*** %14, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.page*, %struct.page** %88, i64 %90
  %92 = load %struct.page*, %struct.page** %91, align 8
  %93 = icmp ne %struct.page* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %81
  %95 = load %struct.page**, %struct.page*** %14, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.page*, %struct.page** %95, i64 %97
  %99 = load %struct.page*, %struct.page** %98, align 8
  %100 = call i32 @page_cache_get(%struct.page* %99)
  br label %101

101:                                              ; preds = %94, %81
  br label %102

102:                                              ; preds = %101, %78
  %103 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %104 = icmp ne %struct.vm_area_struct** %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %107 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %15, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.vm_area_struct*, %struct.vm_area_struct** %107, i64 %109
  store %struct.vm_area_struct* %106, %struct.vm_area_struct** %110, align 8
  br label %111

111:                                              ; preds = %105, %102
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = load i64, i64* %11, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %11, align 8
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %18, align 4
  br label %49

118:                                              ; preds = %49
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* %8, align 4
  br label %129

120:                                              ; preds = %77, %59
  %121 = load i32, i32* %18, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @EFAULT, align 4
  %126 = sub nsw i32 0, %125
  br label %127

127:                                              ; preds = %124, %123
  %128 = phi i32 [ %121, %123 ], [ %126, %124 ]
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %127, %118
  %130 = load i32, i32* %8, align 4
  ret i32 %130
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local %struct.page* @virt_to_page(i64) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
