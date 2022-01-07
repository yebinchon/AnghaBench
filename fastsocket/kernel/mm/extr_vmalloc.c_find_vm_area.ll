; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_find_vm_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_find_vm_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i32 }
%struct.vmap_area = type { i32, %struct.vm_struct* }

@VM_VM_AREA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vm_struct* (i8*)* @find_vm_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vm_struct* @find_vm_area(i8* %0) #0 {
  %2 = alloca %struct.vm_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vmap_area*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = call %struct.vmap_area* @find_vmap_area(i64 %6)
  store %struct.vmap_area* %7, %struct.vmap_area** %4, align 8
  %8 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %9 = icmp ne %struct.vmap_area* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %12 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VM_VM_AREA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.vmap_area*, %struct.vmap_area** %4, align 8
  %19 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %18, i32 0, i32 1
  %20 = load %struct.vm_struct*, %struct.vm_struct** %19, align 8
  store %struct.vm_struct* %20, %struct.vm_struct** %2, align 8
  br label %22

21:                                               ; preds = %10, %1
  store %struct.vm_struct* null, %struct.vm_struct** %2, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load %struct.vm_struct*, %struct.vm_struct** %2, align 8
  ret %struct.vm_struct* %23
}

declare dso_local %struct.vmap_area* @find_vmap_area(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
