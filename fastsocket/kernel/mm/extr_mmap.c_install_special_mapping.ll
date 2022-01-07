; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_install_special_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_install_special_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64, i64 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, %struct.page**, i32*, i32, %struct.mm_struct*, i32 }

@vm_area_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i64 0, align 8
@special_mapping_vmops = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @install_special_mapping(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3, %struct.page** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.page** %4, %struct.page*** %11, align 8
  %14 = load i32, i32* @vm_area_cachep, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.vm_area_struct* @kmem_cache_zalloc(i32 %14, i32 %15)
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %13, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %18 = icmp eq %struct.vm_area_struct* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %89

25:                                               ; preds = %5
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 7
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 6
  store %struct.mm_struct* %29, %struct.mm_struct** %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %35, %36
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %42 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %40, %43
  %45 = load i64, i64* @VM_DONTEXPAND, align 8
  %46 = or i64 %44, %45
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @vm_get_page_prot(i64 %51)
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 4
  store i32* @special_mapping_vmops, i32** %56, align 8
  %57 = load %struct.page**, %struct.page*** %11, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 3
  store %struct.page** %57, %struct.page*** %59, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @security_file_mmap(i32* null, i32 0, i32 0, i32 0, i64 %62, i32 1)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %25
  br label %84

67:                                               ; preds = %25
  %68 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %70 = call i32 @insert_vm_struct(%struct.mm_struct* %68, %struct.vm_area_struct* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %84

74:                                               ; preds = %67
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @PAGE_SHIFT, align 8
  %77 = lshr i64 %75, %76
  %78 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %79 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %83 = call i32 @perf_event_mmap(%struct.vm_area_struct* %82)
  store i32 0, i32* %6, align 4
  br label %89

84:                                               ; preds = %73, %66
  %85 = load i32, i32* @vm_area_cachep, align 4
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %87 = call i32 @kmem_cache_free(i32 %85, %struct.vm_area_struct* %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %74, %22
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.vm_area_struct* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vm_get_page_prot(i64) #1

declare dso_local i32 @security_file_mmap(i32*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @insert_vm_struct(%struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
