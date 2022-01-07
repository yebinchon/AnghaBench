; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c___vmalloc_area_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c___vmalloc_area_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32, i32, i8*, %struct.page**, i8*, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@VM_VPAGES = common dso_local global i32 0, align 4
@GFP_RECLAIM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vm_struct*, i32, i32, i32, i8*)* @__vmalloc_area_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__vmalloc_area_node(%struct.vm_struct* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vm_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.page**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store %struct.vm_struct* %0, %struct.vm_struct** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %18 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sub i32 %19, %20
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = lshr i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %30 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %5
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @__GFP_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PAGE_KERNEL, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call %struct.page** @__vmalloc_node(i32 %35, i32 1, i32 %38, i32 %39, i32 %40, i8* %41)
  store %struct.page** %42, %struct.page*** %12, align 8
  %43 = load i32, i32* @VM_VPAGES, align 4
  %44 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %45 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %57

48:                                               ; preds = %5
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @__GFP_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = call %struct.page** @kmalloc_node(i32 %49, i32 %54, i32 %55)
  store %struct.page** %56, %struct.page*** %12, align 8
  br label %57

57:                                               ; preds = %48, %34
  %58 = load %struct.page**, %struct.page*** %12, align 8
  %59 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %60 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %59, i32 0, i32 3
  store %struct.page** %58, %struct.page*** %60, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %63 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %65 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %64, i32 0, i32 3
  %66 = load %struct.page**, %struct.page*** %65, align 8
  %67 = icmp ne %struct.page** %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %57
  %69 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %70 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @remove_vm_area(i8* %71)
  %73 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %74 = call i32 @kfree(%struct.vm_struct* %73)
  store i8* null, i8** %6, align 8
  br label %129

75:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %111, %75
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %79 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = call %struct.page* @alloc_page(i32 %86)
  store %struct.page* %87, %struct.page** %16, align 8
  br label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call %struct.page* @alloc_pages_node(i32 %89, i32 %90, i32 0)
  store %struct.page* %91, %struct.page** %16, align 8
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.page*, %struct.page** %16, align 8
  %94 = icmp ne %struct.page* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %102 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %124

103:                                              ; preds = %92
  %104 = load %struct.page*, %struct.page** %16, align 8
  %105 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %106 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %105, i32 0, i32 3
  %107 = load %struct.page**, %struct.page*** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.page*, %struct.page** %107, i64 %109
  store %struct.page* %104, %struct.page** %110, align 8
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %15, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %76

114:                                              ; preds = %76
  %115 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i64 @map_vm_area(%struct.vm_struct* %115, i32 %116, %struct.page*** %12)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %124

120:                                              ; preds = %114
  %121 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %122 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %6, align 8
  br label %129

124:                                              ; preds = %119, %99
  %125 = load %struct.vm_struct*, %struct.vm_struct** %7, align 8
  %126 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @vfree(i8* %127)
  store i8* null, i8** %6, align 8
  br label %129

129:                                              ; preds = %124, %120, %68
  %130 = load i8*, i8** %6, align 8
  ret i8* %130
}

declare dso_local %struct.page** @__vmalloc_node(i32, i32, i32, i32, i32, i8*) #1

declare dso_local %struct.page** @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @remove_vm_area(i8*) #1

declare dso_local i32 @kfree(%struct.vm_struct*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @map_vm_area(%struct.vm_struct*, i32, %struct.page***) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
