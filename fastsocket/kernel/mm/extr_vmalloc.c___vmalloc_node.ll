; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c___vmalloc_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c___vmalloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@totalram_pages = common dso_local global i64 0, align 8
@VM_ALLOC = common dso_local global i32 0, align 4
@VM_UNLIST = common dso_local global i32 0, align 4
@VMALLOC_START = common dso_local global i32 0, align 4
@VMALLOC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i32, i32, i32, i8*)* @__vmalloc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__vmalloc_node(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.vm_struct*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @PAGE_ALIGN(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  %26 = load i64, i64* @totalram_pages, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %6
  store i8* null, i8** %7, align 8
  br label %62

29:                                               ; preds = %22
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @VM_ALLOC, align 4
  %33 = load i32, i32* @VM_UNLIST, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VMALLOC_START, align 4
  %36 = load i32, i32* @VMALLOC_END, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = call %struct.vm_struct* @__get_vm_area_node(i64 %30, i64 %31, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i8* %39)
  store %struct.vm_struct* %40, %struct.vm_struct** %14, align 8
  %41 = load %struct.vm_struct*, %struct.vm_struct** %14, align 8
  %42 = icmp ne %struct.vm_struct* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  store i8* null, i8** %7, align 8
  br label %62

44:                                               ; preds = %29
  %45 = load %struct.vm_struct*, %struct.vm_struct** %14, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = call i8* @__vmalloc_area_node(%struct.vm_struct* %45, i32 %46, i32 %47, i32 %48, i8* %49)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i8* null, i8** %7, align 8
  br label %62

54:                                               ; preds = %44
  %55 = load %struct.vm_struct*, %struct.vm_struct** %14, align 8
  %56 = call i32 @insert_vmalloc_vmlist(%struct.vm_struct* %55)
  %57 = load i8*, i8** %15, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @kmemleak_alloc(i8* %57, i64 %58, i32 3, i32 %59)
  %61 = load i8*, i8** %15, align 8
  store i8* %61, i8** %7, align 8
  br label %62

62:                                               ; preds = %54, %53, %43, %28
  %63 = load i8*, i8** %7, align 8
  ret i8* %63
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_struct* @__get_vm_area_node(i64, i64, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i8* @__vmalloc_area_node(%struct.vm_struct*, i32, i32, i32, i8*) #1

declare dso_local i32 @insert_vmalloc_vmlist(%struct.vm_struct*) #1

declare dso_local i32 @kmemleak_alloc(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
