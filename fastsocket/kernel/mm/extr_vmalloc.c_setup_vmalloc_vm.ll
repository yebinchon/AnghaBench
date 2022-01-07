; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_setup_vmalloc_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_setup_vmalloc_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64, i8*, i64, i8* }
%struct.vmap_area = type { i32, %struct.vm_struct*, i64, i64 }

@VM_VM_AREA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_struct*, %struct.vmap_area*, i64, i8*)* @setup_vmalloc_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_vmalloc_vm(%struct.vm_struct* %0, %struct.vmap_area* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.vm_struct*, align 8
  %6 = alloca %struct.vmap_area*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.vm_struct* %0, %struct.vm_struct** %5, align 8
  store %struct.vmap_area* %1, %struct.vmap_area** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %13 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %19 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %22 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.vm_struct*, %struct.vm_struct** %5, align 8
  %31 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %32 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %31, i32 0, i32 1
  store %struct.vm_struct* %30, %struct.vm_struct** %32, align 8
  %33 = load i32, i32* @VM_VM_AREA, align 4
  %34 = load %struct.vmap_area*, %struct.vmap_area** %6, align 8
  %35 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
