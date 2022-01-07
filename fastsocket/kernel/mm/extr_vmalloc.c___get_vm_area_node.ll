; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c___get_vm_area_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c___get_vm_area_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap_area = type { i32 }
%struct.vm_struct = type { i32 }

@__get_vm_area_node.va = internal global %struct.vmap_area* null, align 8
@VM_IOREMAP = common dso_local global i64 0, align 8
@IOREMAP_MAX_ORDER = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_RECLAIM_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_UNLIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_struct* (i64, i64, i64, i64, i64, i32, i32, i8*)* @__get_vm_area_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_struct* @__get_vm_area_node(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.vm_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.vm_struct*, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %20 = call i32 (...) @in_interrupt()
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @VM_IOREMAP, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @fls(i64 %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* @IOREMAP_MAX_ORDER, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @IOREMAP_MAX_ORDER, align 4
  store i32 %33, i32* %19, align 4
  br label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  store i32 %39, i32* %19, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %19, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %41, %8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @PAGE_ALIGN(i64 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store %struct.vm_struct* null, %struct.vm_struct** %9, align 8
  br label %104

55:                                               ; preds = %45
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %15, align 4
  %60 = call %struct.vm_struct* @kzalloc_node(i32 4, i32 %58, i32 %59)
  store %struct.vm_struct* %60, %struct.vm_struct** %18, align 8
  %61 = load %struct.vm_struct*, %struct.vm_struct** %18, align 8
  %62 = icmp ne %struct.vm_struct* %61, null
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store %struct.vm_struct* null, %struct.vm_struct** %9, align 8
  br label %104

68:                                               ; preds = %55
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call %struct.vmap_area* @alloc_vmap_area(i64 %72, i64 %73, i64 %74, i64 %75, i32 %76, i32 %77)
  store %struct.vmap_area* %78, %struct.vmap_area** @__get_vm_area_node.va, align 8
  %79 = load %struct.vmap_area*, %struct.vmap_area** @__get_vm_area_node.va, align 8
  %80 = call i64 @IS_ERR(%struct.vmap_area* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load %struct.vm_struct*, %struct.vm_struct** %18, align 8
  %84 = call i32 @kfree(%struct.vm_struct* %83)
  store %struct.vm_struct* null, %struct.vm_struct** %9, align 8
  br label %104

85:                                               ; preds = %68
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @VM_UNLIST, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.vm_struct*, %struct.vm_struct** %18, align 8
  %92 = load %struct.vmap_area*, %struct.vmap_area** @__get_vm_area_node.va, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @setup_vmalloc_vm(%struct.vm_struct* %91, %struct.vmap_area* %92, i64 %93, i8* %94)
  br label %102

96:                                               ; preds = %85
  %97 = load %struct.vm_struct*, %struct.vm_struct** %18, align 8
  %98 = load %struct.vmap_area*, %struct.vmap_area** @__get_vm_area_node.va, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = call i32 @insert_vmalloc_vm(%struct.vm_struct* %97, %struct.vmap_area* %98, i64 %99, i8* %100)
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.vm_struct*, %struct.vm_struct** %18, align 8
  store %struct.vm_struct* %103, %struct.vm_struct** %9, align 8
  br label %104

104:                                              ; preds = %102, %82, %67, %54
  %105 = load %struct.vm_struct*, %struct.vm_struct** %9, align 8
  ret %struct.vm_struct* %105
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vm_struct* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.vmap_area* @alloc_vmap_area(i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vmap_area*) #1

declare dso_local i32 @kfree(%struct.vm_struct*) #1

declare dso_local i32 @setup_vmalloc_vm(%struct.vm_struct*, %struct.vmap_area*, i64, i8*) #1

declare dso_local i32 @insert_vmalloc_vm(%struct.vm_struct*, %struct.vmap_area*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
