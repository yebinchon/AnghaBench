; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_page_move_anon_rmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_page_move_anon_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.address_space* }
%struct.address_space = type { i32 }
%struct.vm_area_struct = type { %struct.anon_vma* }
%struct.anon_vma = type { i32 }

@PAGE_MAPPING_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_move_anon_rmap(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.anon_vma*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  store %struct.anon_vma* %10, %struct.anon_vma** %7, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @PageLocked(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @VM_BUG_ON(i32 %15)
  %17 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %18 = icmp ne %struct.anon_vma* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @VM_BUG_ON(i32 %20)
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @linear_page_index(%struct.vm_area_struct* %25, i64 %26)
  %28 = icmp ne i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @VM_BUG_ON(i32 %29)
  %31 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %32 = bitcast %struct.anon_vma* %31 to i8*
  %33 = load i32, i32* @PAGE_MAPPING_ANON, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to %struct.anon_vma*
  store %struct.anon_vma* %36, %struct.anon_vma** %7, align 8
  %37 = load %struct.anon_vma*, %struct.anon_vma** %7, align 8
  %38 = bitcast %struct.anon_vma* %37 to %struct.address_space*
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 1
  store %struct.address_space* %38, %struct.address_space** %40, align 8
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @linear_page_index(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
